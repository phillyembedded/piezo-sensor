# THIS FILE IS AUTOMATICALLY GENERATED
# Project: C:\Users\IEUser\Documents\GitHub\piezo-sensor\My First Project.cydsn\My First Project.cyprj
# Date: Wed, 15 Jul 2015 21:42:42 GMT
#set_units -time ns
create_clock -name {Clock_1(FFB)} -period 500 -waveform {0 250} [list [get_pins {ClockBlock/ff_div_8}]]
create_clock -name {CyRouted1} -period 41.666666666666664 -waveform {0 20.8333333333333} [list [get_pins {ClockBlock/dsi_in_0}]]
create_clock -name {CyILO} -period 31250 -waveform {0 15625} [list [get_pins {ClockBlock/ilo}]]
create_clock -name {CyLFCLK} -period 31250 -waveform {0 15625} [list [get_pins {ClockBlock/lfclk}]]
create_clock -name {CyIMO} -period 41.666666666666664 -waveform {0 20.8333333333333} [list [get_pins {ClockBlock/imo}]]
create_clock -name {CyHFCLK} -period 41.666666666666664 -waveform {0 20.8333333333333} [list [get_pins {ClockBlock/hfclk}]]
create_clock -name {CySYSCLK} -period 41.666666666666664 -waveform {0 20.8333333333333} [list [get_pins {ClockBlock/sysclk}]]
create_generated_clock -name {Clock_1} -source [get_pins {ClockBlock/hfclk}] -edges {1 13 25} [list]


# Component constraints for C:\Users\IEUser\Documents\GitHub\piezo-sensor\My First Project.cydsn\TopDesign\TopDesign.cysch
# Project: C:\Users\IEUser\Documents\GitHub\piezo-sensor\My First Project.cydsn\My First Project.cyprj
# Date: Wed, 15 Jul 2015 21:42:39 GMT
