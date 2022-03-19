-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
-- Date        : Thu Mar 17 05:58:05 2022
-- Host        : DESKTOP-BN0IERJ running 64-bit major release  (build 9200)
-- Command     : write_vhdl -mode funcsim -nolib -force -file
--               D:/Code/ArtyA7/ArtyChip8/ArtyChip8.sim/sim_1/synth/func/xsim/top_func_synth.vhd
-- Design      : top
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35ticsg324-1L
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity PmodKYPD is
  port (
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    key_reg : out STD_LOGIC_VECTOR ( 3 downto 0 );
    clk_out1 : in STD_LOGIC;
    K_ROW_IBUF : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
end PmodKYPD;

architecture STRUCTURE of PmodKYPD is
  signal col_sel : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \col_sel[0]_i_1_n_0\ : STD_LOGIC;
  signal \col_sel[1]_i_1_n_0\ : STD_LOGIC;
  signal count : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \count[31]_i_10_n_0\ : STD_LOGIC;
  signal \count[31]_i_1_n_0\ : STD_LOGIC;
  signal \count[31]_i_3_n_0\ : STD_LOGIC;
  signal \count[31]_i_4_n_0\ : STD_LOGIC;
  signal \count[31]_i_5_n_0\ : STD_LOGIC;
  signal \count[31]_i_6_n_0\ : STD_LOGIC;
  signal \count[31]_i_7_n_0\ : STD_LOGIC;
  signal \count[31]_i_8_n_0\ : STD_LOGIC;
  signal \count[31]_i_9_n_0\ : STD_LOGIC;
  signal count_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \count_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \count_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \count_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \count_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \count_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \count_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \count_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \count_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \count_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \count_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \count_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \count_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \count_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \count_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \count_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \count_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \count_reg[28]_i_1_n_0\ : STD_LOGIC;
  signal \count_reg[28]_i_1_n_1\ : STD_LOGIC;
  signal \count_reg[28]_i_1_n_2\ : STD_LOGIC;
  signal \count_reg[28]_i_1_n_3\ : STD_LOGIC;
  signal \count_reg[31]_i_2_n_2\ : STD_LOGIC;
  signal \count_reg[31]_i_2_n_3\ : STD_LOGIC;
  signal \count_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \count_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \count_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \count_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \count_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \count_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \count_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \count_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal data0 : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal \key_num[0]_i_1_n_0\ : STD_LOGIC;
  signal \key_num[0]_i_3_n_0\ : STD_LOGIC;
  signal \key_num[0]_i_4_n_0\ : STD_LOGIC;
  signal \key_num[0]_i_5_n_0\ : STD_LOGIC;
  signal \key_num[1]_i_1_n_0\ : STD_LOGIC;
  signal \key_num[2]_i_1_n_0\ : STD_LOGIC;
  signal \key_num[2]_i_2_n_0\ : STD_LOGIC;
  signal \key_num[2]_i_4_n_0\ : STD_LOGIC;
  signal \key_num[2]_i_5_n_0\ : STD_LOGIC;
  signal \key_num[2]_i_6_n_0\ : STD_LOGIC;
  signal \key_num[2]_i_7_n_0\ : STD_LOGIC;
  signal \key_num[2]_i_8_n_0\ : STD_LOGIC;
  signal \key_num[3]_i_1_n_0\ : STD_LOGIC;
  signal \key_num[3]_i_2_n_0\ : STD_LOGIC;
  signal \key_num[3]_i_3_n_0\ : STD_LOGIC;
  signal \key_num[3]_i_5_n_0\ : STD_LOGIC;
  signal \^key_reg\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal p_0_in : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal p_2_in : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_count_reg[31]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_count_reg[31]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \Col[0]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \Col[1]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \Col[2]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \Col[3]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \col_sel[0]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \col_sel[1]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \count[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \count[31]_i_10\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \count[31]_i_3\ : label is "soft_lutpair1";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \count_reg[12]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \count_reg[16]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \count_reg[20]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \count_reg[24]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \count_reg[28]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \count_reg[31]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \count_reg[4]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \count_reg[8]_i_1\ : label is 35;
  attribute SOFT_HLUTNM of \key_num[0]_i_4\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \key_num[0]_i_5\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \key_num[2]_i_4\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \key_num[2]_i_5\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \key_num[2]_i_7\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \key_num[3]_i_3\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \key_num[3]_i_5\ : label is "soft_lutpair1";
begin
  key_reg(3 downto 0) <= \^key_reg\(3 downto 0);
\Col[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => col_sel(0),
      I1 => col_sel(1),
      O => p_0_in(0)
    );
\Col[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => col_sel(1),
      I1 => col_sel(0),
      O => p_0_in(1)
    );
\Col[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => col_sel(0),
      I1 => col_sel(1),
      O => p_0_in(2)
    );
\Col[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => col_sel(0),
      I1 => col_sel(1),
      O => p_0_in(3)
    );
\Col_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => '1',
      D => p_0_in(0),
      Q => Q(0),
      R => '0'
    );
\Col_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => '1',
      D => p_0_in(1),
      Q => Q(1),
      R => '0'
    );
\Col_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => '1',
      D => p_0_in(2),
      Q => Q(2),
      R => '0'
    );
\Col_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => '1',
      D => p_0_in(3),
      Q => Q(3),
      R => '0'
    );
\col_sel[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \count[31]_i_1_n_0\,
      I1 => col_sel(0),
      O => \col_sel[0]_i_1_n_0\
    );
\col_sel[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => col_sel(0),
      I1 => \count[31]_i_1_n_0\,
      I2 => col_sel(1),
      O => \col_sel[1]_i_1_n_0\
    );
\col_sel_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => '1',
      D => \col_sel[0]_i_1_n_0\,
      Q => col_sel(0),
      R => '0'
    );
\col_sel_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => '1',
      D => \col_sel[1]_i_1_n_0\,
      Q => col_sel(1),
      R => '0'
    );
\count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => count(0),
      O => count_0(0)
    );
\count[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000040"
    )
        port map (
      I0 => \count[31]_i_3_n_0\,
      I1 => count(3),
      I2 => count(2),
      I3 => count(6),
      I4 => count(5),
      I5 => \count[31]_i_4_n_0\,
      O => \count[31]_i_1_n_0\
    );
\count[31]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF7"
    )
        port map (
      I0 => count(1),
      I1 => count(0),
      I2 => count(7),
      I3 => count(4),
      O => \count[31]_i_10_n_0\
    );
\count[31]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => count(9),
      I1 => count(8),
      I2 => count(13),
      I3 => count(10),
      O => \count[31]_i_3_n_0\
    );
\count[31]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \count[31]_i_5_n_0\,
      I1 => \count[31]_i_6_n_0\,
      I2 => \count[31]_i_7_n_0\,
      I3 => \count[31]_i_8_n_0\,
      I4 => \count[31]_i_9_n_0\,
      I5 => \count[31]_i_10_n_0\,
      O => \count[31]_i_4_n_0\
    );
\count[31]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => count(25),
      I1 => count(24),
      I2 => count(27),
      I3 => count(26),
      O => \count[31]_i_5_n_0\
    );
\count[31]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => count(29),
      I1 => count(28),
      I2 => count(31),
      I3 => count(30),
      O => \count[31]_i_6_n_0\
    );
\count[31]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => count(17),
      I1 => count(16),
      I2 => count(19),
      I3 => count(18),
      O => \count[31]_i_7_n_0\
    );
\count[31]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => count(21),
      I1 => count(20),
      I2 => count(23),
      I3 => count(22),
      O => \count[31]_i_8_n_0\
    );
\count[31]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => count(12),
      I1 => count(11),
      I2 => count(15),
      I3 => count(14),
      O => \count[31]_i_9_n_0\
    );
\count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_out1,
      CE => '1',
      D => count_0(0),
      Q => count(0),
      R => '0'
    );
\count_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => '1',
      D => data0(10),
      Q => count(10),
      R => \count[31]_i_1_n_0\
    );
\count_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => '1',
      D => data0(11),
      Q => count(11),
      R => \count[31]_i_1_n_0\
    );
\count_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => '1',
      D => data0(12),
      Q => count(12),
      R => \count[31]_i_1_n_0\
    );
\count_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[8]_i_1_n_0\,
      CO(3) => \count_reg[12]_i_1_n_0\,
      CO(2) => \count_reg[12]_i_1_n_1\,
      CO(1) => \count_reg[12]_i_1_n_2\,
      CO(0) => \count_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(12 downto 9),
      S(3 downto 0) => count(12 downto 9)
    );
\count_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => '1',
      D => data0(13),
      Q => count(13),
      R => \count[31]_i_1_n_0\
    );
\count_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => '1',
      D => data0(14),
      Q => count(14),
      R => \count[31]_i_1_n_0\
    );
\count_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => '1',
      D => data0(15),
      Q => count(15),
      R => \count[31]_i_1_n_0\
    );
\count_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => '1',
      D => data0(16),
      Q => count(16),
      R => \count[31]_i_1_n_0\
    );
\count_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[12]_i_1_n_0\,
      CO(3) => \count_reg[16]_i_1_n_0\,
      CO(2) => \count_reg[16]_i_1_n_1\,
      CO(1) => \count_reg[16]_i_1_n_2\,
      CO(0) => \count_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(16 downto 13),
      S(3 downto 0) => count(16 downto 13)
    );
\count_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => '1',
      D => data0(17),
      Q => count(17),
      R => \count[31]_i_1_n_0\
    );
\count_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => '1',
      D => data0(18),
      Q => count(18),
      R => \count[31]_i_1_n_0\
    );
\count_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => '1',
      D => data0(19),
      Q => count(19),
      R => \count[31]_i_1_n_0\
    );
\count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => '1',
      D => data0(1),
      Q => count(1),
      R => \count[31]_i_1_n_0\
    );
\count_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => '1',
      D => data0(20),
      Q => count(20),
      R => \count[31]_i_1_n_0\
    );
\count_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[16]_i_1_n_0\,
      CO(3) => \count_reg[20]_i_1_n_0\,
      CO(2) => \count_reg[20]_i_1_n_1\,
      CO(1) => \count_reg[20]_i_1_n_2\,
      CO(0) => \count_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(20 downto 17),
      S(3 downto 0) => count(20 downto 17)
    );
\count_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => '1',
      D => data0(21),
      Q => count(21),
      R => \count[31]_i_1_n_0\
    );
\count_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => '1',
      D => data0(22),
      Q => count(22),
      R => \count[31]_i_1_n_0\
    );
\count_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => '1',
      D => data0(23),
      Q => count(23),
      R => \count[31]_i_1_n_0\
    );
\count_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => '1',
      D => data0(24),
      Q => count(24),
      R => \count[31]_i_1_n_0\
    );
\count_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[20]_i_1_n_0\,
      CO(3) => \count_reg[24]_i_1_n_0\,
      CO(2) => \count_reg[24]_i_1_n_1\,
      CO(1) => \count_reg[24]_i_1_n_2\,
      CO(0) => \count_reg[24]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(24 downto 21),
      S(3 downto 0) => count(24 downto 21)
    );
\count_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => '1',
      D => data0(25),
      Q => count(25),
      R => \count[31]_i_1_n_0\
    );
\count_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => '1',
      D => data0(26),
      Q => count(26),
      R => \count[31]_i_1_n_0\
    );
\count_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => '1',
      D => data0(27),
      Q => count(27),
      R => \count[31]_i_1_n_0\
    );
\count_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => '1',
      D => data0(28),
      Q => count(28),
      R => \count[31]_i_1_n_0\
    );
\count_reg[28]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[24]_i_1_n_0\,
      CO(3) => \count_reg[28]_i_1_n_0\,
      CO(2) => \count_reg[28]_i_1_n_1\,
      CO(1) => \count_reg[28]_i_1_n_2\,
      CO(0) => \count_reg[28]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(28 downto 25),
      S(3 downto 0) => count(28 downto 25)
    );
\count_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => '1',
      D => data0(29),
      Q => count(29),
      R => \count[31]_i_1_n_0\
    );
\count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => '1',
      D => data0(2),
      Q => count(2),
      R => \count[31]_i_1_n_0\
    );
\count_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => '1',
      D => data0(30),
      Q => count(30),
      R => \count[31]_i_1_n_0\
    );
\count_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => '1',
      D => data0(31),
      Q => count(31),
      R => \count[31]_i_1_n_0\
    );
\count_reg[31]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[28]_i_1_n_0\,
      CO(3 downto 2) => \NLW_count_reg[31]_i_2_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \count_reg[31]_i_2_n_2\,
      CO(0) => \count_reg[31]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_count_reg[31]_i_2_O_UNCONNECTED\(3),
      O(2 downto 0) => data0(31 downto 29),
      S(3) => '0',
      S(2 downto 0) => count(31 downto 29)
    );
\count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => '1',
      D => data0(3),
      Q => count(3),
      R => \count[31]_i_1_n_0\
    );
\count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => '1',
      D => data0(4),
      Q => count(4),
      R => \count[31]_i_1_n_0\
    );
\count_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \count_reg[4]_i_1_n_0\,
      CO(2) => \count_reg[4]_i_1_n_1\,
      CO(1) => \count_reg[4]_i_1_n_2\,
      CO(0) => \count_reg[4]_i_1_n_3\,
      CYINIT => count(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(4 downto 1),
      S(3 downto 0) => count(4 downto 1)
    );
\count_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => '1',
      D => data0(5),
      Q => count(5),
      R => \count[31]_i_1_n_0\
    );
\count_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => '1',
      D => data0(6),
      Q => count(6),
      R => \count[31]_i_1_n_0\
    );
\count_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => '1',
      D => data0(7),
      Q => count(7),
      R => \count[31]_i_1_n_0\
    );
\count_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => '1',
      D => data0(8),
      Q => count(8),
      R => \count[31]_i_1_n_0\
    );
\count_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[4]_i_1_n_0\,
      CO(3) => \count_reg[8]_i_1_n_0\,
      CO(2) => \count_reg[8]_i_1_n_1\,
      CO(1) => \count_reg[8]_i_1_n_2\,
      CO(0) => \count_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(8 downto 5),
      S(3 downto 0) => count(8 downto 5)
    );
\count_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => '1',
      D => data0(9),
      Q => count(9),
      R => \count[31]_i_1_n_0\
    );
\key_num[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFF000E0EEE000"
    )
        port map (
      I0 => \key_num[3]_i_2_n_0\,
      I1 => p_0_in(0),
      I2 => p_2_in(0),
      I3 => \key_num[0]_i_3_n_0\,
      I4 => \^key_reg\(0),
      I5 => \key_num[0]_i_4_n_0\,
      O => \key_num[0]_i_1_n_0\
    );
\key_num[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00C0C000FF3F7FFF"
    )
        port map (
      I0 => col_sel(1),
      I1 => K_ROW_IBUF(0),
      I2 => K_ROW_IBUF(2),
      I3 => K_ROW_IBUF(1),
      I4 => K_ROW_IBUF(3),
      I5 => col_sel(0),
      O => p_2_in(0)
    );
\key_num[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000E000F000E000E"
    )
        port map (
      I0 => \key_num[2]_i_5_n_0\,
      I1 => \key_num[0]_i_5_n_0\,
      I2 => \count[31]_i_4_n_0\,
      I3 => \key_num[2]_i_6_n_0\,
      I4 => \key_num[0]_i_4_n_0\,
      I5 => p_0_in(0),
      O => \key_num[0]_i_3_n_0\
    );
\key_num[0]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DFFF"
    )
        port map (
      I0 => K_ROW_IBUF(1),
      I1 => K_ROW_IBUF(3),
      I2 => K_ROW_IBUF(2),
      I3 => K_ROW_IBUF(0),
      O => \key_num[0]_i_4_n_0\
    );
\key_num[0]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => K_ROW_IBUF(2),
      I1 => K_ROW_IBUF(3),
      I2 => K_ROW_IBUF(1),
      I3 => K_ROW_IBUF(0),
      O => \key_num[0]_i_5_n_0\
    );
\key_num[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E2E2E2FFE2E2E2E2"
    )
        port map (
      I0 => \^key_reg\(1),
      I1 => \key_num[2]_i_2_n_0\,
      I2 => p_2_in(1),
      I3 => \key_num[3]_i_2_n_0\,
      I4 => p_0_in(0),
      I5 => \key_num[2]_i_4_n_0\,
      O => \key_num[1]_i_1_n_0\
    );
\key_num[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2D900FF00FF00FF0"
    )
        port map (
      I0 => K_ROW_IBUF(2),
      I1 => K_ROW_IBUF(1),
      I2 => col_sel(1),
      I3 => col_sel(0),
      I4 => K_ROW_IBUF(3),
      I5 => K_ROW_IBUF(0),
      O => p_2_in(1)
    );
\key_num[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E2E2E200E2E2E2E2"
    )
        port map (
      I0 => \^key_reg\(2),
      I1 => \key_num[2]_i_2_n_0\,
      I2 => p_2_in(2),
      I3 => \key_num[3]_i_2_n_0\,
      I4 => p_0_in(0),
      I5 => \key_num[2]_i_4_n_0\,
      O => \key_num[2]_i_1_n_0\
    );
\key_num[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0202020203020202"
    )
        port map (
      I0 => \key_num[2]_i_5_n_0\,
      I1 => \key_num[2]_i_6_n_0\,
      I2 => \count[31]_i_4_n_0\,
      I3 => p_0_in(0),
      I4 => \key_num[2]_i_7_n_0\,
      I5 => \key_num[2]_i_8_n_0\,
      O => \key_num[2]_i_2_n_0\
    );
\key_num[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2080F77FF77FFFFF"
    )
        port map (
      I0 => K_ROW_IBUF(0),
      I1 => K_ROW_IBUF(2),
      I2 => K_ROW_IBUF(3),
      I3 => K_ROW_IBUF(1),
      I4 => col_sel(1),
      I5 => col_sel(0),
      O => p_2_in(2)
    );
\key_num[2]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6000"
    )
        port map (
      I0 => K_ROW_IBUF(3),
      I1 => K_ROW_IBUF(2),
      I2 => K_ROW_IBUF(1),
      I3 => K_ROW_IBUF(0),
      O => \key_num[2]_i_4_n_0\
    );
\key_num[2]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0880"
    )
        port map (
      I0 => K_ROW_IBUF(3),
      I1 => K_ROW_IBUF(2),
      I2 => K_ROW_IBUF(1),
      I3 => K_ROW_IBUF(0),
      O => \key_num[2]_i_5_n_0\
    );
\key_num[2]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFF7"
    )
        port map (
      I0 => count(5),
      I1 => count(6),
      I2 => count(2),
      I3 => count(3),
      I4 => \key_num[3]_i_5_n_0\,
      O => \key_num[2]_i_6_n_0\
    );
\key_num[2]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => K_ROW_IBUF(2),
      I1 => K_ROW_IBUF(3),
      O => \key_num[2]_i_7_n_0\
    );
\key_num[2]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => K_ROW_IBUF(0),
      I1 => K_ROW_IBUF(1),
      O => \key_num[2]_i_8_n_0\
    );
\key_num[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BABABABA8A8A8ABA"
    )
        port map (
      I0 => \^key_reg\(3),
      I1 => \key_num[3]_i_2_n_0\,
      I2 => \key_num[3]_i_3_n_0\,
      I3 => col_sel(1),
      I4 => col_sel(0),
      I5 => p_2_in(3),
      O => \key_num[3]_i_1_n_0\
    );
\key_num[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFEFFFFFF"
    )
        port map (
      I0 => \key_num[3]_i_5_n_0\,
      I1 => count(3),
      I2 => count(2),
      I3 => count(6),
      I4 => count(5),
      I5 => \count[31]_i_4_n_0\,
      O => \key_num[3]_i_2_n_0\
    );
\key_num[3]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6880"
    )
        port map (
      I0 => K_ROW_IBUF(0),
      I1 => K_ROW_IBUF(1),
      I2 => K_ROW_IBUF(2),
      I3 => K_ROW_IBUF(3),
      O => \key_num[3]_i_3_n_0\
    );
\key_num[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"09900FF00FF00FF0"
    )
        port map (
      I0 => K_ROW_IBUF(3),
      I1 => K_ROW_IBUF(2),
      I2 => col_sel(0),
      I3 => col_sel(1),
      I4 => K_ROW_IBUF(0),
      I5 => K_ROW_IBUF(1),
      O => p_2_in(3)
    );
\key_num[3]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => count(9),
      I1 => count(8),
      I2 => count(13),
      I3 => count(10),
      O => \key_num[3]_i_5_n_0\
    );
\key_num_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => '1',
      D => \key_num[0]_i_1_n_0\,
      Q => \^key_reg\(0),
      R => '0'
    );
\key_num_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => '1',
      D => \key_num[1]_i_1_n_0\,
      Q => \^key_reg\(1),
      R => '0'
    );
\key_num_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => '1',
      D => \key_num[2]_i_1_n_0\,
      Q => \^key_reg\(2),
      R => '0'
    );
\key_num_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => '1',
      D => \key_num[3]_i_1_n_0\,
      Q => \^key_reg\(3),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity PmodVGA is
  port (
    VGA_HS_O : out STD_LOGIC;
    VGA_VS_O : out STD_LOGIC;
    VGA_R : out STD_LOGIC_VECTOR ( 3 downto 0 );
    clk_out1 : in STD_LOGIC;
    key_reg : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
end PmodVGA;

architecture STRUCTURE of PmodVGA is
  signal active : STD_LOGIC;
  signal eqOp2_in : STD_LOGIC;
  signal geqOp : STD_LOGIC;
  signal geqOp1_in : STD_LOGIC;
  signal \h_cntr_reg[0]_i_3_n_0\ : STD_LOGIC;
  signal \h_cntr_reg[0]_i_4_n_0\ : STD_LOGIC;
  signal \h_cntr_reg[0]_i_5_n_0\ : STD_LOGIC;
  signal h_cntr_reg_reg : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \h_cntr_reg_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \h_cntr_reg_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \h_cntr_reg_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \h_cntr_reg_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \h_cntr_reg_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \h_cntr_reg_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \h_cntr_reg_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \h_cntr_reg_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \h_cntr_reg_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \h_cntr_reg_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \h_cntr_reg_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \h_cntr_reg_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \h_cntr_reg_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \h_cntr_reg_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \h_cntr_reg_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \h_cntr_reg_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \h_cntr_reg_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \h_cntr_reg_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \h_cntr_reg_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \h_cntr_reg_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \h_cntr_reg_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \h_cntr_reg_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \h_cntr_reg_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \h_pxl[0]_i_1_n_0\ : STD_LOGIC;
  signal h_pxl_cntr0 : STD_LOGIC;
  signal \h_pxl_cntr[8]_i_4_n_0\ : STD_LOGIC;
  signal \h_pxl_cntr[8]_i_5_n_0\ : STD_LOGIC;
  signal h_pxl_cntr_reg : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal h_pxl_reg : STD_LOGIC_VECTOR ( 5 downto 0 );
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
  signal h_sync_reg_reg_i_2_n_3 : STD_LOGIC;
  signal h_sync_reg_reg_i_3_n_3 : STD_LOGIC;
  signal h_sync_reg_reg_i_4_n_0 : STD_LOGIC;
  signal h_sync_reg_reg_i_4_n_1 : STD_LOGIC;
  signal h_sync_reg_reg_i_4_n_2 : STD_LOGIC;
  signal h_sync_reg_reg_i_4_n_3 : STD_LOGIC;
  signal h_sync_reg_reg_i_7_n_0 : STD_LOGIC;
  signal h_sync_reg_reg_i_7_n_1 : STD_LOGIC;
  signal h_sync_reg_reg_i_7_n_2 : STD_LOGIC;
  signal h_sync_reg_reg_i_7_n_3 : STD_LOGIC;
  signal ltOp : STD_LOGIC;
  signal ltOp0_in : STD_LOGIC;
  signal ltOp5_in : STD_LOGIC;
  signal ltOp6_in : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal plusOp : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \plusOp__0\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \plusOp__1\ : STD_LOGIC_VECTOR ( 5 downto 1 );
  signal \plusOp__2\ : STD_LOGIC_VECTOR ( 4 downto 1 );
  signal v_cntr_reg0 : STD_LOGIC;
  signal \v_cntr_reg[0]_i_3_n_0\ : STD_LOGIC;
  signal \v_cntr_reg[0]_i_4_n_0\ : STD_LOGIC;
  signal \v_cntr_reg[0]_i_5_n_0\ : STD_LOGIC;
  signal \v_cntr_reg[0]_i_6_n_0\ : STD_LOGIC;
  signal \v_cntr_reg[0]_i_7_n_0\ : STD_LOGIC;
  signal v_cntr_reg_reg : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \v_cntr_reg_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \v_cntr_reg_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \v_cntr_reg_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \v_cntr_reg_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \v_cntr_reg_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \v_cntr_reg_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \v_cntr_reg_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \v_cntr_reg_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \v_cntr_reg_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \v_cntr_reg_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \v_cntr_reg_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \v_cntr_reg_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \v_cntr_reg_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \v_cntr_reg_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \v_cntr_reg_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \v_cntr_reg_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \v_cntr_reg_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \v_cntr_reg_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \v_cntr_reg_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \v_cntr_reg_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \v_cntr_reg_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \v_cntr_reg_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \v_cntr_reg_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \v_pxl[0]_i_1_n_0\ : STD_LOGIC;
  signal v_pxl_cntr : STD_LOGIC;
  signal \v_pxl_cntr[8]_i_2_n_0\ : STD_LOGIC;
  signal \v_pxl_cntr[8]_i_4_n_0\ : STD_LOGIC;
  signal \v_pxl_cntr[8]_i_5_n_0\ : STD_LOGIC;
  signal \v_pxl_cntr[8]_i_6_n_0\ : STD_LOGIC;
  signal v_pxl_cntr_reg : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal v_pxl_reg : STD_LOGIC_VECTOR ( 4 downto 0 );
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
  signal v_sync_reg_reg_i_2_n_3 : STD_LOGIC;
  signal v_sync_reg_reg_i_3_n_2 : STD_LOGIC;
  signal v_sync_reg_reg_i_3_n_3 : STD_LOGIC;
  signal v_sync_reg_reg_i_4_n_0 : STD_LOGIC;
  signal v_sync_reg_reg_i_4_n_1 : STD_LOGIC;
  signal v_sync_reg_reg_i_4_n_2 : STD_LOGIC;
  signal v_sync_reg_reg_i_4_n_3 : STD_LOGIC;
  signal \vga_red_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \vga_red_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \vga_red_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \vga_red_reg[3]_i_10_n_0\ : STD_LOGIC;
  signal \vga_red_reg[3]_i_11_n_0\ : STD_LOGIC;
  signal \vga_red_reg[3]_i_13_n_0\ : STD_LOGIC;
  signal \vga_red_reg[3]_i_14_n_0\ : STD_LOGIC;
  signal \vga_red_reg[3]_i_15_n_0\ : STD_LOGIC;
  signal \vga_red_reg[3]_i_16_n_0\ : STD_LOGIC;
  signal \vga_red_reg[3]_i_17_n_0\ : STD_LOGIC;
  signal \vga_red_reg[3]_i_18_n_0\ : STD_LOGIC;
  signal \vga_red_reg[3]_i_19_n_0\ : STD_LOGIC;
  signal \vga_red_reg[3]_i_20_n_0\ : STD_LOGIC;
  signal \vga_red_reg[3]_i_21_n_0\ : STD_LOGIC;
  signal \vga_red_reg[3]_i_2_n_0\ : STD_LOGIC;
  signal \vga_red_reg[3]_i_5_n_0\ : STD_LOGIC;
  signal \vga_red_reg[3]_i_6_n_0\ : STD_LOGIC;
  signal \vga_red_reg[3]_i_7_n_0\ : STD_LOGIC;
  signal \vga_red_reg[3]_i_8_n_0\ : STD_LOGIC;
  signal \vga_red_reg[3]_i_9_n_0\ : STD_LOGIC;
  signal \vga_red_reg_reg[3]_i_12_n_0\ : STD_LOGIC;
  signal \vga_red_reg_reg[3]_i_12_n_1\ : STD_LOGIC;
  signal \vga_red_reg_reg[3]_i_12_n_2\ : STD_LOGIC;
  signal \vga_red_reg_reg[3]_i_12_n_3\ : STD_LOGIC;
  signal \vga_red_reg_reg[3]_i_3_n_2\ : STD_LOGIC;
  signal \vga_red_reg_reg[3]_i_3_n_3\ : STD_LOGIC;
  signal \NLW_h_cntr_reg_reg[8]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_h_sync_reg_reg_i_2_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal NLW_h_sync_reg_reg_i_2_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_h_sync_reg_reg_i_3_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal NLW_h_sync_reg_reg_i_3_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_h_sync_reg_reg_i_4_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_h_sync_reg_reg_i_7_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_v_cntr_reg_reg[8]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_v_sync_reg_reg_i_2_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal NLW_v_sync_reg_reg_i_2_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_v_sync_reg_reg_i_3_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_v_sync_reg_reg_i_3_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_v_sync_reg_reg_i_4_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_vga_red_reg_reg[3]_i_12_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_vga_red_reg_reg[3]_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_vga_red_reg_reg[3]_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_vga_red_reg_reg[3]_i_4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_vga_red_reg_reg[3]_i_4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \h_cntr_reg_reg[0]_i_2\ : label is 11;
  attribute ADDER_THRESHOLD of \h_cntr_reg_reg[4]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \h_cntr_reg_reg[8]_i_1\ : label is 11;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \h_pxl[1]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \h_pxl[2]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \h_pxl[3]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \h_pxl[4]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \h_pxl_cntr[1]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \h_pxl_cntr[2]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \h_pxl_cntr[3]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \h_pxl_cntr[4]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \h_pxl_cntr[7]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \h_pxl_cntr[8]_i_3\ : label is "soft_lutpair12";
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of h_sync_reg_reg_i_2 : label is 11;
  attribute COMPARATOR_THRESHOLD of h_sync_reg_reg_i_3 : label is 11;
  attribute COMPARATOR_THRESHOLD of h_sync_reg_reg_i_4 : label is 11;
  attribute COMPARATOR_THRESHOLD of h_sync_reg_reg_i_7 : label is 11;
  attribute ADDER_THRESHOLD of \v_cntr_reg_reg[0]_i_2\ : label is 11;
  attribute ADDER_THRESHOLD of \v_cntr_reg_reg[4]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \v_cntr_reg_reg[8]_i_1\ : label is 11;
  attribute SOFT_HLUTNM of \v_pxl[1]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \v_pxl[2]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \v_pxl[3]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \v_pxl[4]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \v_pxl_cntr[0]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \v_pxl_cntr[1]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \v_pxl_cntr[2]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \v_pxl_cntr[3]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \v_pxl_cntr[4]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \v_pxl_cntr[7]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \v_pxl_cntr[8]_i_3\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \v_pxl_cntr[8]_i_4\ : label is "soft_lutpair9";
  attribute COMPARATOR_THRESHOLD of v_sync_reg_reg_i_2 : label is 11;
  attribute COMPARATOR_THRESHOLD of v_sync_reg_reg_i_3 : label is 11;
  attribute COMPARATOR_THRESHOLD of v_sync_reg_reg_i_4 : label is 11;
  attribute COMPARATOR_THRESHOLD of \vga_red_reg_reg[3]_i_12\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \vga_red_reg_reg[3]_i_3\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \vga_red_reg_reg[3]_i_4\ : label is 11;
begin
\h_cntr_reg[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0020000000000000"
    )
        port map (
      I0 => \h_cntr_reg[0]_i_3_n_0\,
      I1 => h_cntr_reg_reg(6),
      I2 => h_cntr_reg_reg(7),
      I3 => h_cntr_reg_reg(5),
      I4 => h_cntr_reg_reg(4),
      I5 => \h_cntr_reg[0]_i_4_n_0\,
      O => eqOp2_in
    );
\h_cntr_reg[0]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => h_cntr_reg_reg(10),
      I1 => h_cntr_reg_reg(11),
      I2 => h_cntr_reg_reg(9),
      I3 => h_cntr_reg_reg(8),
      O => \h_cntr_reg[0]_i_3_n_0\
    );
\h_cntr_reg[0]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => h_cntr_reg_reg(3),
      I1 => h_cntr_reg_reg(2),
      I2 => h_cntr_reg_reg(1),
      I3 => h_cntr_reg_reg(0),
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
      C => clk_out1,
      CE => '1',
      D => \h_cntr_reg_reg[0]_i_2_n_7\,
      Q => h_cntr_reg_reg(0),
      R => eqOp2_in
    );
\h_cntr_reg_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \h_cntr_reg_reg[0]_i_2_n_0\,
      CO(2) => \h_cntr_reg_reg[0]_i_2_n_1\,
      CO(1) => \h_cntr_reg_reg[0]_i_2_n_2\,
      CO(0) => \h_cntr_reg_reg[0]_i_2_n_3\,
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
      C => clk_out1,
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
      C => clk_out1,
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
      C => clk_out1,
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
      C => clk_out1,
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
      C => clk_out1,
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
      C => clk_out1,
      CE => '1',
      D => \h_cntr_reg_reg[4]_i_1_n_7\,
      Q => h_cntr_reg_reg(4),
      R => eqOp2_in
    );
\h_cntr_reg_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \h_cntr_reg_reg[0]_i_2_n_0\,
      CO(3) => \h_cntr_reg_reg[4]_i_1_n_0\,
      CO(2) => \h_cntr_reg_reg[4]_i_1_n_1\,
      CO(1) => \h_cntr_reg_reg[4]_i_1_n_2\,
      CO(0) => \h_cntr_reg_reg[4]_i_1_n_3\,
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
      C => clk_out1,
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
      C => clk_out1,
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
      C => clk_out1,
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
      C => clk_out1,
      CE => '1',
      D => \h_cntr_reg_reg[8]_i_1_n_7\,
      Q => h_cntr_reg_reg(8),
      R => eqOp2_in
    );
\h_cntr_reg_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \h_cntr_reg_reg[4]_i_1_n_0\,
      CO(3) => \NLW_h_cntr_reg_reg[8]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \h_cntr_reg_reg[8]_i_1_n_1\,
      CO(1) => \h_cntr_reg_reg[8]_i_1_n_2\,
      CO(0) => \h_cntr_reg_reg[8]_i_1_n_3\,
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
      C => clk_out1,
      CE => '1',
      D => \h_cntr_reg_reg[8]_i_1_n_6\,
      Q => h_cntr_reg_reg(9),
      R => eqOp2_in
    );
\h_pxl[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => h_pxl_reg(0),
      O => \h_pxl[0]_i_1_n_0\
    );
\h_pxl[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => h_pxl_reg(0),
      I1 => h_pxl_reg(1),
      O => \plusOp__1\(1)
    );
\h_pxl[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => h_pxl_reg(1),
      I1 => h_pxl_reg(0),
      I2 => h_pxl_reg(2),
      O => \plusOp__1\(2)
    );
\h_pxl[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => h_pxl_reg(2),
      I1 => h_pxl_reg(0),
      I2 => h_pxl_reg(1),
      I3 => h_pxl_reg(3),
      O => \plusOp__1\(3)
    );
\h_pxl[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => h_pxl_reg(3),
      I1 => h_pxl_reg(1),
      I2 => h_pxl_reg(0),
      I3 => h_pxl_reg(2),
      I4 => h_pxl_reg(4),
      O => \plusOp__1\(4)
    );
\h_pxl[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => h_pxl_reg(4),
      I1 => h_pxl_reg(2),
      I2 => h_pxl_reg(0),
      I3 => h_pxl_reg(1),
      I4 => h_pxl_reg(3),
      I5 => h_pxl_reg(5),
      O => \plusOp__1\(5)
    );
\h_pxl_cntr[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => h_pxl_cntr_reg(0),
      O => plusOp(0)
    );
\h_pxl_cntr[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => h_pxl_cntr_reg(0),
      I1 => h_pxl_cntr_reg(1),
      O => plusOp(1)
    );
\h_pxl_cntr[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => h_pxl_cntr_reg(1),
      I1 => h_pxl_cntr_reg(0),
      I2 => h_pxl_cntr_reg(2),
      O => plusOp(2)
    );
\h_pxl_cntr[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => h_pxl_cntr_reg(2),
      I1 => h_pxl_cntr_reg(0),
      I2 => h_pxl_cntr_reg(1),
      I3 => h_pxl_cntr_reg(3),
      O => plusOp(3)
    );
\h_pxl_cntr[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => h_pxl_cntr_reg(3),
      I1 => h_pxl_cntr_reg(1),
      I2 => h_pxl_cntr_reg(0),
      I3 => h_pxl_cntr_reg(2),
      I4 => h_pxl_cntr_reg(4),
      O => plusOp(4)
    );
\h_pxl_cntr[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => h_pxl_cntr_reg(4),
      I1 => h_pxl_cntr_reg(2),
      I2 => h_pxl_cntr_reg(0),
      I3 => h_pxl_cntr_reg(1),
      I4 => h_pxl_cntr_reg(3),
      I5 => h_pxl_cntr_reg(5),
      O => plusOp(5)
    );
\h_pxl_cntr[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \h_pxl_cntr[8]_i_5_n_0\,
      I1 => h_pxl_cntr_reg(6),
      O => plusOp(6)
    );
\h_pxl_cntr[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D2"
    )
        port map (
      I0 => h_pxl_cntr_reg(6),
      I1 => \h_pxl_cntr[8]_i_5_n_0\,
      I2 => h_pxl_cntr_reg(7),
      O => plusOp(7)
    );
\h_pxl_cntr[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800000000000000"
    )
        port map (
      I0 => ltOp6_in,
      I1 => ltOp5_in,
      I2 => h_pxl_cntr_reg(1),
      I3 => h_pxl_cntr_reg(2),
      I4 => h_pxl_cntr_reg(0),
      I5 => \h_pxl_cntr[8]_i_4_n_0\,
      O => h_pxl_cntr0
    );
\h_pxl_cntr[8]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ltOp5_in,
      I1 => ltOp6_in,
      O => active
    );
\h_pxl_cntr[8]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DF20"
    )
        port map (
      I0 => h_pxl_cntr_reg(7),
      I1 => \h_pxl_cntr[8]_i_5_n_0\,
      I2 => h_pxl_cntr_reg(6),
      I3 => h_pxl_cntr_reg(8),
      O => plusOp(8)
    );
\h_pxl_cntr[8]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000001000"
    )
        port map (
      I0 => h_pxl_cntr_reg(5),
      I1 => h_pxl_cntr_reg(6),
      I2 => h_pxl_cntr_reg(3),
      I3 => h_pxl_cntr_reg(4),
      I4 => h_pxl_cntr_reg(8),
      I5 => h_pxl_cntr_reg(7),
      O => \h_pxl_cntr[8]_i_4_n_0\
    );
\h_pxl_cntr[8]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => h_pxl_cntr_reg(4),
      I1 => h_pxl_cntr_reg(2),
      I2 => h_pxl_cntr_reg(0),
      I3 => h_pxl_cntr_reg(1),
      I4 => h_pxl_cntr_reg(3),
      I5 => h_pxl_cntr_reg(5),
      O => \h_pxl_cntr[8]_i_5_n_0\
    );
\h_pxl_cntr_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => active,
      D => plusOp(0),
      Q => h_pxl_cntr_reg(0),
      R => h_pxl_cntr0
    );
\h_pxl_cntr_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => active,
      D => plusOp(1),
      Q => h_pxl_cntr_reg(1),
      R => h_pxl_cntr0
    );
\h_pxl_cntr_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => active,
      D => plusOp(2),
      Q => h_pxl_cntr_reg(2),
      R => h_pxl_cntr0
    );
\h_pxl_cntr_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => active,
      D => plusOp(3),
      Q => h_pxl_cntr_reg(3),
      R => h_pxl_cntr0
    );
\h_pxl_cntr_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => active,
      D => plusOp(4),
      Q => h_pxl_cntr_reg(4),
      R => h_pxl_cntr0
    );
\h_pxl_cntr_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => active,
      D => plusOp(5),
      Q => h_pxl_cntr_reg(5),
      R => h_pxl_cntr0
    );
\h_pxl_cntr_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => active,
      D => plusOp(6),
      Q => h_pxl_cntr_reg(6),
      R => h_pxl_cntr0
    );
\h_pxl_cntr_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => active,
      D => plusOp(7),
      Q => h_pxl_cntr_reg(7),
      R => h_pxl_cntr0
    );
\h_pxl_cntr_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => active,
      D => plusOp(8),
      Q => h_pxl_cntr_reg(8),
      R => h_pxl_cntr0
    );
\h_pxl_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => h_pxl_cntr0,
      D => \h_pxl[0]_i_1_n_0\,
      Q => h_pxl_reg(0),
      R => '0'
    );
\h_pxl_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => h_pxl_cntr0,
      D => \plusOp__1\(1),
      Q => h_pxl_reg(1),
      R => '0'
    );
\h_pxl_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => h_pxl_cntr0,
      D => \plusOp__1\(2),
      Q => h_pxl_reg(2),
      R => '0'
    );
\h_pxl_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => h_pxl_cntr0,
      D => \plusOp__1\(3),
      Q => h_pxl_reg(3),
      R => '0'
    );
\h_pxl_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => h_pxl_cntr0,
      D => \plusOp__1\(4),
      Q => h_pxl_reg(4),
      R => '0'
    );
\h_pxl_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => h_pxl_cntr0,
      D => \plusOp__1\(5),
      Q => h_pxl_reg(5),
      R => '0'
    );
h_sync_dly_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => '1',
      D => h_sync_reg,
      Q => VGA_HS_O,
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
      I0 => h_cntr_reg_reg(1),
      I1 => h_cntr_reg_reg(0),
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
      I0 => h_cntr_reg_reg(1),
      I1 => h_cntr_reg_reg(0),
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
      C => clk_out1,
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
      CO(0) => h_sync_reg_reg_i_2_n_3,
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
      CO(0) => h_sync_reg_reg_i_3_n_3,
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
      CO(2) => h_sync_reg_reg_i_4_n_1,
      CO(1) => h_sync_reg_reg_i_4_n_2,
      CO(0) => h_sync_reg_reg_i_4_n_3,
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
      CO(2) => h_sync_reg_reg_i_7_n_1,
      CO(1) => h_sync_reg_reg_i_7_n_2,
      CO(0) => h_sync_reg_reg_i_7_n_3,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => h_sync_reg_i_15_n_0,
      O(3 downto 0) => NLW_h_sync_reg_reg_i_7_O_UNCONNECTED(3 downto 0),
      S(3) => h_sync_reg_i_16_n_0,
      S(2) => h_sync_reg_i_17_n_0,
      S(1) => h_sync_reg_i_18_n_0,
      S(0) => h_sync_reg_i_19_n_0
    );
\v_cntr_reg[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => eqOp2_in,
      I1 => \v_cntr_reg[0]_i_3_n_0\,
      O => v_cntr_reg0
    );
\v_cntr_reg[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFEF"
    )
        port map (
      I0 => \v_cntr_reg[0]_i_5_n_0\,
      I1 => v_cntr_reg_reg(3),
      I2 => v_cntr_reg_reg(2),
      I3 => v_cntr_reg_reg(0),
      I4 => v_cntr_reg_reg(1),
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
\v_cntr_reg[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFBFF"
    )
        port map (
      I0 => v_cntr_reg_reg(7),
      I1 => v_cntr_reg_reg(6),
      I2 => v_cntr_reg_reg(4),
      I3 => v_cntr_reg_reg(5),
      I4 => \v_cntr_reg[0]_i_6_n_0\,
      I5 => \v_cntr_reg[0]_i_7_n_0\,
      O => \v_cntr_reg[0]_i_5_n_0\
    );
\v_cntr_reg[0]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => v_cntr_reg_reg(8),
      I1 => v_cntr_reg_reg(9),
      O => \v_cntr_reg[0]_i_6_n_0\
    );
\v_cntr_reg[0]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => v_cntr_reg_reg(11),
      I1 => v_cntr_reg_reg(10),
      O => \v_cntr_reg[0]_i_7_n_0\
    );
\v_cntr_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => eqOp2_in,
      D => \v_cntr_reg_reg[0]_i_2_n_7\,
      Q => v_cntr_reg_reg(0),
      R => v_cntr_reg0
    );
\v_cntr_reg_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \v_cntr_reg_reg[0]_i_2_n_0\,
      CO(2) => \v_cntr_reg_reg[0]_i_2_n_1\,
      CO(1) => \v_cntr_reg_reg[0]_i_2_n_2\,
      CO(0) => \v_cntr_reg_reg[0]_i_2_n_3\,
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
      C => clk_out1,
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
      C => clk_out1,
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
      C => clk_out1,
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
      C => clk_out1,
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
      C => clk_out1,
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
      C => clk_out1,
      CE => eqOp2_in,
      D => \v_cntr_reg_reg[4]_i_1_n_7\,
      Q => v_cntr_reg_reg(4),
      R => v_cntr_reg0
    );
\v_cntr_reg_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \v_cntr_reg_reg[0]_i_2_n_0\,
      CO(3) => \v_cntr_reg_reg[4]_i_1_n_0\,
      CO(2) => \v_cntr_reg_reg[4]_i_1_n_1\,
      CO(1) => \v_cntr_reg_reg[4]_i_1_n_2\,
      CO(0) => \v_cntr_reg_reg[4]_i_1_n_3\,
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
      C => clk_out1,
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
      C => clk_out1,
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
      C => clk_out1,
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
      C => clk_out1,
      CE => eqOp2_in,
      D => \v_cntr_reg_reg[8]_i_1_n_7\,
      Q => v_cntr_reg_reg(8),
      R => v_cntr_reg0
    );
\v_cntr_reg_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \v_cntr_reg_reg[4]_i_1_n_0\,
      CO(3) => \NLW_v_cntr_reg_reg[8]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \v_cntr_reg_reg[8]_i_1_n_1\,
      CO(1) => \v_cntr_reg_reg[8]_i_1_n_2\,
      CO(0) => \v_cntr_reg_reg[8]_i_1_n_3\,
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
      C => clk_out1,
      CE => eqOp2_in,
      D => \v_cntr_reg_reg[8]_i_1_n_6\,
      Q => v_cntr_reg_reg(9),
      R => v_cntr_reg0
    );
\v_pxl[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => v_pxl_reg(0),
      O => \v_pxl[0]_i_1_n_0\
    );
\v_pxl[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => v_pxl_reg(0),
      I1 => v_pxl_reg(1),
      O => \plusOp__2\(1)
    );
\v_pxl[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => v_pxl_reg(1),
      I1 => v_pxl_reg(0),
      I2 => v_pxl_reg(2),
      O => \plusOp__2\(2)
    );
\v_pxl[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => v_pxl_reg(2),
      I1 => v_pxl_reg(0),
      I2 => v_pxl_reg(1),
      I3 => v_pxl_reg(3),
      O => \plusOp__2\(3)
    );
\v_pxl[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => v_pxl_reg(3),
      I1 => v_pxl_reg(1),
      I2 => v_pxl_reg(0),
      I3 => v_pxl_reg(2),
      I4 => v_pxl_reg(4),
      O => \plusOp__2\(4)
    );
\v_pxl_cntr[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => v_pxl_cntr_reg(0),
      O => \plusOp__0\(0)
    );
\v_pxl_cntr[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => v_pxl_cntr_reg(0),
      I1 => v_pxl_cntr_reg(1),
      O => \plusOp__0\(1)
    );
\v_pxl_cntr[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => v_pxl_cntr_reg(1),
      I1 => v_pxl_cntr_reg(0),
      I2 => v_pxl_cntr_reg(2),
      O => \plusOp__0\(2)
    );
\v_pxl_cntr[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => v_pxl_cntr_reg(2),
      I1 => v_pxl_cntr_reg(0),
      I2 => v_pxl_cntr_reg(1),
      I3 => v_pxl_cntr_reg(3),
      O => \plusOp__0\(3)
    );
\v_pxl_cntr[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => v_pxl_cntr_reg(3),
      I1 => v_pxl_cntr_reg(1),
      I2 => v_pxl_cntr_reg(0),
      I3 => v_pxl_cntr_reg(2),
      I4 => v_pxl_cntr_reg(4),
      O => \plusOp__0\(4)
    );
\v_pxl_cntr[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => v_pxl_cntr_reg(4),
      I1 => v_pxl_cntr_reg(2),
      I2 => v_pxl_cntr_reg(0),
      I3 => v_pxl_cntr_reg(1),
      I4 => v_pxl_cntr_reg(3),
      I5 => v_pxl_cntr_reg(5),
      O => \plusOp__0\(5)
    );
\v_pxl_cntr[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \v_pxl_cntr[8]_i_6_n_0\,
      I1 => v_pxl_cntr_reg(6),
      O => \plusOp__0\(6)
    );
\v_pxl_cntr[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D2"
    )
        port map (
      I0 => v_pxl_cntr_reg(6),
      I1 => \v_pxl_cntr[8]_i_6_n_0\,
      I2 => v_pxl_cntr_reg(7),
      O => \plusOp__0\(7)
    );
\v_pxl_cntr[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => eqOp2_in,
      I1 => \v_pxl_cntr[8]_i_4_n_0\,
      I2 => \v_cntr_reg[0]_i_3_n_0\,
      I3 => \v_pxl_cntr[8]_i_5_n_0\,
      O => v_pxl_cntr
    );
\v_pxl_cntr[8]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => ltOp,
      I1 => \v_cntr_reg[0]_i_3_n_0\,
      I2 => eqOp2_in,
      O => \v_pxl_cntr[8]_i_2_n_0\
    );
\v_pxl_cntr[8]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DF20"
    )
        port map (
      I0 => v_pxl_cntr_reg(7),
      I1 => \v_pxl_cntr[8]_i_6_n_0\,
      I2 => v_pxl_cntr_reg(6),
      I3 => v_pxl_cntr_reg(8),
      O => \plusOp__0\(8)
    );
\v_pxl_cntr[8]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => v_pxl_cntr_reg(1),
      I1 => v_pxl_cntr_reg(0),
      I2 => v_pxl_cntr_reg(3),
      I3 => v_pxl_cntr_reg(2),
      O => \v_pxl_cntr[8]_i_4_n_0\
    );
\v_pxl_cntr[8]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000001000000000"
    )
        port map (
      I0 => v_pxl_cntr_reg(6),
      I1 => v_pxl_cntr_reg(7),
      I2 => v_pxl_cntr_reg(5),
      I3 => v_pxl_cntr_reg(4),
      I4 => v_pxl_cntr_reg(8),
      I5 => ltOp,
      O => \v_pxl_cntr[8]_i_5_n_0\
    );
\v_pxl_cntr[8]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => v_pxl_cntr_reg(4),
      I1 => v_pxl_cntr_reg(2),
      I2 => v_pxl_cntr_reg(0),
      I3 => v_pxl_cntr_reg(1),
      I4 => v_pxl_cntr_reg(3),
      I5 => v_pxl_cntr_reg(5),
      O => \v_pxl_cntr[8]_i_6_n_0\
    );
\v_pxl_cntr_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => \v_pxl_cntr[8]_i_2_n_0\,
      D => \plusOp__0\(0),
      Q => v_pxl_cntr_reg(0),
      R => v_pxl_cntr
    );
\v_pxl_cntr_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => \v_pxl_cntr[8]_i_2_n_0\,
      D => \plusOp__0\(1),
      Q => v_pxl_cntr_reg(1),
      R => v_pxl_cntr
    );
\v_pxl_cntr_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => \v_pxl_cntr[8]_i_2_n_0\,
      D => \plusOp__0\(2),
      Q => v_pxl_cntr_reg(2),
      R => v_pxl_cntr
    );
\v_pxl_cntr_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => \v_pxl_cntr[8]_i_2_n_0\,
      D => \plusOp__0\(3),
      Q => v_pxl_cntr_reg(3),
      R => v_pxl_cntr
    );
\v_pxl_cntr_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => \v_pxl_cntr[8]_i_2_n_0\,
      D => \plusOp__0\(4),
      Q => v_pxl_cntr_reg(4),
      R => v_pxl_cntr
    );
\v_pxl_cntr_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => \v_pxl_cntr[8]_i_2_n_0\,
      D => \plusOp__0\(5),
      Q => v_pxl_cntr_reg(5),
      R => v_pxl_cntr
    );
\v_pxl_cntr_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => \v_pxl_cntr[8]_i_2_n_0\,
      D => \plusOp__0\(6),
      Q => v_pxl_cntr_reg(6),
      R => v_pxl_cntr
    );
\v_pxl_cntr_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => \v_pxl_cntr[8]_i_2_n_0\,
      D => \plusOp__0\(7),
      Q => v_pxl_cntr_reg(7),
      R => v_pxl_cntr
    );
\v_pxl_cntr_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => \v_pxl_cntr[8]_i_2_n_0\,
      D => \plusOp__0\(8),
      Q => v_pxl_cntr_reg(8),
      R => v_pxl_cntr
    );
\v_pxl_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => v_pxl_cntr,
      D => \v_pxl[0]_i_1_n_0\,
      Q => v_pxl_reg(0),
      R => '0'
    );
\v_pxl_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => v_pxl_cntr,
      D => \plusOp__2\(1),
      Q => v_pxl_reg(1),
      R => '0'
    );
\v_pxl_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => v_pxl_cntr,
      D => \plusOp__2\(2),
      Q => v_pxl_reg(2),
      R => '0'
    );
\v_pxl_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => v_pxl_cntr,
      D => \plusOp__2\(3),
      Q => v_pxl_reg(3),
      R => '0'
    );
\v_pxl_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => v_pxl_cntr,
      D => \plusOp__2\(4),
      Q => v_pxl_reg(4),
      R => '0'
    );
v_sync_dly_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => '1',
      D => v_sync_reg,
      Q => VGA_VS_O,
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
      I0 => v_cntr_reg_reg(9),
      I1 => v_cntr_reg_reg(8),
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
      I0 => v_cntr_reg_reg(9),
      I1 => v_cntr_reg_reg(8),
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
      C => clk_out1,
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
      CO(0) => v_sync_reg_reg_i_2_n_3,
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
      CO(1) => v_sync_reg_reg_i_3_n_2,
      CO(0) => v_sync_reg_reg_i_3_n_3,
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
      CO(2) => v_sync_reg_reg_i_4_n_1,
      CO(1) => v_sync_reg_reg_i_4_n_2,
      CO(0) => v_sync_reg_reg_i_4_n_3,
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
\vga_red_reg[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00100000"
    )
        port map (
      I0 => h_pxl_reg(0),
      I1 => h_pxl_reg(1),
      I2 => key_reg(0),
      I3 => v_pxl_reg(0),
      I4 => \vga_red_reg[3]_i_5_n_0\,
      O => \vga_red_reg[0]_i_1_n_0\
    );
\vga_red_reg[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00100000"
    )
        port map (
      I0 => h_pxl_reg(0),
      I1 => h_pxl_reg(1),
      I2 => key_reg(1),
      I3 => v_pxl_reg(0),
      I4 => \vga_red_reg[3]_i_5_n_0\,
      O => \vga_red_reg[1]_i_1_n_0\
    );
\vga_red_reg[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00100000"
    )
        port map (
      I0 => h_pxl_reg(0),
      I1 => h_pxl_reg(1),
      I2 => key_reg(2),
      I3 => v_pxl_reg(0),
      I4 => \vga_red_reg[3]_i_5_n_0\,
      O => \vga_red_reg[2]_i_1_n_0\
    );
\vga_red_reg[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => ltOp6_in,
      I1 => ltOp5_in,
      O => p_0_in
    );
\vga_red_reg[3]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => h_cntr_reg_reg(8),
      I1 => h_cntr_reg_reg(9),
      O => \vga_red_reg[3]_i_10_n_0\
    );
\vga_red_reg[3]_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => h_cntr_reg_reg(7),
      I1 => h_cntr_reg_reg(6),
      O => \vga_red_reg[3]_i_11_n_0\
    );
\vga_red_reg[3]_i_13\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => v_cntr_reg_reg(10),
      I1 => v_cntr_reg_reg(11),
      O => \vga_red_reg[3]_i_13_n_0\
    );
\vga_red_reg[3]_i_14\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => v_cntr_reg_reg(10),
      I1 => v_cntr_reg_reg(11),
      O => \vga_red_reg[3]_i_14_n_0\
    );
\vga_red_reg[3]_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => h_pxl_reg(5),
      I1 => h_pxl_reg(4),
      I2 => h_pxl_reg(3),
      I3 => h_pxl_reg(2),
      O => \vga_red_reg[3]_i_15_n_0\
    );
\vga_red_reg[3]_i_16\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => v_cntr_reg_reg(4),
      I1 => v_cntr_reg_reg(5),
      O => \vga_red_reg[3]_i_16_n_0\
    );
\vga_red_reg[3]_i_17\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => v_cntr_reg_reg(3),
      O => \vga_red_reg[3]_i_17_n_0\
    );
\vga_red_reg[3]_i_18\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => v_cntr_reg_reg(9),
      I1 => v_cntr_reg_reg(8),
      O => \vga_red_reg[3]_i_18_n_0\
    );
\vga_red_reg[3]_i_19\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => v_cntr_reg_reg(6),
      I1 => v_cntr_reg_reg(7),
      O => \vga_red_reg[3]_i_19_n_0\
    );
\vga_red_reg[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A802A800"
    )
        port map (
      I0 => \vga_red_reg[3]_i_5_n_0\,
      I1 => h_pxl_reg(1),
      I2 => h_pxl_reg(0),
      I3 => v_pxl_reg(0),
      I4 => key_reg(3),
      O => \vga_red_reg[3]_i_2_n_0\
    );
\vga_red_reg[3]_i_20\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => v_cntr_reg_reg(4),
      I1 => v_cntr_reg_reg(5),
      O => \vga_red_reg[3]_i_20_n_0\
    );
\vga_red_reg[3]_i_21\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => v_cntr_reg_reg(3),
      I1 => v_cntr_reg_reg(2),
      O => \vga_red_reg[3]_i_21_n_0\
    );
\vga_red_reg[3]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => v_pxl_reg(1),
      I1 => v_pxl_reg(2),
      I2 => v_pxl_reg(3),
      I3 => v_pxl_reg(4),
      I4 => \vga_red_reg[3]_i_15_n_0\,
      O => \vga_red_reg[3]_i_5_n_0\
    );
\vga_red_reg[3]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => h_cntr_reg_reg(10),
      I1 => h_cntr_reg_reg(11),
      O => \vga_red_reg[3]_i_6_n_0\
    );
\vga_red_reg[3]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => h_cntr_reg_reg(8),
      I1 => h_cntr_reg_reg(9),
      O => \vga_red_reg[3]_i_7_n_0\
    );
\vga_red_reg[3]_i_8\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => h_cntr_reg_reg(7),
      O => \vga_red_reg[3]_i_8_n_0\
    );
\vga_red_reg[3]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => h_cntr_reg_reg(10),
      I1 => h_cntr_reg_reg(11),
      O => \vga_red_reg[3]_i_9_n_0\
    );
\vga_red_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => '1',
      D => \vga_red_reg[0]_i_1_n_0\,
      Q => VGA_R(0),
      R => p_0_in
    );
\vga_red_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => '1',
      D => \vga_red_reg[1]_i_1_n_0\,
      Q => VGA_R(1),
      R => p_0_in
    );
\vga_red_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => '1',
      D => \vga_red_reg[2]_i_1_n_0\,
      Q => VGA_R(2),
      R => p_0_in
    );
\vga_red_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => '1',
      D => \vga_red_reg[3]_i_2_n_0\,
      Q => VGA_R(3),
      R => p_0_in
    );
\vga_red_reg_reg[3]_i_12\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \vga_red_reg_reg[3]_i_12_n_0\,
      CO(2) => \vga_red_reg_reg[3]_i_12_n_1\,
      CO(1) => \vga_red_reg_reg[3]_i_12_n_2\,
      CO(0) => \vga_red_reg_reg[3]_i_12_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \vga_red_reg[3]_i_16_n_0\,
      DI(0) => \vga_red_reg[3]_i_17_n_0\,
      O(3 downto 0) => \NLW_vga_red_reg_reg[3]_i_12_O_UNCONNECTED\(3 downto 0),
      S(3) => \vga_red_reg[3]_i_18_n_0\,
      S(2) => \vga_red_reg[3]_i_19_n_0\,
      S(1) => \vga_red_reg[3]_i_20_n_0\,
      S(0) => \vga_red_reg[3]_i_21_n_0\
    );
\vga_red_reg_reg[3]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \NLW_vga_red_reg_reg[3]_i_3_CO_UNCONNECTED\(3),
      CO(2) => ltOp6_in,
      CO(1) => \vga_red_reg_reg[3]_i_3_n_2\,
      CO(0) => \vga_red_reg_reg[3]_i_3_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \vga_red_reg[3]_i_6_n_0\,
      DI(1) => \vga_red_reg[3]_i_7_n_0\,
      DI(0) => \vga_red_reg[3]_i_8_n_0\,
      O(3 downto 0) => \NLW_vga_red_reg_reg[3]_i_3_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => \vga_red_reg[3]_i_9_n_0\,
      S(1) => \vga_red_reg[3]_i_10_n_0\,
      S(0) => \vga_red_reg[3]_i_11_n_0\
    );
\vga_red_reg_reg[3]_i_4\: unisim.vcomponents.CARRY4
     port map (
      CI => \vga_red_reg_reg[3]_i_12_n_0\,
      CO(3 downto 1) => \NLW_vga_red_reg_reg[3]_i_4_CO_UNCONNECTED\(3 downto 1),
      CO(0) => ltOp5_in,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \vga_red_reg[3]_i_13_n_0\,
      O(3 downto 0) => \NLW_vga_red_reg_reg[3]_i_4_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => \vga_red_reg[3]_i_14_n_0\
    );
end STRUCTURE;
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
    VGA_G : out STD_LOGIC_VECTOR ( 3 downto 0 );
    K_ROW : in STD_LOGIC_VECTOR ( 3 downto 0 );
    K_COL : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of top : entity is true;
end top;

architecture STRUCTURE of top is
  signal Clk : STD_LOGIC;
  signal K_COL_OBUF : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal K_ROW_IBUF : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal VGA_G_OBUF : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal VGA_HS_O_OBUF : STD_LOGIC;
  signal VGA_VS_O_OBUF : STD_LOGIC;
  signal key_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute IMPORTED_FROM : string;
  attribute IMPORTED_FROM of SYS_CLK : label is "d:/Code/ArtyA7/ArtyChip8/ArtyChip8.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0.dcp";
  attribute IMPORTED_TYPE : string;
  attribute IMPORTED_TYPE of SYS_CLK : label is "CHECKPOINT";
  attribute IS_IMPORTED : boolean;
  attribute IS_IMPORTED of SYS_CLK : label is std.standard.true;
  attribute syn_black_box : string;
  attribute syn_black_box of SYS_CLK : label is "TRUE";
begin
KYPD: entity work.PmodKYPD
     port map (
      K_ROW_IBUF(3 downto 0) => K_ROW_IBUF(3 downto 0),
      Q(3 downto 0) => K_COL_OBUF(3 downto 0),
      clk_out1 => Clk,
      key_reg(3 downto 0) => key_reg(3 downto 0)
    );
\K_COL_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => K_COL_OBUF(0),
      O => K_COL(0)
    );
\K_COL_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => K_COL_OBUF(1),
      O => K_COL(1)
    );
\K_COL_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => K_COL_OBUF(2),
      O => K_COL(2)
    );
\K_COL_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => K_COL_OBUF(3),
      O => K_COL(3)
    );
\K_ROW_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => K_ROW(0),
      O => K_ROW_IBUF(0)
    );
\K_ROW_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => K_ROW(1),
      O => K_ROW_IBUF(1)
    );
\K_ROW_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => K_ROW(2),
      O => K_ROW_IBUF(2)
    );
\K_ROW_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => K_ROW(3),
      O => K_ROW_IBUF(3)
    );
SYS_CLK: entity work.clk_wiz_0
     port map (
      clk_in1 => CLK_I,
      clk_out1 => Clk
    );
VGA: entity work.PmodVGA
     port map (
      VGA_HS_O => VGA_HS_O_OBUF,
      VGA_R(3 downto 0) => VGA_G_OBUF(3 downto 0),
      VGA_VS_O => VGA_VS_O_OBUF,
      clk_out1 => Clk,
      key_reg(3 downto 0) => key_reg(3 downto 0)
    );
\VGA_B_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => VGA_G_OBUF(0),
      O => VGA_B(0)
    );
\VGA_B_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => VGA_G_OBUF(1),
      O => VGA_B(1)
    );
\VGA_B_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => VGA_G_OBUF(2),
      O => VGA_B(2)
    );
\VGA_B_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => VGA_G_OBUF(3),
      O => VGA_B(3)
    );
\VGA_G_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => VGA_G_OBUF(0),
      O => VGA_G(0)
    );
\VGA_G_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => VGA_G_OBUF(1),
      O => VGA_G(1)
    );
\VGA_G_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => VGA_G_OBUF(2),
      O => VGA_G(2)
    );
\VGA_G_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => VGA_G_OBUF(3),
      O => VGA_G(3)
    );
VGA_HS_O_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => VGA_HS_O_OBUF,
      O => VGA_HS_O
    );
\VGA_R_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => VGA_G_OBUF(0),
      O => VGA_R(0)
    );
\VGA_R_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => VGA_G_OBUF(1),
      O => VGA_R(1)
    );
\VGA_R_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => VGA_G_OBUF(2),
      O => VGA_R(2)
    );
\VGA_R_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => VGA_G_OBUF(3),
      O => VGA_R(3)
    );
VGA_VS_O_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => VGA_VS_O_OBUF,
      O => VGA_VS_O
    );
end STRUCTURE;
