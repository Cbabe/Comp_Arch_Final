## Clock signal 12 MHz
set_property -dict { PACKAGE_PIN L17   IOSTANDARD LVCMOS33 } [get_ports { clk }]; #IO_L12P_T1_MRCC_14 Sch=gclk
create_clock -add -name clk -period 4 -waveform {0 2} [get_ports {clk}];
#create_clock -add -name clk -period 2.155 -waveform {0 1.250} [get_ports {clk}];

# create_generated_clock -name clk_pin -source sys_clk_pin -divide_by 1 -multiply_by 2 -duty_cycle 50.0 -verbose [get_nets {pmod[2]}];

# Data in
set_property -dict { PACKAGE_PIN A17   IOSTANDARD LVCMOS33 } [get_ports { dataIn[0] }]; #IO_L12N_T1_MRCC_16 Sch=led[1]
set_property -dict { PACKAGE_PIN C16   IOSTANDARD LVCMOS33 } [get_ports { dataIn[1] }]; #IO_L13P_T2_MRCC_16 Sch=led[2]
set_property -dict { PACKAGE_PIN C15   IOSTANDARD LVCMOS33 } [get_ports { dataIn[2] }]; #IO_L11P_T1_SRCC_16 Sch=pio[05]
set_property -dict { PACKAGE_PIN B17   IOSTANDARD LVCMOS33 } [get_ports { dataIn[3] }]; #IO_L14N_T2_SRCC_16 Sch=led0_b
# set_property -dict { PACKAGE_PIN B16   IOSTANDARD LVCMOS33 } [get_ports { dataIn[4] }]; #IO_L13N_T2_MRCC_16 Sch=led0_g
# set_property -dict { PACKAGE_PIN C17   IOSTANDARD LVCMOS33 } [get_ports { dataIn[5] }]; #IO_L14P_T2_SRCC_16 Sch=led0_r
# set_property -dict { PACKAGE_PIN A18   IOSTANDARD LVCMOS33 } [get_ports { dataIn[6] }]; #IO_L19N_T3_VREF_16 Sch=btn[0]
# set_property -dict { PACKAGE_PIN B18   IOSTANDARD LVCMOS33 } [get_ports { dataIn[7] }]; #IO_L19P_T3_16 Sch=btn[1]
# set_property -dict { PACKAGE_PIN G17   IOSTANDARD LVCMOS33 } [get_ports { dataIn[8] }]; #IO_L5N_T0_D07_14 Sch=ja[1]
# set_property -dict { PACKAGE_PIN G19   IOSTANDARD LVCMOS33 } [get_ports { dataIn[9] }]; #IO_L4N_T0_D05_14 Sch=ja[2]
# set_property -dict { PACKAGE_PIN N18   IOSTANDARD LVCMOS33 } [get_ports { dataIn[10]}]; #IO_L9P_T1_DQS_14 Sch=ja[3]
# set_property -dict { PACKAGE_PIN L18   IOSTANDARD LVCMOS33 } [get_ports { dataIn[11]}]; #IO_L8P_T1_D11_14 Sch=ja[4]
# set_property -dict { PACKAGE_PIN H17   IOSTANDARD LVCMOS33 } [get_ports { dataIn[12]}]; #IO_L5P_T0_D06_14 Sch=ja[7]
# set_property -dict { PACKAGE_PIN H19   IOSTANDARD LVCMOS33 } [get_ports { dataIn[13]}]; #IO_L4P_T0_D04_14 Sch=ja[8]
# set_property -dict { PACKAGE_PIN J19   IOSTANDARD LVCMOS33 } [get_ports { dataIn[14]}]; #IO_L6N_T0_D08_VREF_14 Sch=ja[9]
# set_property -dict { PACKAGE_PIN K18   IOSTANDARD LVCMOS33 } [get_ports { dataIn[15]}]; #IO_L8N_T1_D12_14 Sch=ja[10]

# Data out
set_property -dict { PACKAGE_PIN M3    IOSTANDARD LVCMOS33 } [get_ports { dataOut[0] }]; #IO_L8N_T1_AD14N_35 Sch=pio[01]
set_property -dict { PACKAGE_PIN L3    IOSTANDARD LVCMOS33 } [get_ports { dataOut[1] }]; #IO_L8P_T1_AD14P_35 Sch=pio[02]
set_property -dict { PACKAGE_PIN A16   IOSTANDARD LVCMOS33 } [get_ports { dataOut[2] }]; #IO_L12P_T1_MRCC_16 Sch=pio[03]
set_property -dict { PACKAGE_PIN K3    IOSTANDARD LVCMOS33 } [get_ports { dataOut[3] }]; #IO_L7N_T1_AD6N_35 Sch=pio[04]
# set_property -dict { PACKAGE_PIN V3    IOSTANDARD LVCMOS33 } [get_ports { dataOut[4] }]; #IO_L6P_T0_34 Sch=pio[35]
# set_property -dict { PACKAGE_PIN H1    IOSTANDARD LVCMOS33 } [get_ports { dataOut[5] }]; #IO_L3P_T0_DQS_AD5P_35 Sch=pio[06]
# set_property -dict { PACKAGE_PIN A15   IOSTANDARD LVCMOS33 } [get_ports { dataOut[6] }]; #IO_L6N_T0_VREF_16 Sch=pio[07]
# set_property -dict { PACKAGE_PIN B15   IOSTANDARD LVCMOS33 } [get_ports { dataOut[7] }]; #IO_L11N_T1_SRCC_16 Sch=pio[08]
# set_property -dict { PACKAGE_PIN A14   IOSTANDARD LVCMOS33 } [get_ports { dataOut[8] }]; #IO_L6P_T0_16 Sch=pio[09]
# set_property -dict { PACKAGE_PIN J3    IOSTANDARD LVCMOS33 } [get_ports { dataOut[9] }]; #IO_L7P_T1_AD6P_35 Sch=pio[10]
# set_property -dict { PACKAGE_PIN J1    IOSTANDARD LVCMOS33 } [get_ports { dataOut[10] }]; #IO_L3N_T0_DQS_AD5N_35 Sch=pio[11]
# set_property -dict { PACKAGE_PIN K2    IOSTANDARD LVCMOS33 } [get_ports { dataOut[11] }]; #IO_L5P_T0_AD13P_35 Sch=pio[12]
# set_property -dict { PACKAGE_PIN L1    IOSTANDARD LVCMOS33 } [get_ports { dataOut[12] }]; #IO_L6N_T0_VREF_35 Sch=pio[13]
# set_property -dict { PACKAGE_PIN L2    IOSTANDARD LVCMOS33 } [get_ports { dataOut[13] }]; #IO_L5N_T0_AD13N_35 Sch=pio[14]
# set_property -dict { PACKAGE_PIN M1    IOSTANDARD LVCMOS33 } [get_ports { dataOut[14] }]; #IO_L9N_T1_DQS_AD7N_35 Sch=pio[17]
# set_property -dict { PACKAGE_PIN N3    IOSTANDARD LVCMOS33 } [get_ports { dataOut[15]}]; #IO_L12P_T1_MRCC_35 Sch=pio[18]




# Address
set_property -dict { PACKAGE_PIN W7    IOSTANDARD LVCMOS33 } [get_ports { Addr[0] }]; #IO_L13P_T2_MRCC_34 Sch=pio[46]
set_property -dict { PACKAGE_PIN U8    IOSTANDARD LVCMOS33 } [get_ports { Addr[1] }]; #IO_L14P_T2_SRCC_34 Sch=pio[47]
# set_property -dict { PACKAGE_PIN V8    IOSTANDARD LVCMOS33 } [get_ports { Addr[2] }]; #IO_L14N_T2_SRCC_34 Sch=pio[48
# set_property -dict { PACKAGE_PIN M2    IOSTANDARD LVCMOS33 } [get_ports {  Addr[3] }]; #IO_L9P_T1_DQS_AD7P_35 Sch=pio[20]
#set_property -dict { PACKAGE_PIN W3    IOSTANDARD LVCMOS33 } [get_ports { Addr[4] }]; #IO_L6N_T0_VREF_34 Sch=pio[34]
#Read and write
set_property -dict { PACKAGE_PIN U4    IOSTANDARD LVCMOS33 } [get_ports { WE }]; #IO_L11P_T1_SRCC_34 Sch=pio[38]
set_property -dict { PACKAGE_PIN W4    IOSTANDARD LVCMOS33 } [get_ports { RD }]; #IO_L12N_T1_MRCC_34 Sch=pio[40]
