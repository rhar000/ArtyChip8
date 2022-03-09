-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
-- Date        : Wed Feb 16 21:58:38 2022
-- Host        : DESKTOP-BN0IERJ running 64-bit major release  (build 9200)
-- Command     : write_vhdl -mode funcsim -nolib -force -file
--               D:/Code/ArtyA7/ArtyChip8/ArtyChip8.sim/sim_1/impl/func/xsim/top_func_impl.vhd
-- Design      : top
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35ticsg324-1L
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity clk_wiz_0_clk_wiz_0_clk_wiz is
  port (
    clk_out1 : out STD_LOGIC;
    clk_in1 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of clk_wiz_0_clk_wiz_0_clk_wiz : entity is "clk_wiz_0_clk_wiz";
end clk_wiz_0_clk_wiz_0_clk_wiz;

architecture STRUCTURE of clk_wiz_0_clk_wiz_0_clk_wiz is
  signal clk_in1_clk_wiz_0 : STD_LOGIC;
  signal clk_out1_clk_wiz_0 : STD_LOGIC;
  signal clkfbout_buf_clk_wiz_0 : STD_LOGIC;
  signal clkfbout_clk_wiz_0 : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKFBOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKFBSTOPPED_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKINSTOPPED_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT0B_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT1_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT1B_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT2_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT2B_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT3_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT3B_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT4_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT5_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT6_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_DRDY_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_LOCKED_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_PSDONE_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_DO_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of clkf_buf : label is "PRIMITIVE";
  attribute BOX_TYPE of clkin1_ibufg : label is "PRIMITIVE";
  attribute CAPACITANCE : string;
  attribute CAPACITANCE of clkin1_ibufg : label is "DONT_CARE";
  attribute IBUF_DELAY_VALUE : string;
  attribute IBUF_DELAY_VALUE of clkin1_ibufg : label is "0";
  attribute IFD_DELAY_VALUE : string;
  attribute IFD_DELAY_VALUE of clkin1_ibufg : label is "AUTO";
  attribute BOX_TYPE of clkout1_buf : label is "PRIMITIVE";
  attribute BOX_TYPE of mmcm_adv_inst : label is "PRIMITIVE";
begin
clkf_buf: unisim.vcomponents.BUFG
     port map (
      I => clkfbout_clk_wiz_0,
      O => clkfbout_buf_clk_wiz_0
    );
clkin1_ibufg: unisim.vcomponents.IBUF
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => clk_in1,
      O => clk_in1_clk_wiz_0
    );
clkout1_buf: unisim.vcomponents.BUFG
     port map (
      I => clk_out1_clk_wiz_0,
      O => clk_out1
    );
mmcm_adv_inst: unisim.vcomponents.MMCME2_ADV
    generic map(
      BANDWIDTH => "OPTIMIZED",
      CLKFBOUT_MULT_F => 37.125000,
      CLKFBOUT_PHASE => 0.000000,
      CLKFBOUT_USE_FINE_PS => false,
      CLKIN1_PERIOD => 10.000000,
      CLKIN2_PERIOD => 0.000000,
      CLKOUT0_DIVIDE_F => 6.250000,
      CLKOUT0_DUTY_CYCLE => 0.500000,
      CLKOUT0_PHASE => 0.000000,
      CLKOUT0_USE_FINE_PS => false,
      CLKOUT1_DIVIDE => 1,
      CLKOUT1_DUTY_CYCLE => 0.500000,
      CLKOUT1_PHASE => 0.000000,
      CLKOUT1_USE_FINE_PS => false,
      CLKOUT2_DIVIDE => 1,
      CLKOUT2_DUTY_CYCLE => 0.500000,
      CLKOUT2_PHASE => 0.000000,
      CLKOUT2_USE_FINE_PS => false,
      CLKOUT3_DIVIDE => 1,
      CLKOUT3_DUTY_CYCLE => 0.500000,
      CLKOUT3_PHASE => 0.000000,
      CLKOUT3_USE_FINE_PS => false,
      CLKOUT4_CASCADE => false,
      CLKOUT4_DIVIDE => 1,
      CLKOUT4_DUTY_CYCLE => 0.500000,
      CLKOUT4_PHASE => 0.000000,
      CLKOUT4_USE_FINE_PS => false,
      CLKOUT5_DIVIDE => 1,
      CLKOUT5_DUTY_CYCLE => 0.500000,
      CLKOUT5_PHASE => 0.000000,
      CLKOUT5_USE_FINE_PS => false,
      CLKOUT6_DIVIDE => 1,
      CLKOUT6_DUTY_CYCLE => 0.500000,
      CLKOUT6_PHASE => 0.000000,
      CLKOUT6_USE_FINE_PS => false,
      COMPENSATION => "ZHOLD",
      DIVCLK_DIVIDE => 4,
      IS_CLKINSEL_INVERTED => '0',
      IS_PSEN_INVERTED => '0',
      IS_PSINCDEC_INVERTED => '0',
      IS_PWRDWN_INVERTED => '0',
      IS_RST_INVERTED => '0',
      REF_JITTER1 => 0.010000,
      REF_JITTER2 => 0.010000,
      SS_EN => "FALSE",
      SS_MODE => "CENTER_HIGH",
      SS_MOD_PERIOD => 10000,
      STARTUP_WAIT => false
    )
        port map (
      CLKFBIN => clkfbout_buf_clk_wiz_0,
      CLKFBOUT => clkfbout_clk_wiz_0,
      CLKFBOUTB => NLW_mmcm_adv_inst_CLKFBOUTB_UNCONNECTED,
      CLKFBSTOPPED => NLW_mmcm_adv_inst_CLKFBSTOPPED_UNCONNECTED,
      CLKIN1 => clk_in1_clk_wiz_0,
      CLKIN2 => '0',
      CLKINSEL => '1',
      CLKINSTOPPED => NLW_mmcm_adv_inst_CLKINSTOPPED_UNCONNECTED,
      CLKOUT0 => clk_out1_clk_wiz_0,
      CLKOUT0B => NLW_mmcm_adv_inst_CLKOUT0B_UNCONNECTED,
      CLKOUT1 => NLW_mmcm_adv_inst_CLKOUT1_UNCONNECTED,
      CLKOUT1B => NLW_mmcm_adv_inst_CLKOUT1B_UNCONNECTED,
      CLKOUT2 => NLW_mmcm_adv_inst_CLKOUT2_UNCONNECTED,
      CLKOUT2B => NLW_mmcm_adv_inst_CLKOUT2B_UNCONNECTED,
      CLKOUT3 => NLW_mmcm_adv_inst_CLKOUT3_UNCONNECTED,
      CLKOUT3B => NLW_mmcm_adv_inst_CLKOUT3B_UNCONNECTED,
      CLKOUT4 => NLW_mmcm_adv_inst_CLKOUT4_UNCONNECTED,
      CLKOUT5 => NLW_mmcm_adv_inst_CLKOUT5_UNCONNECTED,
      CLKOUT6 => NLW_mmcm_adv_inst_CLKOUT6_UNCONNECTED,
      DADDR(6 downto 0) => B"0000000",
      DCLK => '0',
      DEN => '0',
      DI(15 downto 0) => B"0000000000000000",
      DO(15 downto 0) => NLW_mmcm_adv_inst_DO_UNCONNECTED(15 downto 0),
      DRDY => NLW_mmcm_adv_inst_DRDY_UNCONNECTED,
      DWE => '0',
      LOCKED => NLW_mmcm_adv_inst_LOCKED_UNCONNECTED,
      PSCLK => '0',
      PSDONE => NLW_mmcm_adv_inst_PSDONE_UNCONNECTED,
      PSEN => '0',
      PSINCDEC => '0',
      PWRDWN => '0',
      RST => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity clk_wiz_0 is
  port (
    clk_out1 : out STD_LOGIC;
    clk_in1 : in STD_LOGIC
  );
end clk_wiz_0;

architecture STRUCTURE of clk_wiz_0 is
begin
inst: entity work.clk_wiz_0_clk_wiz_0_clk_wiz
     port map (
      clk_in1 => clk_in1,
      clk_out1 => clk_out1
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity top is
  port (
    CLK_I : in STD_LOGIC;
    VGA_HS_O : out STD_LOGIC;
    VGA_VS_O : out STD_LOGIC;
    VGA_R : out STD_LOGIC_VECTOR ( 3 downto 0 );
    VGA_B : out STD_LOGIC_VECTOR ( 3 downto 0 );
    VGA_G : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of top : entity is true;
  attribute ECO_CHECKSUM : string;
  attribute ECO_CHECKSUM of top : entity is "c2c8dc96";
end top;

architecture STRUCTURE of top is
  signal VGA_HS_O_OBUF : STD_LOGIC;
  signal VGA_R_OBUF : STD_LOGIC_VECTOR ( 0 to 0 );
  signal VGA_VS_O_OBUF : STD_LOGIC;
  signal eqOp2_in : STD_LOGIC;
  signal geqOp : STD_LOGIC;
  signal geqOp1_in : STD_LOGIC;
  signal \h_cntr_reg[0]_i_3_n_0\ : STD_LOGIC;
  signal \h_cntr_reg[0]_i_4_n_0\ : STD_LOGIC;
  signal \h_cntr_reg[0]_i_5_n_0\ : STD_LOGIC;
  signal h_cntr_reg_reg : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \h_cntr_reg_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \h_cntr_reg_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \h_cntr_reg_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \h_cntr_reg_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \h_cntr_reg_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \h_cntr_reg_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \h_cntr_reg_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \h_cntr_reg_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \h_cntr_reg_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \h_cntr_reg_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \h_cntr_reg_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \h_cntr_reg_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \h_cntr_reg_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \h_cntr_reg_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal h_sync_reg : STD_LOGIC;
  signal h_sync_reg0 : STD_LOGIC;
  signal h_sync_reg_i_10_n_0 : STD_LOGIC;
  signal h_sync_reg_i_11_n_0 : STD_LOGIC;
  signal h_sync_reg_i_12_n_0 : STD_LOGIC;
  signal h_sync_reg_i_13_n_0 : STD_LOGIC;
  signal h_sync_reg_i_14_n_0 : STD_LOGIC;
  signal h_sync_reg_i_15_n_0 : STD_LOGIC;
  signal h_sync_reg_i_16_n_0 : STD_LOGIC;
  signal h_sync_reg_i_17_n_0 : STD_LOGIC;
  signal h_sync_reg_i_18_n_0 : STD_LOGIC;
  signal h_sync_reg_i_19_n_0 : STD_LOGIC;
  signal h_sync_reg_i_5_n_0 : STD_LOGIC;
  signal h_sync_reg_i_6_n_0 : STD_LOGIC;
  signal h_sync_reg_i_8_n_0 : STD_LOGIC;
  signal h_sync_reg_i_9_n_0 : STD_LOGIC;
  signal h_sync_reg_reg_i_4_n_0 : STD_LOGIC;
  signal h_sync_reg_reg_i_7_n_0 : STD_LOGIC;
  signal ltOp : STD_LOGIC;
  signal ltOp0_in : STD_LOGIC;
  signal pxl_clk : STD_LOGIC;
  signal v_cntr_reg0 : STD_LOGIC;
  signal \v_cntr_reg[0]_i_3_n_0\ : STD_LOGIC;
  signal \v_cntr_reg[0]_i_4_n_0\ : STD_LOGIC;
  signal \v_cntr_reg[0]_i_5_n_0\ : STD_LOGIC;
  signal v_cntr_reg_reg : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \v_cntr_reg_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \v_cntr_reg_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \v_cntr_reg_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \v_cntr_reg_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \v_cntr_reg_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \v_cntr_reg_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \v_cntr_reg_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \v_cntr_reg_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \v_cntr_reg_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \v_cntr_reg_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \v_cntr_reg_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \v_cntr_reg_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \v_cntr_reg_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \v_cntr_reg_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal v_sync_reg : STD_LOGIC;
  signal v_sync_reg0 : STD_LOGIC;
  signal v_sync_reg_i_10_n_0 : STD_LOGIC;
  signal v_sync_reg_i_11_n_0 : STD_LOGIC;
  signal v_sync_reg_i_12_n_0 : STD_LOGIC;
  signal v_sync_reg_i_13_n_0 : STD_LOGIC;
  signal v_sync_reg_i_14_n_0 : STD_LOGIC;
  signal v_sync_reg_i_15_n_0 : STD_LOGIC;
  signal v_sync_reg_i_16_n_0 : STD_LOGIC;
  signal v_sync_reg_i_17_n_0 : STD_LOGIC;
  signal v_sync_reg_i_18_n_0 : STD_LOGIC;
  signal v_sync_reg_i_5_n_0 : STD_LOGIC;
  signal v_sync_reg_i_6_n_0 : STD_LOGIC;
  signal v_sync_reg_i_7_n_0 : STD_LOGIC;
  signal v_sync_reg_i_8_n_0 : STD_LOGIC;
  signal v_sync_reg_i_9_n_0 : STD_LOGIC;
  signal v_sync_reg_reg_i_4_n_0 : STD_LOGIC;
  signal \vga_red_reg_reg[2]_lopt_replica_1\ : STD_LOGIC;
  signal \NLW_h_cntr_reg_reg[0]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_h_cntr_reg_reg[4]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_h_cntr_reg_reg[8]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_h_sync_reg_reg_i_2_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_h_sync_reg_reg_i_2_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_h_sync_reg_reg_i_3_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_h_sync_reg_reg_i_3_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_h_sync_reg_reg_i_4_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_h_sync_reg_reg_i_4_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_h_sync_reg_reg_i_7_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_h_sync_reg_reg_i_7_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_v_cntr_reg_reg[0]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_v_cntr_reg_reg[4]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_v_cntr_reg_reg[8]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_v_sync_reg_reg_i_2_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_v_sync_reg_reg_i_2_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_v_sync_reg_reg_i_3_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_v_sync_reg_reg_i_3_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_v_sync_reg_reg_i_4_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_v_sync_reg_reg_i_4_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of \VGA_R_OBUF[0]_inst\ : label is "SWEEP";
  attribute OPT_MODIFIED of \VGA_R_OBUF[2]_inst\ : label is "SWEEP";
  attribute IMPORTED_FROM : string;
  attribute IMPORTED_FROM of clk_div_inst : label is "d:/Code/ArtyA7/ArtyChip8/ArtyChip8.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0.dcp";
  attribute IMPORTED_TYPE : string;
  attribute IMPORTED_TYPE of clk_div_inst : label is "CHECKPOINT";
  attribute IS_IMPORTED : boolean;
  attribute IS_IMPORTED of clk_div_inst : label is std.standard.true;
  attribute syn_black_box : string;
  attribute syn_black_box of clk_div_inst : label is "TRUE";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \h_cntr_reg_reg[0]_i_2\ : label is 11;
  attribute OPT_MODIFIED of \h_cntr_reg_reg[0]_i_2\ : label is "SWEEP";
  attribute ADDER_THRESHOLD of \h_cntr_reg_reg[4]_i_1\ : label is 11;
  attribute OPT_MODIFIED of \h_cntr_reg_reg[4]_i_1\ : label is "SWEEP";
  attribute ADDER_THRESHOLD of \h_cntr_reg_reg[8]_i_1\ : label is 11;
  attribute OPT_MODIFIED of \h_cntr_reg_reg[8]_i_1\ : label is "SWEEP";
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of h_sync_reg_reg_i_2 : label is 11;
  attribute OPT_MODIFIED of h_sync_reg_reg_i_2 : label is "SWEEP";
  attribute COMPARATOR_THRESHOLD of h_sync_reg_reg_i_3 : label is 11;
  attribute OPT_MODIFIED of h_sync_reg_reg_i_3 : label is "SWEEP";
  attribute COMPARATOR_THRESHOLD of h_sync_reg_reg_i_4 : label is 11;
  attribute OPT_MODIFIED of h_sync_reg_reg_i_4 : label is "SWEEP";
  attribute COMPARATOR_THRESHOLD of h_sync_reg_reg_i_7 : label is 11;
  attribute OPT_MODIFIED of h_sync_reg_reg_i_7 : label is "SWEEP";
  attribute ADDER_THRESHOLD of \v_cntr_reg_reg[0]_i_2\ : label is 11;
  attribute OPT_MODIFIED of \v_cntr_reg_reg[0]_i_2\ : label is "SWEEP";
  attribute ADDER_THRESHOLD of \v_cntr_reg_reg[4]_i_1\ : label is 11;
  attribute OPT_MODIFIED of \v_cntr_reg_reg[4]_i_1\ : label is "SWEEP";
  attribute ADDER_THRESHOLD of \v_cntr_reg_reg[8]_i_1\ : label is 11;
  attribute OPT_MODIFIED of \v_cntr_reg_reg[8]_i_1\ : label is "SWEEP";
  attribute COMPARATOR_THRESHOLD of v_sync_reg_reg_i_2 : label is 11;
  attribute OPT_MODIFIED of v_sync_reg_reg_i_2 : label is "SWEEP";
  attribute COMPARATOR_THRESHOLD of v_sync_reg_reg_i_3 : label is 11;
  attribute OPT_MODIFIED of v_sync_reg_reg_i_3 : label is "SWEEP";
  attribute COMPARATOR_THRESHOLD of v_sync_reg_reg_i_4 : label is 11;
  attribute OPT_MODIFIED of v_sync_reg_reg_i_4 : label is "SWEEP";
  attribute OPT_INSERTED_REPDRIVER : boolean;
  attribute OPT_INSERTED_REPDRIVER of \vga_red_reg_reg[2]_lopt_replica\ : label is std.standard.true;
  attribute OPT_MODIFIED of \vga_red_reg_reg[2]_lopt_replica\ : label is "SWEEP";
begin
\VGA_B_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => VGA_B(0)
    );
\VGA_B_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => VGA_B(1)
    );
\VGA_B_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => VGA_B(2)
    );
\VGA_B_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => VGA_B(3)
    );
\VGA_G_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => VGA_G(0)
    );
\VGA_G_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => VGA_G(1)
    );
\VGA_G_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => VGA_G(2)
    );
\VGA_G_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => VGA_G(3)
    );
VGA_HS_O_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => VGA_HS_O_OBUF,
      O => VGA_HS_O
    );
\VGA_R_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => \vga_red_reg_reg[2]_lopt_replica_1\,
      O => VGA_R(0)
    );
\VGA_R_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => VGA_R(1)
    );
\VGA_R_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => VGA_R_OBUF(0),
      O => VGA_R(2)
    );
\VGA_R_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => VGA_R(3)
    );
VGA_VS_O_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => VGA_VS_O_OBUF,
      O => VGA_VS_O
    );
clk_div_inst: entity work.clk_wiz_0
     port map (
      clk_in1 => CLK_I,
      clk_out1 => pxl_clk
    );
\h_cntr_reg[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \h_cntr_reg[0]_i_3_n_0\,
      I1 => h_cntr_reg_reg(11),
      I2 => h_cntr_reg_reg(7),
      I3 => h_cntr_reg_reg(4),
      I4 => h_cntr_reg_reg(2),
      I5 => \h_cntr_reg[0]_i_4_n_0\,
      O => eqOp2_in
    );
\h_cntr_reg[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => h_cntr_reg_reg(10),
      I1 => h_cntr_reg_reg(8),
      I2 => h_cntr_reg_reg(9),
      I3 => h_cntr_reg_reg(3),
      I4 => h_cntr_reg_reg(5),
      I5 => h_cntr_reg_reg(6),
      O => \h_cntr_reg[0]_i_3_n_0\
    );
\h_cntr_reg[0]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => h_cntr_reg_reg(0),
      I1 => h_cntr_reg_reg(1),
      O => \h_cntr_reg[0]_i_4_n_0\
    );
\h_cntr_reg[0]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => h_cntr_reg_reg(0),
      O => \h_cntr_reg[0]_i_5_n_0\
    );
\h_cntr_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pxl_clk,
      CE => '1',
      D => \h_cntr_reg_reg[0]_i_2_n_7\,
      Q => h_cntr_reg_reg(0),
      R => eqOp2_in
    );
\h_cntr_reg_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \h_cntr_reg_reg[0]_i_2_n_0\,
      CO(2 downto 0) => \NLW_h_cntr_reg_reg[0]_i_2_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \h_cntr_reg_reg[0]_i_2_n_4\,
      O(2) => \h_cntr_reg_reg[0]_i_2_n_5\,
      O(1) => \h_cntr_reg_reg[0]_i_2_n_6\,
      O(0) => \h_cntr_reg_reg[0]_i_2_n_7\,
      S(3 downto 1) => h_cntr_reg_reg(3 downto 1),
      S(0) => \h_cntr_reg[0]_i_5_n_0\
    );
\h_cntr_reg_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pxl_clk,
      CE => '1',
      D => \h_cntr_reg_reg[8]_i_1_n_5\,
      Q => h_cntr_reg_reg(10),
      R => eqOp2_in
    );
\h_cntr_reg_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pxl_clk,
      CE => '1',
      D => \h_cntr_reg_reg[8]_i_1_n_4\,
      Q => h_cntr_reg_reg(11),
      R => eqOp2_in
    );
\h_cntr_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pxl_clk,
      CE => '1',
      D => \h_cntr_reg_reg[0]_i_2_n_6\,
      Q => h_cntr_reg_reg(1),
      R => eqOp2_in
    );
\h_cntr_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pxl_clk,
      CE => '1',
      D => \h_cntr_reg_reg[0]_i_2_n_5\,
      Q => h_cntr_reg_reg(2),
      R => eqOp2_in
    );
\h_cntr_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pxl_clk,
      CE => '1',
      D => \h_cntr_reg_reg[0]_i_2_n_4\,
      Q => h_cntr_reg_reg(3),
      R => eqOp2_in
    );
\h_cntr_reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pxl_clk,
      CE => '1',
      D => \h_cntr_reg_reg[4]_i_1_n_7\,
      Q => h_cntr_reg_reg(4),
      R => eqOp2_in
    );
\h_cntr_reg_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \h_cntr_reg_reg[0]_i_2_n_0\,
      CO(3) => \h_cntr_reg_reg[4]_i_1_n_0\,
      CO(2 downto 0) => \NLW_h_cntr_reg_reg[4]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \h_cntr_reg_reg[4]_i_1_n_4\,
      O(2) => \h_cntr_reg_reg[4]_i_1_n_5\,
      O(1) => \h_cntr_reg_reg[4]_i_1_n_6\,
      O(0) => \h_cntr_reg_reg[4]_i_1_n_7\,
      S(3 downto 0) => h_cntr_reg_reg(7 downto 4)
    );
\h_cntr_reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pxl_clk,
      CE => '1',
      D => \h_cntr_reg_reg[4]_i_1_n_6\,
      Q => h_cntr_reg_reg(5),
      R => eqOp2_in
    );
\h_cntr_reg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pxl_clk,
      CE => '1',
      D => \h_cntr_reg_reg[4]_i_1_n_5\,
      Q => h_cntr_reg_reg(6),
      R => eqOp2_in
    );
\h_cntr_reg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pxl_clk,
      CE => '1',
      D => \h_cntr_reg_reg[4]_i_1_n_4\,
      Q => h_cntr_reg_reg(7),
      R => eqOp2_in
    );
\h_cntr_reg_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pxl_clk,
      CE => '1',
      D => \h_cntr_reg_reg[8]_i_1_n_7\,
      Q => h_cntr_reg_reg(8),
      R => eqOp2_in
    );
\h_cntr_reg_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \h_cntr_reg_reg[4]_i_1_n_0\,
      CO(3 downto 0) => \NLW_h_cntr_reg_reg[8]_i_1_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \h_cntr_reg_reg[8]_i_1_n_4\,
      O(2) => \h_cntr_reg_reg[8]_i_1_n_5\,
      O(1) => \h_cntr_reg_reg[8]_i_1_n_6\,
      O(0) => \h_cntr_reg_reg[8]_i_1_n_7\,
      S(3 downto 0) => h_cntr_reg_reg(11 downto 8)
    );
\h_cntr_reg_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pxl_clk,
      CE => '1',
      D => \h_cntr_reg_reg[8]_i_1_n_6\,
      Q => h_cntr_reg_reg(9),
      R => eqOp2_in
    );
h_sync_dly_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pxl_clk,
      CE => '1',
      D => h_sync_reg,
      Q => VGA_HS_O_OBUF,
      R => '0'
    );
h_sync_reg_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => geqOp1_in,
      I1 => ltOp0_in,
      O => h_sync_reg0
    );
h_sync_reg_i_10: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => h_cntr_reg_reg(8),
      I1 => h_cntr_reg_reg(9),
      O => h_sync_reg_i_10_n_0
    );
h_sync_reg_i_11: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => h_cntr_reg_reg(6),
      I1 => h_cntr_reg_reg(7),
      O => h_sync_reg_i_11_n_0
    );
h_sync_reg_i_12: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => h_cntr_reg_reg(4),
      I1 => h_cntr_reg_reg(5),
      O => h_sync_reg_i_12_n_0
    );
h_sync_reg_i_13: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => h_cntr_reg_reg(2),
      I1 => h_cntr_reg_reg(3),
      O => h_sync_reg_i_13_n_0
    );
h_sync_reg_i_14: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => h_cntr_reg_reg(0),
      I1 => h_cntr_reg_reg(1),
      O => h_sync_reg_i_14_n_0
    );
h_sync_reg_i_15: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => h_cntr_reg_reg(0),
      I1 => h_cntr_reg_reg(1),
      O => h_sync_reg_i_15_n_0
    );
h_sync_reg_i_16: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => h_cntr_reg_reg(6),
      I1 => h_cntr_reg_reg(7),
      O => h_sync_reg_i_16_n_0
    );
h_sync_reg_i_17: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => h_cntr_reg_reg(4),
      I1 => h_cntr_reg_reg(5),
      O => h_sync_reg_i_17_n_0
    );
h_sync_reg_i_18: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => h_cntr_reg_reg(2),
      I1 => h_cntr_reg_reg(3),
      O => h_sync_reg_i_18_n_0
    );
h_sync_reg_i_19: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => h_cntr_reg_reg(0),
      I1 => h_cntr_reg_reg(1),
      O => h_sync_reg_i_19_n_0
    );
h_sync_reg_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => h_cntr_reg_reg(10),
      I1 => h_cntr_reg_reg(11),
      O => h_sync_reg_i_5_n_0
    );
h_sync_reg_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => h_cntr_reg_reg(8),
      I1 => h_cntr_reg_reg(9),
      O => h_sync_reg_i_6_n_0
    );
h_sync_reg_i_8: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => h_cntr_reg_reg(11),
      O => h_sync_reg_i_8_n_0
    );
h_sync_reg_i_9: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => h_cntr_reg_reg(11),
      I1 => h_cntr_reg_reg(10),
      O => h_sync_reg_i_9_n_0
    );
h_sync_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pxl_clk,
      CE => '1',
      D => h_sync_reg0,
      Q => h_sync_reg,
      R => '0'
    );
h_sync_reg_reg_i_2: unisim.vcomponents.CARRY4
     port map (
      CI => h_sync_reg_reg_i_4_n_0,
      CO(3 downto 2) => NLW_h_sync_reg_reg_i_2_CO_UNCONNECTED(3 downto 2),
      CO(1) => geqOp1_in,
      CO(0) => NLW_h_sync_reg_reg_i_2_CO_UNCONNECTED(0),
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => h_cntr_reg_reg(11),
      DI(0) => '0',
      O(3 downto 0) => NLW_h_sync_reg_reg_i_2_O_UNCONNECTED(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => h_sync_reg_i_5_n_0,
      S(0) => h_sync_reg_i_6_n_0
    );
h_sync_reg_reg_i_3: unisim.vcomponents.CARRY4
     port map (
      CI => h_sync_reg_reg_i_7_n_0,
      CO(3 downto 2) => NLW_h_sync_reg_reg_i_3_CO_UNCONNECTED(3 downto 2),
      CO(1) => ltOp0_in,
      CO(0) => NLW_h_sync_reg_reg_i_3_CO_UNCONNECTED(0),
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => h_sync_reg_i_8_n_0,
      DI(0) => '0',
      O(3 downto 0) => NLW_h_sync_reg_reg_i_3_O_UNCONNECTED(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => h_sync_reg_i_9_n_0,
      S(0) => h_sync_reg_i_10_n_0
    );
h_sync_reg_reg_i_4: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => h_sync_reg_reg_i_4_n_0,
      CO(2 downto 0) => NLW_h_sync_reg_reg_i_4_CO_UNCONNECTED(2 downto 0),
      CYINIT => '1',
      DI(3) => '0',
      DI(2) => h_cntr_reg_reg(5),
      DI(1) => h_cntr_reg_reg(3),
      DI(0) => '0',
      O(3 downto 0) => NLW_h_sync_reg_reg_i_4_O_UNCONNECTED(3 downto 0),
      S(3) => h_sync_reg_i_11_n_0,
      S(2) => h_sync_reg_i_12_n_0,
      S(1) => h_sync_reg_i_13_n_0,
      S(0) => h_sync_reg_i_14_n_0
    );
h_sync_reg_reg_i_7: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => h_sync_reg_reg_i_7_n_0,
      CO(2 downto 0) => NLW_h_sync_reg_reg_i_7_CO_UNCONNECTED(2 downto 0),
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => h_sync_reg_i_15_n_0,
      O(3 downto 0) => NLW_h_sync_reg_reg_i_7_O_UNCONNECTED(3 downto 0),
      S(3) => h_sync_reg_i_16_n_0,
      S(2) => h_sync_reg_i_17_n_0,
      S(1) => h_sync_reg_i_18_n_0,
      S(0) => h_sync_reg_i_19_n_0
    );
\v_cntr_reg[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => eqOp2_in,
      I1 => \v_cntr_reg[0]_i_3_n_0\,
      I2 => v_cntr_reg_reg(11),
      I3 => v_cntr_reg_reg(3),
      I4 => v_cntr_reg_reg(8),
      I5 => v_cntr_reg_reg(9),
      O => v_cntr_reg0
    );
\v_cntr_reg[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => v_cntr_reg_reg(1),
      I1 => v_cntr_reg_reg(4),
      I2 => v_cntr_reg_reg(7),
      I3 => v_cntr_reg_reg(0),
      I4 => \v_cntr_reg[0]_i_5_n_0\,
      O => \v_cntr_reg[0]_i_3_n_0\
    );
\v_cntr_reg[0]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => v_cntr_reg_reg(0),
      O => \v_cntr_reg[0]_i_4_n_0\
    );
\v_cntr_reg[0]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => v_cntr_reg_reg(2),
      I1 => v_cntr_reg_reg(10),
      I2 => v_cntr_reg_reg(6),
      I3 => v_cntr_reg_reg(5),
      O => \v_cntr_reg[0]_i_5_n_0\
    );
\v_cntr_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pxl_clk,
      CE => eqOp2_in,
      D => \v_cntr_reg_reg[0]_i_2_n_7\,
      Q => v_cntr_reg_reg(0),
      R => v_cntr_reg0
    );
\v_cntr_reg_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \v_cntr_reg_reg[0]_i_2_n_0\,
      CO(2 downto 0) => \NLW_v_cntr_reg_reg[0]_i_2_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \v_cntr_reg_reg[0]_i_2_n_4\,
      O(2) => \v_cntr_reg_reg[0]_i_2_n_5\,
      O(1) => \v_cntr_reg_reg[0]_i_2_n_6\,
      O(0) => \v_cntr_reg_reg[0]_i_2_n_7\,
      S(3 downto 1) => v_cntr_reg_reg(3 downto 1),
      S(0) => \v_cntr_reg[0]_i_4_n_0\
    );
\v_cntr_reg_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pxl_clk,
      CE => eqOp2_in,
      D => \v_cntr_reg_reg[8]_i_1_n_5\,
      Q => v_cntr_reg_reg(10),
      R => v_cntr_reg0
    );
\v_cntr_reg_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pxl_clk,
      CE => eqOp2_in,
      D => \v_cntr_reg_reg[8]_i_1_n_4\,
      Q => v_cntr_reg_reg(11),
      R => v_cntr_reg0
    );
\v_cntr_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pxl_clk,
      CE => eqOp2_in,
      D => \v_cntr_reg_reg[0]_i_2_n_6\,
      Q => v_cntr_reg_reg(1),
      R => v_cntr_reg0
    );
\v_cntr_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pxl_clk,
      CE => eqOp2_in,
      D => \v_cntr_reg_reg[0]_i_2_n_5\,
      Q => v_cntr_reg_reg(2),
      R => v_cntr_reg0
    );
\v_cntr_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pxl_clk,
      CE => eqOp2_in,
      D => \v_cntr_reg_reg[0]_i_2_n_4\,
      Q => v_cntr_reg_reg(3),
      R => v_cntr_reg0
    );
\v_cntr_reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pxl_clk,
      CE => eqOp2_in,
      D => \v_cntr_reg_reg[4]_i_1_n_7\,
      Q => v_cntr_reg_reg(4),
      R => v_cntr_reg0
    );
\v_cntr_reg_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \v_cntr_reg_reg[0]_i_2_n_0\,
      CO(3) => \v_cntr_reg_reg[4]_i_1_n_0\,
      CO(2 downto 0) => \NLW_v_cntr_reg_reg[4]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \v_cntr_reg_reg[4]_i_1_n_4\,
      O(2) => \v_cntr_reg_reg[4]_i_1_n_5\,
      O(1) => \v_cntr_reg_reg[4]_i_1_n_6\,
      O(0) => \v_cntr_reg_reg[4]_i_1_n_7\,
      S(3 downto 0) => v_cntr_reg_reg(7 downto 4)
    );
\v_cntr_reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pxl_clk,
      CE => eqOp2_in,
      D => \v_cntr_reg_reg[4]_i_1_n_6\,
      Q => v_cntr_reg_reg(5),
      R => v_cntr_reg0
    );
\v_cntr_reg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pxl_clk,
      CE => eqOp2_in,
      D => \v_cntr_reg_reg[4]_i_1_n_5\,
      Q => v_cntr_reg_reg(6),
      R => v_cntr_reg0
    );
\v_cntr_reg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pxl_clk,
      CE => eqOp2_in,
      D => \v_cntr_reg_reg[4]_i_1_n_4\,
      Q => v_cntr_reg_reg(7),
      R => v_cntr_reg0
    );
\v_cntr_reg_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pxl_clk,
      CE => eqOp2_in,
      D => \v_cntr_reg_reg[8]_i_1_n_7\,
      Q => v_cntr_reg_reg(8),
      R => v_cntr_reg0
    );
\v_cntr_reg_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \v_cntr_reg_reg[4]_i_1_n_0\,
      CO(3 downto 0) => \NLW_v_cntr_reg_reg[8]_i_1_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \v_cntr_reg_reg[8]_i_1_n_4\,
      O(2) => \v_cntr_reg_reg[8]_i_1_n_5\,
      O(1) => \v_cntr_reg_reg[8]_i_1_n_6\,
      O(0) => \v_cntr_reg_reg[8]_i_1_n_7\,
      S(3 downto 0) => v_cntr_reg_reg(11 downto 8)
    );
\v_cntr_reg_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pxl_clk,
      CE => eqOp2_in,
      D => \v_cntr_reg_reg[8]_i_1_n_6\,
      Q => v_cntr_reg_reg(9),
      R => v_cntr_reg0
    );
v_sync_dly_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pxl_clk,
      CE => '1',
      D => v_sync_reg,
      Q => VGA_VS_O_OBUF,
      R => '0'
    );
v_sync_reg_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => geqOp,
      I1 => ltOp,
      O => v_sync_reg0
    );
v_sync_reg_i_10: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => v_cntr_reg_reg(10),
      I1 => v_cntr_reg_reg(11),
      O => v_sync_reg_i_10_n_0
    );
v_sync_reg_i_11: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => v_cntr_reg_reg(8),
      I1 => v_cntr_reg_reg(9),
      O => v_sync_reg_i_11_n_0
    );
v_sync_reg_i_12: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => v_cntr_reg_reg(6),
      I1 => v_cntr_reg_reg(7),
      O => v_sync_reg_i_12_n_0
    );
v_sync_reg_i_13: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => v_cntr_reg_reg(6),
      I1 => v_cntr_reg_reg(7),
      O => v_sync_reg_i_13_n_0
    );
v_sync_reg_i_14: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => v_cntr_reg_reg(2),
      I1 => v_cntr_reg_reg(3),
      O => v_sync_reg_i_14_n_0
    );
v_sync_reg_i_15: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => v_cntr_reg_reg(6),
      I1 => v_cntr_reg_reg(7),
      O => v_sync_reg_i_15_n_0
    );
v_sync_reg_i_16: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => v_cntr_reg_reg(4),
      I1 => v_cntr_reg_reg(5),
      O => v_sync_reg_i_16_n_0
    );
v_sync_reg_i_17: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => v_cntr_reg_reg(3),
      I1 => v_cntr_reg_reg(2),
      O => v_sync_reg_i_17_n_0
    );
v_sync_reg_i_18: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => v_cntr_reg_reg(0),
      I1 => v_cntr_reg_reg(1),
      O => v_sync_reg_i_18_n_0
    );
v_sync_reg_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => v_cntr_reg_reg(8),
      I1 => v_cntr_reg_reg(9),
      O => v_sync_reg_i_5_n_0
    );
v_sync_reg_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => v_cntr_reg_reg(10),
      I1 => v_cntr_reg_reg(11),
      O => v_sync_reg_i_6_n_0
    );
v_sync_reg_i_7: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => v_cntr_reg_reg(8),
      I1 => v_cntr_reg_reg(9),
      O => v_sync_reg_i_7_n_0
    );
v_sync_reg_i_8: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => v_cntr_reg_reg(10),
      I1 => v_cntr_reg_reg(11),
      O => v_sync_reg_i_8_n_0
    );
v_sync_reg_i_9: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => v_cntr_reg_reg(6),
      I1 => v_cntr_reg_reg(7),
      O => v_sync_reg_i_9_n_0
    );
v_sync_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pxl_clk,
      CE => '1',
      D => v_sync_reg0,
      Q => v_sync_reg,
      R => '0'
    );
v_sync_reg_reg_i_2: unisim.vcomponents.CARRY4
     port map (
      CI => v_sync_reg_reg_i_4_n_0,
      CO(3 downto 2) => NLW_v_sync_reg_reg_i_2_CO_UNCONNECTED(3 downto 2),
      CO(1) => geqOp,
      CO(0) => NLW_v_sync_reg_reg_i_2_CO_UNCONNECTED(0),
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => v_cntr_reg_reg(11),
      DI(0) => v_sync_reg_i_5_n_0,
      O(3 downto 0) => NLW_v_sync_reg_reg_i_2_O_UNCONNECTED(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => v_sync_reg_i_6_n_0,
      S(0) => v_sync_reg_i_7_n_0
    );
v_sync_reg_reg_i_3: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => NLW_v_sync_reg_reg_i_3_CO_UNCONNECTED(3),
      CO(2) => ltOp,
      CO(1 downto 0) => NLW_v_sync_reg_reg_i_3_CO_UNCONNECTED(1 downto 0),
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => v_sync_reg_i_8_n_0,
      DI(1) => '0',
      DI(0) => v_sync_reg_i_9_n_0,
      O(3 downto 0) => NLW_v_sync_reg_reg_i_3_O_UNCONNECTED(3 downto 0),
      S(3) => '0',
      S(2) => v_sync_reg_i_10_n_0,
      S(1) => v_sync_reg_i_11_n_0,
      S(0) => v_sync_reg_i_12_n_0
    );
v_sync_reg_reg_i_4: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => v_sync_reg_reg_i_4_n_0,
      CO(2 downto 0) => NLW_v_sync_reg_reg_i_4_CO_UNCONNECTED(2 downto 0),
      CYINIT => '1',
      DI(3) => v_sync_reg_i_13_n_0,
      DI(2) => '0',
      DI(1) => v_sync_reg_i_14_n_0,
      DI(0) => '0',
      O(3 downto 0) => NLW_v_sync_reg_reg_i_4_O_UNCONNECTED(3 downto 0),
      S(3) => v_sync_reg_i_15_n_0,
      S(2) => v_sync_reg_i_16_n_0,
      S(1) => v_sync_reg_i_17_n_0,
      S(0) => v_sync_reg_i_18_n_0
    );
\vga_red_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pxl_clk,
      CE => '1',
      D => '1',
      Q => VGA_R_OBUF(0),
      R => '0'
    );
\vga_red_reg_reg[2]_lopt_replica\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pxl_clk,
      CE => '1',
      D => '1',
      Q => \vga_red_reg_reg[2]_lopt_replica_1\,
      R => '0'
    );
end STRUCTURE;
