vlib work
vlib activehdl

vlib activehdl/xil_defaultlib
vlib activehdl/xpm
vlib activehdl/fifo_generator_v13_1_1

vmap xil_defaultlib activehdl/xil_defaultlib
vmap xpm activehdl/xpm
vmap fifo_generator_v13_1_1 activehdl/fifo_generator_v13_1_1

vlog -work xil_defaultlib -v2k5 -sv \
"D:/Tools/Vivado_2016.2/Vivado/2016.2/data/ip/xpm/xpm_memory/hdl/xpm_memory_base.sv" \
"D:/Tools/Vivado_2016.2/Vivado/2016.2/data/ip/xpm/xpm_memory/hdl/xpm_memory_dpdistram.sv" \
"D:/Tools/Vivado_2016.2/Vivado/2016.2/data/ip/xpm/xpm_memory/hdl/xpm_memory_dprom.sv" \
"D:/Tools/Vivado_2016.2/Vivado/2016.2/data/ip/xpm/xpm_memory/hdl/xpm_memory_sdpram.sv" \
"D:/Tools/Vivado_2016.2/Vivado/2016.2/data/ip/xpm/xpm_memory/hdl/xpm_memory_spram.sv" \
"D:/Tools/Vivado_2016.2/Vivado/2016.2/data/ip/xpm/xpm_memory/hdl/xpm_memory_sprom.sv" \
"D:/Tools/Vivado_2016.2/Vivado/2016.2/data/ip/xpm/xpm_memory/hdl/xpm_memory_tdpram.sv" \

vcom -work xpm -93 \
"D:/Tools/Vivado_2016.2/Vivado/2016.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work fifo_generator_v13_1_1 -v2k5 \
"../../../ipstatic/fifo_generator_v13_1_1/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_1_1 -93 \
"../../../ipstatic/fifo_generator_v13_1_1/hdl/fifo_generator_v13_1_rfs.vhd" \

vlog -work fifo_generator_v13_1_1 -v2k5 \
"../../../ipstatic/fifo_generator_v13_1_1/hdl/fifo_generator_v13_1_rfs.v" \

vlog -work xil_defaultlib -v2k5 \
"../../../../../lab4/sources/ip/artix7/char_fifo/sim/char_fifo.v" \

vlog -work xil_defaultlib "glbl.v"

