library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_unsigned.all;
use IEEE.numeric_std.all;

entity top is
    Port (  CLK_I : in std_logic;
            VGA_HS_O : out std_logic;
            VGA_VS_O : out std_logic;
            VGA_R : out std_logic_vector (3 downto 0);
            VGA_B : out std_logic_vector (3 downto 0);
            VGA_G : out std_logic_vector (3 downto 0);
            K_ROW : in std_logic_vector (3 downto 0);
            K_COL : buffer std_logic_vector (3 downto 0));
end top;

architecture Behavioral of top is

component clk_wiz_0
    Port (  CLK_IN1 : in std_logic;
            CLK_OUT1 : out std_logic
 );
end component;

component PmodKYPD
    Port (
        Col : out std_logic_vector(3 downto 0);
        Row : in std_logic_vector(3 downto 0);
        Decoded : out std_logic_vector(3 downto 0);
        Clk : in std_logic
    );
end component;

constant FRAME_WIDTH : natural := 1920;
constant FRAME_HEIGHT : natural := 1080;
constant H_PIXEL_WIDTH : natural := 30;
constant V_PIXEL_WIDTH : natural := 34;

constant H_FP : natural := 88; --H front porch width (pixels)
constant H_PW : natural := 44; --H sync pulse width (pixels)
constant H_MAX : natural := 2200; --H total period (pixels)

constant V_FP : natural := 4; --V front porch width (lines)
constant V_PW : natural := 5; --V sync pulse width (lines)
constant V_MAX : natural := 1125; --V total period (lines)

constant H_POL : std_logic := '1';
constant V_POL : std_logic := '1';

signal pxl_clk : std_logic;
signal active : std_logic;

signal h_cntr_reg : std_logic_vector(11 downto 0) := (others =>'0');
signal v_cntr_reg : std_logic_vector(11 downto 0) := (others =>'0');

signal h_sync_reg : std_logic := not(H_POL);
signal v_sync_reg : std_logic := not(V_POL);

signal h_sync_dly_reg : std_logic := not(H_POL);
signal v_sync_dly_reg : std_logic :=  not(V_POL);

signal vga_red_reg : std_logic_vector(3 downto 0) := (others =>'0');
signal vga_green_reg : std_logic_vector(3 downto 0) := (others =>'0');
signal vga_blue_reg : std_logic_vector(3 downto 0) := (others =>'0');

signal vga_red : std_logic_vector(3 downto 0);
signal vga_green : std_logic_vector(3 downto 0);
signal vga_blue : std_logic_vector(3 downto 0);

signal h_pxl_cntr : std_logic_vector(8 downto 0) := (others =>'0');
signal v_pxl_cntr : std_logic_vector(8 downto 0) := (others =>'0');
signal h_pxl : std_logic_vector(6 downto 0) := (others =>'0');
signal v_pxl : std_logic_vector(5 downto 0) := (others =>'0');

signal Row : std_logic_vector(3 downto 0);
signal Col : std_logic_vector(3 downto 0);
signal OutDecoded : std_logic_vector(3 downto 0);
signal NewCol : std_logic_vector(3 downto 0);


type rom_type is array (0 to 63, 0 to 31) of std_logic_vector(3 downto 0);

signal ROM : rom_type := (
    (x"0",x"0",x"2",x"3",x"0",x"1",x"2",x"3",x"0",x"1",x"2",x"3",x"0",x"1",x"2",x"3",x"0",x"1",x"2",x"3",x"0",x"1",x"2",x"3",x"0",x"1",x"2",x"3",x"0",x"1",x"2",x"3"),
    (x"0",x"0",x"1",x"0",x"3",x"2",x"1",x"0",x"3",x"2",x"1",x"0",x"3",x"2",x"1",x"0",x"3",x"2",x"1",x"0",x"3",x"2",x"1",x"0",x"3",x"2",x"1",x"0",x"3",x"2",x"1",x"0"),
    (x"0",x"1",x"2",x"3",x"0",x"1",x"2",x"3",x"0",x"1",x"2",x"3",x"0",x"1",x"2",x"3",x"0",x"1",x"2",x"3",x"0",x"1",x"2",x"3",x"0",x"1",x"2",x"3",x"0",x"1",x"2",x"3"),
    (x"3",x"2",x"1",x"0",x"3",x"2",x"1",x"0",x"3",x"2",x"1",x"0",x"3",x"2",x"1",x"0",x"3",x"2",x"1",x"0",x"3",x"2",x"1",x"0",x"3",x"2",x"1",x"0",x"3",x"2",x"1",x"0"),
    (x"0",x"1",x"2",x"3",x"0",x"1",x"2",x"3",x"0",x"1",x"2",x"3",x"0",x"1",x"2",x"3",x"0",x"1",x"2",x"3",x"0",x"1",x"2",x"3",x"0",x"1",x"2",x"3",x"0",x"1",x"2",x"3"),
    (x"3",x"2",x"1",x"0",x"3",x"2",x"1",x"0",x"3",x"2",x"1",x"0",x"3",x"2",x"1",x"0",x"3",x"2",x"1",x"0",x"3",x"2",x"1",x"0",x"3",x"2",x"1",x"0",x"3",x"2",x"1",x"0"),
    (x"0",x"1",x"2",x"3",x"0",x"1",x"2",x"3",x"0",x"1",x"2",x"3",x"0",x"1",x"2",x"3",x"0",x"1",x"2",x"3",x"0",x"1",x"2",x"3",x"0",x"1",x"2",x"3",x"0",x"1",x"2",x"3"),
    (x"3",x"2",x"1",x"0",x"3",x"2",x"1",x"0",x"3",x"2",x"1",x"0",x"3",x"2",x"1",x"0",x"3",x"2",x"1",x"0",x"3",x"2",x"1",x"0",x"3",x"2",x"1",x"0",x"3",x"2",x"1",x"0"),
    (x"0",x"1",x"2",x"3",x"0",x"1",x"2",x"3",x"0",x"1",x"2",x"3",x"0",x"1",x"2",x"3",x"0",x"1",x"2",x"3",x"0",x"1",x"2",x"3",x"0",x"1",x"2",x"3",x"0",x"1",x"2",x"3"),
    (x"3",x"2",x"1",x"0",x"3",x"2",x"1",x"0",x"3",x"2",x"1",x"0",x"3",x"2",x"1",x"0",x"3",x"2",x"1",x"0",x"3",x"2",x"1",x"0",x"3",x"2",x"1",x"0",x"3",x"2",x"1",x"0"),
    (x"0",x"1",x"2",x"3",x"0",x"1",x"2",x"3",x"0",x"1",x"2",x"3",x"0",x"1",x"2",x"3",x"0",x"1",x"2",x"3",x"0",x"1",x"2",x"3",x"0",x"1",x"2",x"3",x"0",x"1",x"2",x"3"),
    (x"3",x"2",x"1",x"0",x"3",x"2",x"1",x"0",x"3",x"2",x"1",x"0",x"3",x"2",x"1",x"0",x"3",x"2",x"1",x"0",x"3",x"2",x"1",x"0",x"3",x"2",x"1",x"0",x"3",x"2",x"1",x"0"),
    (x"0",x"1",x"2",x"3",x"0",x"1",x"2",x"3",x"0",x"1",x"2",x"3",x"0",x"1",x"2",x"3",x"0",x"1",x"2",x"3",x"0",x"1",x"2",x"3",x"0",x"1",x"2",x"3",x"0",x"1",x"2",x"3"),
    (x"3",x"2",x"1",x"0",x"3",x"2",x"1",x"0",x"3",x"2",x"1",x"0",x"3",x"2",x"1",x"0",x"3",x"2",x"1",x"0",x"3",x"2",x"1",x"0",x"3",x"2",x"1",x"0",x"3",x"2",x"1",x"0"),
    (x"0",x"1",x"2",x"3",x"0",x"1",x"2",x"3",x"0",x"1",x"2",x"3",x"0",x"1",x"2",x"3",x"0",x"1",x"2",x"3",x"0",x"1",x"2",x"3",x"0",x"1",x"2",x"3",x"0",x"1",x"2",x"3"),
    (x"3",x"2",x"1",x"0",x"3",x"2",x"1",x"0",x"3",x"2",x"1",x"0",x"3",x"2",x"1",x"0",x"3",x"2",x"1",x"0",x"3",x"2",x"1",x"0",x"3",x"2",x"1",x"0",x"3",x"2",x"1",x"0"),
    (x"0",x"1",x"2",x"3",x"0",x"1",x"2",x"3",x"0",x"1",x"2",x"3",x"0",x"1",x"2",x"3",x"0",x"1",x"2",x"3",x"0",x"1",x"2",x"3",x"0",x"1",x"2",x"3",x"0",x"1",x"2",x"3"),
    (x"3",x"2",x"1",x"0",x"3",x"2",x"1",x"0",x"3",x"2",x"1",x"0",x"3",x"2",x"1",x"0",x"3",x"2",x"1",x"0",x"3",x"2",x"1",x"0",x"3",x"2",x"1",x"0",x"3",x"2",x"1",x"0"),
    (x"0",x"1",x"2",x"3",x"0",x"1",x"2",x"3",x"0",x"1",x"2",x"3",x"0",x"1",x"2",x"3",x"0",x"1",x"2",x"3",x"0",x"1",x"2",x"3",x"0",x"1",x"2",x"3",x"0",x"1",x"2",x"3"),
    (x"3",x"2",x"1",x"0",x"3",x"2",x"1",x"0",x"3",x"2",x"1",x"0",x"3",x"2",x"1",x"0",x"3",x"2",x"1",x"0",x"3",x"2",x"1",x"0",x"3",x"2",x"1",x"0",x"3",x"2",x"1",x"0"),
    (x"0",x"1",x"2",x"3",x"0",x"1",x"2",x"3",x"0",x"1",x"2",x"3",x"0",x"1",x"2",x"3",x"0",x"1",x"2",x"3",x"0",x"1",x"2",x"3",x"0",x"1",x"2",x"3",x"0",x"1",x"2",x"3"),
    (x"3",x"2",x"1",x"0",x"3",x"2",x"1",x"0",x"3",x"2",x"1",x"0",x"3",x"2",x"1",x"0",x"3",x"2",x"1",x"0",x"3",x"2",x"1",x"0",x"3",x"2",x"1",x"0",x"3",x"2",x"1",x"0"),
    (x"0",x"1",x"2",x"3",x"0",x"1",x"2",x"3",x"0",x"1",x"2",x"3",x"0",x"1",x"2",x"3",x"0",x"1",x"2",x"3",x"0",x"1",x"2",x"3",x"0",x"1",x"2",x"3",x"0",x"1",x"2",x"3"),
    (x"3",x"2",x"1",x"0",x"3",x"2",x"1",x"0",x"3",x"2",x"1",x"0",x"3",x"2",x"1",x"0",x"3",x"2",x"1",x"0",x"3",x"2",x"1",x"0",x"3",x"2",x"1",x"0",x"3",x"2",x"1",x"0"),
    (x"0",x"1",x"2",x"3",x"0",x"1",x"2",x"3",x"0",x"1",x"2",x"3",x"0",x"1",x"2",x"3",x"0",x"1",x"2",x"3",x"0",x"1",x"2",x"3",x"0",x"1",x"2",x"3",x"0",x"1",x"2",x"3"),
    (x"3",x"2",x"1",x"0",x"3",x"2",x"1",x"0",x"3",x"2",x"1",x"0",x"3",x"2",x"1",x"0",x"3",x"2",x"1",x"0",x"3",x"2",x"1",x"0",x"3",x"2",x"1",x"0",x"3",x"2",x"1",x"0"),
    (x"0",x"1",x"2",x"3",x"0",x"1",x"2",x"3",x"0",x"1",x"2",x"3",x"0",x"1",x"2",x"3",x"0",x"1",x"2",x"3",x"0",x"1",x"2",x"3",x"0",x"1",x"2",x"3",x"0",x"1",x"2",x"3"),
    (x"3",x"2",x"1",x"0",x"3",x"2",x"1",x"0",x"3",x"2",x"1",x"0",x"3",x"2",x"1",x"0",x"3",x"2",x"1",x"0",x"3",x"2",x"1",x"0",x"3",x"2",x"1",x"0",x"3",x"2",x"1",x"0"),
    (x"0",x"1",x"2",x"3",x"0",x"1",x"2",x"3",x"0",x"1",x"2",x"3",x"0",x"1",x"2",x"3",x"0",x"1",x"2",x"3",x"0",x"1",x"2",x"3",x"0",x"1",x"2",x"3",x"0",x"1",x"2",x"3"),
    (x"3",x"2",x"1",x"0",x"3",x"2",x"1",x"0",x"3",x"2",x"1",x"0",x"3",x"2",x"1",x"0",x"3",x"2",x"1",x"0",x"3",x"2",x"1",x"0",x"3",x"2",x"1",x"0",x"3",x"2",x"1",x"0"),
    (x"0",x"1",x"2",x"3",x"0",x"1",x"2",x"3",x"0",x"1",x"2",x"3",x"0",x"1",x"2",x"3",x"0",x"1",x"2",x"3",x"0",x"1",x"2",x"3",x"0",x"1",x"2",x"3",x"0",x"1",x"2",x"3"),
    (x"3",x"2",x"1",x"0",x"3",x"2",x"1",x"0",x"3",x"2",x"1",x"0",x"3",x"2",x"1",x"0",x"3",x"2",x"1",x"0",x"3",x"2",x"1",x"0",x"3",x"2",x"1",x"0",x"3",x"2",x"1",x"0"),
    (x"0",x"1",x"2",x"3",x"0",x"1",x"2",x"3",x"0",x"1",x"2",x"3",x"0",x"1",x"2",x"3",x"0",x"1",x"2",x"3",x"0",x"1",x"2",x"3",x"0",x"1",x"2",x"3",x"0",x"1",x"2",x"3"),
    (x"3",x"2",x"1",x"0",x"3",x"2",x"1",x"0",x"3",x"2",x"1",x"0",x"3",x"2",x"1",x"0",x"3",x"2",x"1",x"0",x"3",x"2",x"1",x"0",x"3",x"2",x"1",x"0",x"3",x"2",x"1",x"0"),
    (x"0",x"1",x"2",x"3",x"0",x"1",x"2",x"3",x"0",x"1",x"2",x"3",x"0",x"1",x"2",x"3",x"0",x"1",x"2",x"3",x"0",x"1",x"2",x"3",x"0",x"1",x"2",x"3",x"0",x"1",x"2",x"3"),
    (x"3",x"2",x"1",x"0",x"3",x"2",x"1",x"0",x"3",x"2",x"1",x"0",x"3",x"2",x"1",x"0",x"3",x"2",x"1",x"0",x"3",x"2",x"1",x"0",x"3",x"2",x"1",x"0",x"3",x"2",x"1",x"0"),
    (x"0",x"1",x"2",x"3",x"0",x"1",x"2",x"3",x"0",x"1",x"2",x"3",x"0",x"1",x"2",x"3",x"0",x"1",x"2",x"3",x"0",x"1",x"2",x"3",x"0",x"1",x"2",x"3",x"0",x"1",x"2",x"3"),
    (x"3",x"2",x"1",x"0",x"3",x"2",x"1",x"0",x"3",x"2",x"1",x"0",x"3",x"2",x"1",x"0",x"3",x"2",x"1",x"0",x"3",x"2",x"1",x"0",x"3",x"2",x"1",x"0",x"3",x"2",x"1",x"0"),
    (x"0",x"1",x"2",x"3",x"0",x"1",x"2",x"3",x"0",x"1",x"2",x"3",x"0",x"1",x"2",x"3",x"0",x"1",x"2",x"3",x"0",x"1",x"2",x"3",x"0",x"1",x"2",x"3",x"0",x"1",x"2",x"3"),
    (x"3",x"2",x"1",x"0",x"3",x"2",x"1",x"0",x"3",x"2",x"1",x"0",x"3",x"2",x"1",x"0",x"3",x"2",x"1",x"0",x"3",x"2",x"1",x"0",x"3",x"2",x"1",x"0",x"3",x"2",x"1",x"0"),
    (x"0",x"1",x"2",x"3",x"0",x"1",x"2",x"3",x"0",x"1",x"2",x"3",x"0",x"1",x"2",x"3",x"0",x"1",x"2",x"3",x"0",x"1",x"2",x"3",x"0",x"1",x"2",x"3",x"0",x"1",x"2",x"3"),
    (x"3",x"2",x"1",x"0",x"3",x"2",x"1",x"0",x"3",x"2",x"1",x"0",x"3",x"2",x"1",x"0",x"3",x"2",x"1",x"0",x"3",x"2",x"1",x"0",x"3",x"2",x"1",x"0",x"3",x"2",x"1",x"0"),
    (x"0",x"1",x"2",x"3",x"0",x"1",x"2",x"3",x"0",x"1",x"2",x"3",x"0",x"1",x"2",x"3",x"0",x"1",x"2",x"3",x"0",x"1",x"2",x"3",x"0",x"1",x"2",x"3",x"0",x"1",x"2",x"3"),
    (x"3",x"2",x"1",x"0",x"3",x"2",x"1",x"0",x"3",x"2",x"1",x"0",x"3",x"2",x"1",x"0",x"3",x"2",x"1",x"0",x"3",x"2",x"1",x"0",x"3",x"2",x"1",x"0",x"3",x"2",x"1",x"0"),
    (x"0",x"1",x"2",x"3",x"0",x"1",x"2",x"3",x"0",x"1",x"2",x"3",x"0",x"1",x"2",x"3",x"0",x"1",x"2",x"3",x"0",x"1",x"2",x"3",x"0",x"1",x"2",x"3",x"0",x"1",x"2",x"3"),
    (x"3",x"2",x"1",x"0",x"3",x"2",x"1",x"0",x"3",x"2",x"1",x"0",x"3",x"2",x"1",x"0",x"3",x"2",x"1",x"0",x"3",x"2",x"1",x"0",x"3",x"2",x"1",x"0",x"3",x"2",x"1",x"0"),
    (x"0",x"1",x"2",x"3",x"0",x"1",x"2",x"3",x"0",x"1",x"2",x"3",x"0",x"1",x"2",x"3",x"0",x"1",x"2",x"3",x"0",x"1",x"2",x"3",x"0",x"1",x"2",x"3",x"0",x"1",x"2",x"3"),
    (x"3",x"2",x"1",x"0",x"3",x"2",x"1",x"0",x"3",x"2",x"1",x"0",x"3",x"2",x"1",x"0",x"3",x"2",x"1",x"0",x"3",x"2",x"1",x"0",x"3",x"2",x"1",x"0",x"3",x"2",x"1",x"0"),
    (x"0",x"1",x"2",x"3",x"0",x"1",x"2",x"3",x"0",x"1",x"2",x"3",x"0",x"1",x"2",x"3",x"0",x"1",x"2",x"3",x"0",x"1",x"2",x"3",x"0",x"1",x"2",x"3",x"0",x"1",x"2",x"3"),
    (x"3",x"2",x"1",x"0",x"3",x"2",x"1",x"0",x"3",x"2",x"1",x"0",x"3",x"2",x"1",x"0",x"3",x"2",x"1",x"0",x"3",x"2",x"1",x"0",x"3",x"2",x"1",x"0",x"3",x"2",x"1",x"0"),
    (x"0",x"1",x"2",x"3",x"0",x"1",x"2",x"3",x"0",x"1",x"2",x"3",x"0",x"1",x"2",x"3",x"0",x"1",x"2",x"3",x"0",x"1",x"2",x"3",x"0",x"1",x"2",x"3",x"0",x"1",x"2",x"3"),
    (x"3",x"2",x"1",x"0",x"3",x"2",x"1",x"0",x"3",x"2",x"1",x"0",x"3",x"2",x"1",x"0",x"3",x"2",x"1",x"0",x"3",x"2",x"1",x"0",x"3",x"2",x"1",x"0",x"3",x"2",x"1",x"0"),
    (x"0",x"1",x"2",x"3",x"0",x"1",x"2",x"3",x"0",x"1",x"2",x"3",x"0",x"1",x"2",x"3",x"0",x"1",x"2",x"3",x"0",x"1",x"2",x"3",x"0",x"1",x"2",x"3",x"0",x"1",x"2",x"3"),
    (x"3",x"2",x"1",x"0",x"3",x"2",x"1",x"0",x"3",x"2",x"1",x"0",x"3",x"2",x"1",x"0",x"3",x"2",x"1",x"0",x"3",x"2",x"1",x"0",x"3",x"2",x"1",x"0",x"3",x"2",x"1",x"0"),
    (x"0",x"1",x"2",x"3",x"0",x"1",x"2",x"3",x"0",x"1",x"2",x"3",x"0",x"1",x"2",x"3",x"0",x"1",x"2",x"3",x"0",x"1",x"2",x"3",x"0",x"1",x"2",x"3",x"0",x"1",x"2",x"3"),
    (x"3",x"2",x"1",x"0",x"3",x"2",x"1",x"0",x"3",x"2",x"1",x"0",x"3",x"2",x"1",x"0",x"3",x"2",x"1",x"0",x"3",x"2",x"1",x"0",x"3",x"2",x"1",x"0",x"3",x"2",x"1",x"0"),
    (x"0",x"1",x"2",x"3",x"0",x"1",x"2",x"3",x"0",x"1",x"2",x"3",x"0",x"1",x"2",x"3",x"0",x"1",x"2",x"3",x"0",x"1",x"2",x"3",x"0",x"1",x"2",x"3",x"0",x"1",x"2",x"3"),
    (x"3",x"2",x"1",x"0",x"3",x"2",x"1",x"0",x"3",x"2",x"1",x"0",x"3",x"2",x"1",x"0",x"3",x"2",x"1",x"0",x"3",x"2",x"1",x"0",x"3",x"2",x"1",x"0",x"3",x"2",x"1",x"0"),
    (x"0",x"1",x"2",x"3",x"0",x"1",x"2",x"3",x"0",x"1",x"2",x"3",x"0",x"1",x"2",x"3",x"0",x"1",x"2",x"3",x"0",x"1",x"2",x"3",x"0",x"1",x"2",x"3",x"0",x"1",x"2",x"3"),
    (x"3",x"2",x"1",x"0",x"3",x"2",x"1",x"0",x"3",x"2",x"1",x"0",x"3",x"2",x"1",x"0",x"3",x"2",x"1",x"0",x"3",x"2",x"1",x"0",x"3",x"2",x"1",x"0",x"3",x"2",x"1",x"0"),
    (x"0",x"1",x"2",x"3",x"0",x"1",x"2",x"3",x"0",x"1",x"2",x"3",x"0",x"1",x"2",x"3",x"0",x"1",x"2",x"3",x"0",x"1",x"2",x"3",x"0",x"1",x"2",x"3",x"0",x"1",x"2",x"3"),
    (x"3",x"2",x"1",x"0",x"3",x"2",x"1",x"0",x"3",x"2",x"1",x"0",x"3",x"2",x"1",x"0",x"3",x"2",x"1",x"0",x"3",x"2",x"1",x"0",x"3",x"2",x"1",x"0",x"3",x"2",x"1",x"0"),
    (x"0",x"1",x"2",x"3",x"0",x"1",x"2",x"3",x"0",x"1",x"2",x"3",x"0",x"1",x"2",x"3",x"0",x"1",x"2",x"3",x"0",x"1",x"2",x"3",x"0",x"1",x"2",x"3",x"0",x"1",x"2",x"3"),
    (x"f",x"2",x"1",x"0",x"3",x"2",x"1",x"0",x"3",x"2",x"1",x"0",x"3",x"2",x"1",x"0",x"3",x"2",x"1",x"0",x"3",x"2",x"1",x"0",x"3",x"2",x"1",x"0",x"3",x"2",x"1",x"0")
);

begin
    Row <= K_ROW;
    Col <= K_COL;

clk_div_inst : clk_wiz_0
  port map
   (
    CLK_IN1 => CLK_I,
    CLK_OUT1 => pxl_clk);

  vga_red <= ROM(to_integer(unsigned(h_pxl)), to_integer(unsigned(v_pxl))) when (active = '1') else (others=>'0');
  
  KYPD : PmodKYPD
    port map(
        Col => Col,
        Row => Row,
        Decoded => OutDecoded,
        Clk => pxl_clk
    );
--  ROM(1,1) <= Row;
  ROM(0,0) <= OutDecoded;
  
  process (pxl_clk)
  begin
    if (rising_edge(pxl_clk)) then
      if (h_cntr_reg = (H_MAX - 1)) then
        h_cntr_reg <= (others =>'0');
      else
        h_cntr_reg <= h_cntr_reg + 1;
      end if;
    end if;
  end process;
  
 process (pxl_clk)
  begin
    if (rising_edge(pxl_clk)) then
      if (h_pxl_cntr = H_PIXEL_WIDTH - 1) and active ='1' then 
        h_pxl_cntr <= (others =>'0');
        h_pxl <= h_pxl + 1;
      elsif (active ='1') then
        h_pxl_cntr <= h_pxl_cntr + 1; 
      end if;
    end if;
  end process;
  
  process (pxl_clk)
  begin
    if (rising_edge(pxl_clk)) then
      if ((h_cntr_reg = (H_MAX - 1)) and (v_cntr_reg = (V_MAX - 1))) then
        v_cntr_reg <= (others =>'0');
      elsif (h_cntr_reg = (H_MAX - 1)) then
        v_cntr_reg <= v_cntr_reg + 1;
        if (v_cntr_reg<1088) then         
            v_pxl_cntr <= v_pxl_cntr + 1;
            if (v_pxl_cntr = V_PIXEL_WIDTH-1) then
                v_pxl <= v_pxl + 1;
                v_pxl_cntr <= (others =>'0');
            end if;
        end if;

      end if;
    end if;
  end process;
  
  process (pxl_clk)
  begin
    if (rising_edge(pxl_clk)) then
      if (h_cntr_reg >= (H_FP + FRAME_WIDTH - 1)) and (h_cntr_reg < (H_FP + FRAME_WIDTH + H_PW - 1)) then
        h_sync_reg <= H_POL;
      else
        h_sync_reg <= not(H_POL);
      end if;
    end if;
  end process;
  
  process (pxl_clk)
  begin
    if (rising_edge(pxl_clk)) then
      if (v_cntr_reg >= (V_FP + FRAME_HEIGHT - 1)) and (v_cntr_reg < (V_FP + FRAME_HEIGHT + V_PW - 1)) then
        v_sync_reg <= V_POL;
         
      else
        v_sync_reg <= not(V_POL);
      end if;
    end if;
  end process;
  
  active <= '1' when ((h_cntr_reg < FRAME_WIDTH) and (v_cntr_reg < FRAME_HEIGHT)) else '0';

  process (pxl_clk)
  begin
    if (rising_edge(pxl_clk)) then
      v_sync_dly_reg <= v_sync_reg;
      h_sync_dly_reg <= h_sync_reg;
      vga_red_reg <= vga_red;
      vga_green_reg <= vga_green;
      vga_blue_reg <= vga_blue;
    end if;
  end process;

  VGA_HS_O <= h_sync_dly_reg;
  VGA_VS_O <= v_sync_dly_reg;
  VGA_R <= vga_red_reg;
  VGA_G <= vga_green_reg;
  VGA_B <= vga_blue_reg;

end Behavioral;
