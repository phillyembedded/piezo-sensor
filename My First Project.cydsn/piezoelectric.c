/* ========================================
 *
 * Copyright YOUR COMPANY, THE YEAR
 * All Rights Reserved
 * UNPUBLISHED, LICENSED SOFTWARE.
 *
 * CONFIDENTIAL AND PROPRIETARY INFORMATION
 * WHICH IS THE PROPERTY OF your company.
 *
 * ========================================
*/
#include <project.h>
#include "cytypes.h"
#include "Timer_1.h"
#include "TRIGGER_TIMER.h"
#include "PWM_1.h"
#include "piezoelectric.h"

uint8 volume = 1;
uint8 tempo = 120;
int const f_clock = 2000000;
int const freq_mod = 10;
uint16 current_frequency = 0;


void piezo_tone(uint16 frequency_value) 
{
    current_frequency = frequency_value;
    // duty cycle ticks is a percentage of frequency based on volume
    int period_ticks = f_clock * freq_mod / frequency_value;
    uint16 compare_ticks = period_ticks * volume / 100;
    
    // maximum duty cycle ticks must be at least 1 lower than frequency
    // to produce a vibration
    if (compare_ticks == period_ticks) {
        compare_ticks--;
    }
    
    // Set period to frequency value
    PWM_1_WritePeriod(period_ticks);
    
    // Set compare to toggle on duty cycle ticks
    PWM_1_WriteCompare(compare_ticks);
}

void piezo_volume(uint8 value)
{
    volume = value;
    piezo_tone(current_frequency);
}
    
void piezo_tempo(uint8 bpm)
{
    tempo = bpm;
}

void piezo_stop()
{
    PWM_1_WriteCompare(0);
}

void piezo_play(uint16 frequency_value, uint8 note)
{
    TRIGGER_TIMER_Write(0);
    // duty cycle ticks is a percentage of frequency based on volume
    int period_ticks = f_clock * freq_mod / frequency_value;
    uint16 compare_ticks = period_ticks * volume / 100;
    
    
    // Set period to frequency value
    PWM_1_WritePeriod(period_ticks);
    
    // Set compare to toggle on duty cycle ticks
    PWM_1_WriteCompare(compare_ticks);
    
    // Figure out the duration of the note and set and trigger the interrupt timer
    uint16 duration = 60000/tempo/note;
    Timer_1_WriteCompare(duration);
    TRIGGER_TIMER_Write(1);
}

void piezo_rest(uint8 note)
{
    // figure out the duration of this note (in ms), given the current tempo (which is in bps)
    uint16 duration = 60000/tempo/note;
    piezo_stop();
    CyDelay(duration);
}

void piezo_wait(uint8 note) {
    uint16 duration = 60000/tempo/note;
    CyDelay(duration);
}

void piezo_melody(uint16* frequencies, uint8 num)
{
    uint8 i, note;
    uint16 tone;
    for (i=0; i<num; i+=2)
    {
        tone = frequencies[i];
        note = frequencies[i+1];
        if (tone == 0)
        {
            piezo_rest(note);
        }
        else 
        {
            piezo_tone(tone);
            piezo_wait(note);
        }
    }
    piezo_stop();
}

/* [] END OF FILE */
