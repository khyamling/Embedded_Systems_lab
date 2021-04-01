vlib work
vlib msim

vlib msim/xil_defaultlib
vlib msim/xpm
vlib msim/fifo_generator_v13_1_1

vmap xil_defaultlib msim/xil_defaultlib
vmap xpm msim/xpm
vmap fifo_generator_v13_1_1 msim/fifo_generator_v13_1_1

vlog -work xil_defaultlib -64 -incr -sv \
"D:/Tools/Vivado_2016.2/Vivado/2016.2/data/ip/xpm/xpm_memory/hdl/xpm_memory_base.sv" \
"D:/Tools/Vivado_2016.2/Vivado/2016.2/data/ip/xpm/xpm_memory/hdl/xpm_memory_dpdistram.sv" \
"D:/Tools/Vivado_2016.2/Vivado/2016.2/data/ip/xpm/xpm_memory/hdl/xpm_memory_dprom.sv" \
"D:/Tools/Vivado_2016.2/Vivado/2016.2/data/ip/xpm/xpm_memory/hdl/xpm_memory_sdpram.sv" \
"D:/Tools/Vivado_2016.2/Vivado/2016.2/data/ip/xpm/xpm_memory/hdl/xpm_memory_spram.sv" \
"D:/Tools/Vivado_2016.2/Vivado/2016.2/data/ip/xpm/xpm_memory/hdl/xpm_memory_sprom.sv" \
"D:/Tools/Vivado_2016.2/Vivado/2016.2/data/ip/xpm/xpm_memory/hdl/xpm_memory_tdpram.sv" \

vcom -work xpm -64 -93 \
"D:/Tools/Vivado_2016.2/Vivado/2016.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work fifo_generator_v13_1_1 -64 -incr \
"../../../ipstatic/fifo_generator_v13_1_1/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_1_1 -64 -93 \
"../../../ipstatic/fifo_generator_v13_1_1/hdl/fifo_generator_v13_1_rfs.vhd" \

vlog -work fifo_generator_v13_1_1 -64 -incr \
"../../../ipstatic/fifo_generator_v13_1_1/hdl/fifo_generator_v13_1_rfs.v" \

vlog -work xil_defaultlib -64 -incr \
"../../../../../lab4/sources/ip/artix7/char_fifo/sim/char_fifo.v" \

vlog -work xil_defaultlib "glbl.v"

