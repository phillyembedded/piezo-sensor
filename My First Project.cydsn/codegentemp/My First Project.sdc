# THIS FILE IS AUTOMATICALLY GENERATED
# Project: D:\Users\Ryan\Documents\PSoC Creator\piezo-sensor\My First Project.cydsn\My First Project.cyprj
# Date: Tue, 04 Aug 2015 13:10:26 GMT
#set_units -time ns
create_clock -name {CapSense_SampleClk(FFB)} -period 10625 -waveform {0 5312.5} [list [get_pins {ClockBlock/ff_div_6}]]
create_clock -name {CapSense_SenseClk(FFB)} -period 10625 -waveform {0 5312.5} [list [get_pins {ClockBlock/ff_div_5}]]
create_clock -name {Clock_1(FFB)} -period 500 -waveform {0 250} [list [get_pins {ClockBlock/ff_div_8}]]
create_clock -name {Clock_2(FFB)} -period 1000000 -waveform {0 500000} [list [get_pins {ClockBlock/ff_div_9}]]
create_clock -name {CyRouted1} -period 41.666666666666664 -waveform {0 20.8333333333333} [list [get_pins {ClockBlock/dsi_in_0}]]
create_clock -name {CyILO} -period 31250 -waveform {0 15625} [list [get_pins {ClockBlock/ilo}]]
create_clock -name {CyLFCLK} -period 31250 -waveform {0 15625} [list [get_pins {ClockBlock/lfclk}]]
create_clock -name {CyIMO} -period 41.666666666666664 -waveform {0 20.8333333333333} [list [get_pins {ClockBlock/imo}]]
create_clock -name {CyHFCLK} -period 41.666666666666664 -waveform {0 20.8333333333333} [list [get_pins {ClockBlock/hfclk}]]
create_clock -name {CySYSCLK} -period 41.666666666666664 -waveform {0 20.8333333333333} [list [get_pins {ClockBlock/sysclk}]]
create_generated_clock -name {CapSense_SampleClk} -source [get_pins {ClockBlock/hfclk}] -edges {1 255 511} [list]
create_generated_clock -name {CapSense_SenseClk} -source [get_pins {ClockBlock/hfclk}] -edges {1 255 511} [list]
create_generated_clock -name {Clock_1} -source [get_pins {ClockBlock/hfclk}] -edges {1 13 25} [list]
create_generated_clock -name {Clock_2} -source [get_pins {ClockBlock/hfclk}] -edges {1 24001 48001} [list]

set_false_path -from [get_pins {__ONE__/q}]

# Component constraints for D:\Users\Ryan\Documents\PSoC Creator\piezo-sensor\My First Project.cydsn\TopDesign\TopDesign.cysch
# Project: D:\Users\Ryan\Documents\PSoC Creator\piezo-sensor\My First Project.cydsn\My First Project.cyprj
# Date: Tue, 04 Aug 2015 13:10:21 GMT
