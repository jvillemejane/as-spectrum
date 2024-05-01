/****************************************************************************/
/*  Spectrum System                                                         */
/****************************************************************************/
/*  LEnsE / Julien VILLEMEJANE       /   Institut d'Optique Graduate School */
/****************************************************************************/
/*  Realized by Arts and Sciences Team / 2024                               */
/*  Main code by Oriane Koellsch                                            */
/****************************************************************************/
/*  Tested on Nucleo-L476RG / 25th apr 2024                                 */
/****************************************************************************/


#include "mbed.h"
#include "spectrum.h"

int main()
{
    printf("SPECTRUM / Sound Analyzer / v:%s\n", SPECTRUM_VERSION);
    printf(" running on Mbed OS %d.%d.%d.\n", MBED_MAJOR_VERSION, MBED_MINOR_VERSION, MBED_PATCH_VERSION);
    // Initialization
    init_LED_strip();
    // Mode ISR initialization
    mode.rise(&mode_change_ISR);
    //test_LED_strip();
    mode_choice = OneByOne;
    mode_one_by_one_init();
    mode_display();
    
    while (true)
    {
        if(mode_choice != OneByOne){
            led_strip.send_leds(my_leds.get_array());
            led_strip.break_trame();
        }
        led_strip.send_leds(my_leds.get_array());
        led_strip.break_trame();
        // thread_sleep_for(DISPLAY_PERIOD);
    }
}
