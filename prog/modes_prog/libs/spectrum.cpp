/****************************************************************************/
/*  Spectrum System    -  spectrum.cpp file                                 */
/****************************************************************************/
/*  LEnsE / Julien VILLEMEJANE       /   Institut d'Optique Graduate School */
/****************************************************************************/
/*  Tested on Nucleo-L476RG / 25th apr 2024                                 */
/****************************************************************************/
// NEXT VERSION : create classes for different modes


#include "mbed.h"
#include "WS2812.h"
#include "PixelArray.h"
#include "spectrum.h"

//// Inputs / outputs
// Data for LEDs strip
WS2812          led_strip(PB_13, STRIP_SIZE_TOT, WS2812_STD);
PixelArray      my_leds(STRIP_SIZE_TOT, WS2812_STD);

// Analog Inputs for filters
AnalogIn        filters_in[] = {A4, A5, PC_3, PC_2, A0, A1, PC_5};

// Lidar TX/RX
//UnbufferedSerial lidar(PA_9, PB_10); // Attention PINMAP ERROR ! Alternative pin ?


// Light intensity
AnalogIn light_int(PB_1);

// Modes Switches
InterruptIn     mode(BUTTON1);

/*
InterruptIn     mode(PB_12);
InterruptIn     colors(PA_11);
InterruptIn     misc(PA_12);
*/

Ticker       tik_sampling;

//// Global Variables
double Te = 1; //en us

// Modes
Modes       mode_choice;    
uint8_t     fading_r, fading_g, fading_b;
uint8_t     speed_fading;   // ms

double meas[FILTER_NB];
double maxi[FILTER_NB];  
int ampli[FILTER_NB];
int ancien_ampli[FILTER_NB]; 

int cpt_one_by_one = 0;

//// Functions

void init_LED_strip(){
    // Set timing values for WS2812 protocol
    led_strip.set_timings(6, 13, 14, 5);
    // Send empty data
    my_leds.set_black_all();
    led_strip.break_trame();
    led_strip.send_leds(my_leds.get_array()); 

    // Init internal values
    for (int n = 0; n < FILTER_NB; n++) {
        ampli[n]=0;
        maxi[n]=0;
    }
    
    led_strip.send_leds(my_leds.get_array());
    led_strip.break_trame(); 

}

void test_LED_strip(){
    for(int i = 0; i < 5; i++){
        led_strip.break_trame();
        wait_us(200000);
        my_leds.set_all_RGB(255, 0, 128);
        led_strip.send_leds(my_leds.get_array());
        wait_us(1000000);    
        led_strip.break_trame();
        wait_us(200000);
        my_leds.set_all_RGB(0, 255, 0);
        led_strip.send_leds(my_leds.get_array());
        wait_us(1000000);
    }
}

void clear_LED_band(int n){
    int start_n = 2 * (n-1) * STRIP_SIZE;
    for(int k = 0; k < STRIP_SIZE; k++){
        my_leds.set_pix_RGB(start_n + k, 0, 0, 0);
    }
}

void sampling_filters(void){
    for (int i = 0; i < FILTER_NB; i++) {
        get_filter_input(i+1);
    }
}



void get_filter_input(int n) {       // 1 is the first band of LED
    meas[n-1] = filters_in[n-1].read()-0.5;
    if(meas[n-1] < 0){ meas[n-1] = -meas[n-1];}
    if (meas[n-1] > maxi[n-1]){maxi[n-1]=meas[n-1];}
}


int r(int n, int i) {
    double a=1;
    if (i<milieu){a=0.1;}
    double c=255;
    if (n==1){c=200;}
    if (n==2){c=145;}
    if (n==3){c=90;}
    if (n==4){c=35;}
    if (n==5){c=0;}
    if (n==6){c=0;}
    if (n==7){c=0;}
    if (n==8){c=0;}
    if (n==9){c=0;}
    if (n==10){c=0;}
    if (n==11){c=0;}
    if (n==12){c=0;}
    if (n==13){c=0;}
    return c*a;
}

int g(int n, int i) {
    double a=1;
    if (i<milieu){a=0.1;}
    double c=0;
    if (n==1){c=0;}
    if (n==2){c=0;}
    if (n==3){c=0;}
    if (n==4){c=0;}
    if (n==5){c=0;}
    if (n==6){c=35;}
    if (n==7){c=70;}
    if (n==8){c=105;}
    if (n==9){c=140;}
    if (n==10){c=175;}
    if (n==11){c=210;}
    if (n==12){c=245;}
    if (n==13){c=255;}
    return c*a;

}

int b(int n, int i) {
    double a=1;
    if (i<milieu){a=0.1;}
    double c=0;
    if (n==1){c=55;}
    if (n==2){c=110;}
    if (n==3){c=165;}
    if (n==4){c=220;}
    if (n==5){c=255;}
    if (n==6){c=220;}
    if (n==7){c=185;}
    if (n==8){c=150;}
    if (n==9){c=115;}
    if (n==10){c=80;}
    if (n==11){c=45;}
    if (n==12){c=10;}
    if (n==13){c=0;}
    return c*a;

}

void mode_display(){
    switch(mode_choice){
        case OneByOne:
            printf("\tOneByOne mode\n");
            break;
        case Sound:
            printf("\tSound mode\n");
            break;
        case Fading:
            printf("\tFading mode\n");
            break;
        case Analyzer:
            printf("\tAnalyzer mode\n");
            break;
        default:
            printf("\tNo Mode\n");
    }
} 

void mode_change_ISR(){
    tik_sampling.detach();
    // Change mode
    switch(mode_choice){
        case OneByOne:
            mode_choice = Fading;   // Next mode
            break;
        case Sound:
            mode_choice = Fading;   // Next mode
            break;
        case Fading:
            mode_choice = Analyzer;    // Next mode
            break;
        case Analyzer:
            mode_choice = Sound;    // Next mode
            break;
        default:
            mode_choice = Fading; 
    }
    my_leds.set_black_all();
    mode_display();
    // Init new mode
    switch(mode_choice){
        case Sound:
            mode_sound_init();
            break;
        case Analyzer:
            mode_analyzer_init();
            break;
        case Fading:
            mode_fading_init();
            break;
        default:
            __nop();
    }   
}

void mode_fading_init(){
    if(mode_choice == Fading){
        fading_r = 0, fading_g = 0, fading_b = 0;
        speed_fading = 200;
        tik_sampling.attach_us(&mode_fading_ISR, speed_fading*1000);
        printf("Fading OK\n");
    }
}

void mode_fading_ISR(){
    fading_r += FADING_INC_R;
    fading_g += FADING_INC_G;
    fading_b += FADING_INC_B;

    for(int i = 0; i < FILTER_NB; i++){
        for(int j = 0; j < STRIP_SIZE; j++){
            int led_nb = (2*i)*STRIP_SIZE + j;
            uint8_t r_val = (fading_r + led_nb*FADING_INC_R)*0.5;
            uint8_t g_val = (fading_g + led_nb*FADING_INC_G)*0.5;
            uint8_t b_val = (fading_b + led_nb*FADING_INC_B)*0.5;
            my_leds.set_pix_RGB(led_nb, r_val, g_val, b_val);
        }
    }
}

void mode_sound_init(){
    if(mode_choice == Sound){
        tik_sampling.attach(&mode_sound_ISR, SAMPLING_PER);
        printf("Sound OK\n");
    }
}

void mode_sound_ISR(){
    printf("S_OK\n");
    sampling_filters();
    for(int i = 0; i < FILTER_NB; i++){
        update_sound_data(i+1);
    }
}

void update_sound_data(int n){
    // NEXT VERSION - Color of band to change (parameter of this function ?)
    //printf("M_[%d] = %f \n", n, meas[n-1]);
    int     value_n = 2 * (meas[n-1] - 0.5) * STRIP_SIZE;
    if(value_n < 0) value_n = -value_n;
    printf("V_[%d] = %d \n", n, value_n);
    int     start_n = (2 * (n-1)) * STRIP_SIZE;
    int     start_n_1 = (2 * (n-1) + 1) * STRIP_SIZE;

    clear_LED_band(n);
    // iteration along the strip
    for(int k = 0; k < value_n; k++){
        my_leds.set_pix_RGB(start_n + k, 100, 0, 100);
        my_leds.set_pix_RGB(start_n_1 + k, 100, 0, 100);
    }
}

void mode_analyzer_init(){
    if(mode_choice == Analyzer){
        tik_sampling.attach(&mode_analyzer_ISR, SAMPLING_PER);
        printf("Analyzer OK\n");
    }
}

void mode_analyzer_ISR(){
    sampling_filters();
    for(int i = 0; i < FILTER_NB; i++){
        update_analyzer_data(i);
    }    
}

void update_analyzer_data(int n){

    ancien_ampli[n]=ampli[n];
    // Weighted average of actual data and previous data
    // NEXT VERSION : If average of more than 2 values, use one table for coeff and one table for data
    ampli[n] = GAIN_MIC*(0.71*2*maxi[n]*(STRIP_SIZE-milieu) + 0.31*ancien_ampli[n]) ;

    if(ampli[n]>(STRIP_SIZE-milieu)){ampli[n]=STRIP_SIZE-milieu;}
    maxi[n]=0;
    
    if(ampli[n]>ancien_ampli[n])
    {for (int i = milieu+ancien_ampli[n]; i < milieu+ampli[n]+1; i++) 
        {
            my_leds.set_pix_RGB((i+(2*n)*STRIP_SIZE), r((2*n),i), g((2*n),i), b((2*n),i));
            my_leds.set_pix_RGB((i+(2*n+1)*STRIP_SIZE), r((2*n+1),i), g((2*n+1),i), b((2*n+1),i));
        }
        for (int i = milieu-ancien_ampli[n]-1; i > milieu-ampli[n]-2; i--) 
        {
            my_leds.set_pix_RGB((i+(2*n)*STRIP_SIZE), r((2*n),i), g((2*n),i), b((2*n),i));
            my_leds.set_pix_RGB((i+(2*n+1)*STRIP_SIZE), r((2*n+1),i), g((2*n+1),i), b((2*n+1),i));
        }
    }
    else
    {
          for (int i = milieu+ampli[n]; i < milieu+ancien_ampli[n]+1; i++) 
        {
            my_leds.set_pix_RGB((i+(2*n)*STRIP_SIZE), 0, 0, 0);
            my_leds.set_pix_RGB((i+(2*n+1)*STRIP_SIZE), 0, 0, 0);

        }  
           for (int i = milieu-ampli[n]-1; i > milieu-ancien_ampli[n]-2; i--) 
        {
            my_leds.set_pix_RGB((i+(2*n)*STRIP_SIZE), 0, 0, 0);
            my_leds.set_pix_RGB((i+(2*n+1)*STRIP_SIZE), 0, 0, 0);

        } 
    }
}


void mode_one_by_one_init(){
    if(mode_choice == OneByOne){
        tik_sampling.attach(&mode_one_by_one_ISR, 30ms);
        printf("OneByOne OK\n");
    }
}

void mode_one_by_one_ISR(){
    my_leds.set_pix_RGB(cpt_one_by_one, 0, 0, 0);
    if(cpt_one_by_one < STRIP_SIZE_TOT){
        cpt_one_by_one++;
    }
    else{
        cpt_one_by_one = 0;
    }
    my_leds.set_pix_RGB(cpt_one_by_one, 100, 100, 100);
}