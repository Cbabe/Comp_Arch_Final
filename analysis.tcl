# Xilinx Vivado Gui-less analysis script
# Based on this tutorial https://www.xilinx.com/video/hardware/using-the-non-project-batch-flow.html
# Note - you can add `start_gui` between any of these commands to interject into the Vivado environment. This lets you use any tools (and you can open any checkpoint too!).

read_verilog [ glob SRAM.sv ]
read_xdc SRAM.xdc

# change the name of the module after -top to change what you analyze
synth_design -top SRAM -part xc7a15tcpg236-1 
write_checkpoint -force synthesis.checkpoint
# opt_design # comment this out if you want to see exactly what you did, not what the optimizer managed
# power_opt_design # optional

report_timing_summary -file timing_summary.log
report_timing -sort_by group -max_paths 100 -path_type summary -file timing.log -verbose
report_utilization -file usage.log -verbose
report_design_analysis -file design_analysis.log -verbose -show_all
