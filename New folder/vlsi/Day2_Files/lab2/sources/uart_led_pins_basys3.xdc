# Nexys4 DDR xdc
# LED [7:0]
############################
# On-board led             #
############################
set_property -dict {PACKAGE_PIN H17 IOSTANDARD LVCMOS33} [get_ports {led_pins[0]}]
set_property -dict {PACKAGE_PIN K15 IOSTANDARD LVCMOS33} [get_ports {led_pins[1]}]
set_property -dict {PACKAGE_PIN J13 IOSTANDARD LVCMOS33} [get_ports {led_pins[2]}]
set_property -dict {PACKAGE_PIN N14 IOSTANDARD LVCMOS33} [get_ports {led_pins[3]}]
set_property -dict {PACKAGE_PIN R18 IOSTANDARD LVCMOS33} [get_ports {led_pins[4]}]
set_property -dict {PACKAGE_PIN V17 IOSTANDARD LVCMOS33} [get_ports {led_pins[5]}]
set_property -dict {PACKAGE_PIN U17 IOSTANDARD LVCMOS33} [get_ports {led_pins[6]}]
set_property -dict {PACKAGE_PIN U16 IOSTANDARD LVCMOS33} [get_ports {led_pins[7]}]

# CLK source 100 MHz
set_property -dict {PACKAGE_PIN E3 IOSTANDARD LVCMOS33} [get_ports clk_pin]

# BTNU
set_property -dict {PACKAGE_PIN M18 IOSTANDARD LVCMOS33} [get_ports btn_pin]

# RXD UART
set_property -dict {PACKAGE_PIN C4 IOSTANDARD LVCMOS33} [get_ports rxd_pin]

# Reset - BTNC
set_property -dict {PACKAGE_PIN N17 IOSTANDARD LVCMOS33} [get_ports rst_pin]


create_clock -period 10.000 -name clk_pin -waveform {0.000 5.000} [get_ports clk_pin]
set_input_delay -clock [get_clocks clk_pin] -min -add_delay 0.000 [get_ports btn_pin]
set_input_delay -clock [get_clocks clk_pin] -max -add_delay 0.000 [get_ports btn_pin]
set_input_delay -clock [get_clocks clk_pin] -min -add_delay 0.000 [get_ports rst_pin]
set_input_delay -clock [get_clocks clk_pin] -max -add_delay 0.000 [get_ports rst_pin]
set_input_delay -clock [get_clocks clk_pin] -min -add_delay 0.000 [get_ports rxd_pin]
set_input_delay -clock [get_clocks clk_pin] -max -add_delay 0.000 [get_ports rxd_pin]
set_output_delay -clock [get_clocks clk_pin] -min -add_delay 0.000 [get_ports {led_pins[*]}]
set_output_delay -clock [get_clocks clk_pin] -max -add_delay 0.000 [get_ports {led_pins[*]}]
