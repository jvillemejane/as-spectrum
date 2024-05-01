/****************************************************************************/
/*  Spectrum System    -  spectrum.h file                                   */
/****************************************************************************/
/*  LEnsE / Julien VILLEMEJANE       /   Institut d'Optique Graduate School */
/****************************************************************************/
/*  Tested on Nucleo-L476RG / 25th apr 2024                                 */
/****************************************************************************/

#include "mbed.h"
#include "WS2812.h"
#include "PixelArray.h"
#include <cstdint>

#ifndef     __SPECTRUM_H__
#define     __SPECTRUM_H__

#define     SPECTRUM_VERSION        "L476RG-v1-2024"

//// Global constants
// General
#define     milieu          9
#define     DISPLAY_PERIOD  20     // ms 

// LED strip
#define     STRIP_SIZE      18
#define     STRIP_NUMBER    14
#define     STRIP_SIZE_TOT      STRIP_SIZE*STRIP_NUMBER

// Filter inputs
#define     GAIN_MIC        1.0
#define     FILTER_NB       7

// Modes
//      Fading
#define     FADING_INC_R        3
#define     FADING_INC_G        5
#define     FADING_INC_B        2
//      Sound Analyzer
#define     SAMPLING_PER        1ms



// MODES
enum            Modes { Fading, Sound, Analyzer, OneByOne };

// Data for LEDs strip
extern      WS2812      led_strip;
extern      PixelArray  my_leds;

// Analog Inputs for filters
extern      AnalogIn filters_in[];

// Lidar TX/RX
extern      UnbufferedSerial lidar;

// Light intensity
extern      AnalogIn light_int;

// Modes Switches
extern      InterruptIn mode;
extern      InterruptIn colors;
extern      InterruptIn misc;

//// Global variables
extern      double Te; // us

//// Ticker / Time management
extern      Ticker       tik_sampling;

//// Functions
// inititalization of the strip
void init_LED_strip();
// Test the led strip
void test_LED_strip();
// Clear a specific band of LED - 1 is the first band 
void clear_LED_band(int n);



int r(int , int ); 
int g(int , int ); 
int b(int , int ); 


//// Modes
// General
extern          Modes       mode_choice;     
void mode_display();
void mode_change_ISR();
// Fading mode
void mode_fading_init();
void mode_fading_ISR();
extern          uint8_t     fading_r, fading_g, fading_b;
extern          uint8_t     speed_fading;   // ms
// Sound mode / Simple test
void mode_sound_init();
void mode_sound_ISR();
void get_filter_input(int n);   // 1 is the first band
void sampling_filters();
void update_sound_data(int);    // 1 is the first band

// Analyzer mode / Analyzer
void mode_analyzer_init();
void mode_analyzer_ISR();
extern      double meas[];  // measure from analog inputs / real number / range 0.0 to 1.0
extern      double maxi[];  
extern      int ampli[];
extern      int ancien_ampli[];
void update_analyzer_data(int); 

// One-by-one mode
void mode_one_by_one_init();
void mode_one_by_one_ISR();
extern      int cpt_one_by_one;


#endif