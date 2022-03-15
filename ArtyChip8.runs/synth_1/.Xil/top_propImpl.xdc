set_property SRC_FILE_INFO {cfile:d:/Code/ArtyA7/ArtyChip8/ArtyChip8.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0/clk_wiz_0_in_context.xdc rfile:../../../ArtyChip8.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0/clk_wiz_0_in_context.xdc id:1 order:EARLY scoped_inst:clk_div_inst} [current_design]
set_property SRC_FILE_INFO {cfile:{D:/Code/ArtyA7/ArtyChip8/ArtyChip8.srcs/constrs_1/imports/Hardware Constraints/Arty-A7-35-Master.xdc} rfile:{../../../ArtyChip8.srcs/constrs_1/imports/Hardware Constraints/Arty-A7-35-Master.xdc} id:2} [current_design]
current_instance clk_div_inst
set_property src_info {type:SCOPED_XDC file:1 line:1 export:INPUT save:INPUT read:READ} [current_design]
create_clock -period 10.000 [get_ports -no_traverse {}]
set_property src_info {type:SCOPED_XDC file:1 line:4 export:INPUT save:INPUT read:READ} [current_design]
create_generated_clock -source [get_ports clk_in1] -edges {1 2 3} -edge_shift {0.000 -1.633 -3.266} [get_ports {}]
current_instance
set_property src_info {type:XDC file:2 line:8 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN E3    IOSTANDARD LVCMOS33 } [get_ports { CLK_I }]; #IO_L12P_T1_MRCC_35 Sch=gclk[100]
set_property src_info {type:XDC file:2 line:49 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN G13   IOSTANDARD LVCMOS33 } [get_ports { K_COL[0] }]; #IO_0_15 Sch=ja[1]
set_property src_info {type:XDC file:2 line:50 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN B11   IOSTANDARD LVCMOS33 } [get_ports { K_COL[1] }]; #IO_L4P_T0_15 Sch=ja[2]
set_property src_info {type:XDC file:2 line:51 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN A11   IOSTANDARD LVCMOS33 } [get_ports { K_COL[2] }]; #IO_L4N_T0_15 Sch=ja[3]
set_property src_info {type:XDC file:2 line:52 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN D12   IOSTANDARD LVCMOS33 } [get_ports { K_COL[3] }]; #IO_L6P_T0_15 Sch=ja[4]
set_property src_info {type:XDC file:2 line:53 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN D13   IOSTANDARD LVCMOS33 } [get_ports { K_ROW[0] }]; #IO_L6N_T0_VREF_15 Sch=ja[7]
set_property src_info {type:XDC file:2 line:54 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN B18   IOSTANDARD LVCMOS33 } [get_ports { K_ROW[1] }]; #IO_L10P_T1_AD11P_15 Sch=ja[8]
set_property src_info {type:XDC file:2 line:55 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN A18   IOSTANDARD LVCMOS33 } [get_ports { K_ROW[2] }]; #IO_L10N_T1_AD11N_15 Sch=ja[9]
set_property src_info {type:XDC file:2 line:56 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN K16   IOSTANDARD LVCMOS33 } [get_ports { K_ROW[3] }]; #IO_25_15 Sch=ja[10]
set_property src_info {type:XDC file:2 line:60 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN E15   IOSTANDARD LVCMOS33 } [get_ports { VGA_R[0] }]; #IO_L11P_T1_SRCC_15 Sch=jb_p[1]
set_property src_info {type:XDC file:2 line:61 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN E16   IOSTANDARD LVCMOS33 } [get_ports { VGA_R[1] }]; #IO_L11N_T1_SRCC_15 Sch=jb_n[1]
set_property src_info {type:XDC file:2 line:62 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN D15   IOSTANDARD LVCMOS33 } [get_ports { VGA_R[2] }]; #IO_L12P_T1_MRCC_15 Sch=jb_p[2]
set_property src_info {type:XDC file:2 line:63 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN C15   IOSTANDARD LVCMOS33 } [get_ports { VGA_R[3] }]; #IO_L12N_T1_MRCC_15 Sch=jb_n[2]
set_property src_info {type:XDC file:2 line:64 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN J17   IOSTANDARD LVCMOS33 } [get_ports { VGA_B[0] }]; #IO_L23P_T3_FOE_B_15 Sch=jb_p[3]
set_property src_info {type:XDC file:2 line:65 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN J18   IOSTANDARD LVCMOS33 } [get_ports { VGA_B[1] }]; #IO_L23N_T3_FWE_B_15 Sch=jb_n[3]
set_property src_info {type:XDC file:2 line:66 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN K15   IOSTANDARD LVCMOS33 } [get_ports { VGA_B[2] }]; #IO_L24P_T3_RS1_15 Sch=jb_p[4]
set_property src_info {type:XDC file:2 line:67 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN J15   IOSTANDARD LVCMOS33 } [get_ports { VGA_B[3] }]; #IO_L24N_T3_RS0_15 Sch=jb_n[4]
set_property src_info {type:XDC file:2 line:71 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN U12   IOSTANDARD LVCMOS33 } [get_ports { VGA_G[0] }]; #IO_L20P_T3_A08_D24_14 Sch=jc_p[1]
set_property src_info {type:XDC file:2 line:72 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN V12   IOSTANDARD LVCMOS33 } [get_ports { VGA_G[1] }]; #IO_L20N_T3_A07_D23_14 Sch=jc_n[1]
set_property src_info {type:XDC file:2 line:73 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN V10   IOSTANDARD LVCMOS33 } [get_ports { VGA_G[2] }]; #IO_L21P_T3_DQS_14 Sch=jc_p[2]
set_property src_info {type:XDC file:2 line:74 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN V11   IOSTANDARD LVCMOS33 } [get_ports { VGA_G[3] }]; #IO_L21N_T3_DQS_A06_D22_14 Sch=jc_n[2]
set_property src_info {type:XDC file:2 line:75 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN U14   IOSTANDARD LVCMOS33 } [get_ports { VGA_HS_O }]; #IO_L22P_T3_A05_D21_14 Sch=jc_p[3]
set_property src_info {type:XDC file:2 line:76 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN V14   IOSTANDARD LVCMOS33 } [get_ports { VGA_VS_O }]; #IO_L22N_T3_A04_D20_14 Sch=jc_n[3]
