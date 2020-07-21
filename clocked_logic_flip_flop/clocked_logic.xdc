## Clock signal
set_property PACKAGE_PIN W5 [get_ports i_Clk]
    set_property IOSTANDARD LVCMOS33 [get_ports i_Clk]
    create_clock -add -name sys_clk_pin -period 40.00 -waveform {0 5} [get_ports i_Clk]

set_property PACKAGE_PIN U18 [get_ports o_btn_C]
    set_property IOSTANDARD LVCMOS33 [get_ports o_btn_C]
	
set_property PACKAGE_PIN L1 [get_ports {o_LED_1}]
set_property IOSTANDARD LVCMOS33 [get_ports {o_LED_1}]
	
set_property BITSTREAM.GENERAL.COMPRESS TRUE [current_design]
set_property BITSTREAM.CONFIG.CONFIGRATE 33 [current_design]
set_property CONFIG_MODE SPIx4 [current_design]