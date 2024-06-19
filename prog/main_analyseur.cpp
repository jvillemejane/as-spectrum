/**
 FILENAME :        main_WS2812.cpp          

 DESCRIPTION :
       WS2812 / Intelligent control LED integrated light source Library Testing.
		 required : WS2812 library for MBED OS 6
 	 required : PixelArray library for MBED OS 6
 
  NOTES :
       Developped by Villou / LEnsE
 
  AUTHOR :    Julien VILLEMEJANE        START DATE :    25/oct/2023
       LEnsE / Institut d'Optique Graduate School
 **/


#include "mbed.h"
#include "WS2812.h"
#include "PixelArray.h"

#define STRIP_SIZE 18
#define GAIN_MIC 1.0
#define N 14
#define NN 7
#define milieu 9

WS2812 my_strip(D10, STRIP_SIZE * (N));
PixelArray my_leds(STRIP_SIZE * (N), 24);

AnalogIn analog_in0(A0);
AnalogIn analog_in1(A1);
AnalogIn analog_in2(A2);
AnalogIn analog_in3(A3);
AnalogIn analog_in4(A4);
AnalogIn analog_in5(A5);
AnalogIn analog_in6(D11);

void echantilloner(AnalogIn, int);
void afficher(int);
void initialisation(void);


int r(int , int ); 
int g(int , int ); 
int b(int , int ); 



double meas[NN];
double maxi[NN];  
int ampli[NN];
int ancien_ampli[NN]; 

double Te = 1; //en us


// Main function
int main() {

    initialisation();
    my_strip.send_leds(my_leds.get_array());
    my_strip.break_trame();

    while(1){
        /*
        ampli[0] = 20*analog_in0.read()-0.5;
        printf("A=%d\r\n", ampli[0]);
        */
        for (int i = 0; i < 100; i++) {
            echantilloner(analog_in0, 3);
            echantilloner(analog_in1, 4);
            echantilloner(analog_in2, 2);
            echantilloner(analog_in3, 0);
            echantilloner(analog_in4, 1);
            echantilloner(analog_in5, 5);
            echantilloner(analog_in6, 6);
            wait_us(Te);
        }

        for(int i = 0; i < NN; i++){
            afficher(i);
        }
        my_strip.send_leds(my_leds.get_array());
        my_strip.break_trame();
    }
}

void initialisation(){
    my_strip.set_timings(6, 13, 14, 5);
    my_strip.break_trame();
    my_leds.set_all_RGB(0, 0, 0);
    for (int n = 0; n < NN; n++) {
        ampli[n]=0;
        maxi[n]=0;
    }
    
    my_strip.send_leds(my_leds.get_array());
    my_strip.break_trame(); 
}


void afficher(int n){
    
    ancien_ampli[n]=ampli[n];


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



void echantilloner(AnalogIn analog_in, int n) {       // Fonction d'interruption du ticker
    meas[n] = analog_in.read()-0.5;
    if(meas[n] < 0){ meas[n] = -meas[n];}
    if (meas[n] > maxi[n]){maxi[n]=meas[n];}
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































