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

    signal Clk : std_logic;
    
    signal tRow : std_logic_vector(3 downto 0);
    signal tCol : std_logic_vector(3 downto 0);
    signal key_reg : std_logic_vector(3 downto 0);

    component clk_wiz_0
    Port (  CLK_IN1 : in std_logic;
            CLK_OUT1 : out std_logic);
    end component;

    component PmodKYPD
    Port (  Col : out std_logic_vector(3 downto 0);
            Row : in std_logic_vector(3 downto 0);
            Decoded : out std_logic_vector(3 downto 0);
            Clk : in std_logic);
    end component;
    
    component PmodVGA is
    Port (  pxl_clk : in std_logic;
            VGA_HS_O : out std_logic;
            VGA_VS_O : out std_logic;
            VGA_R : out std_logic_vector (3 downto 0);
            VGA_B : out std_logic_vector (3 downto 0);
            VGA_G : out std_logic_vector (3 downto 0));
    end component;

begin
    Sys_Clk : clk_wiz_0
    port map (
        CLK_IN1 => CLK_I, 
        CLK_OUT1 => Clk);
  
    KYPD : PmodKYPD
    port map(
        Col => K_COL,
        Row => K_ROW,
        Decoded => key_reg,
        Clk => Clk);
        
    VGA : PmodVGA
    port map(  
            pxl_clk => Clk,
            VGA_HS_O => VGA_HS_O,
            VGA_VS_O => VGA_VS_O,
            VGA_R => VGA_R,
            VGA_B => VGA_B,
            VGA_G => VGA_G);
    
--    f_buffer(0,0) <= OutDecoded;

end Behavioral;
