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
    signal SP : std_logic_vector(7 downto 0);
    signal ADDR_BUS : natural range 0 to 32767;
    signal DATA_BUS : std_logic_vector(7 downto 0);
    signal ROM_OE : std_logic := '0';
    signal key_reg : std_logic_vector(3 downto 0);
    signal I_REG : std_logic_vector(11 downto 0);
    
    signal TESTOUT : std_logic_vector(7 downto 0);
    signal TESTOUT2 : std_logic_vector(7 downto 0);
    signal TESTOUT3 : std_logic_vector(7 downto 0);
    signal TESTOUT4 : std_logic_vector(7 downto 0);

    ------------------------------------------------------------------------------------------------
    signal tRow : std_logic_vector(3 downto 0);
    signal tCol : std_logic_vector(3 downto 0);
    signal test_reg : std_logic_vector(7 downto 0);
    ------------------------------------------------------------------------------------------------

--    component clk_wiz_0
--    port (  CLK_IN1 : in std_logic;
--            CLK_OUT1 : out std_logic);
--    end component;

begin 

--    SYS_CLK : clk_wiz_0 port map (
--        CLK_IN1 => CLK_I, 
--        CLK_OUT1 => Clk);
  
    Clk <= CLK_I;
  
    KYPD : entity work.PmodKYPD port map (
        Col => K_COL,
        Row => K_ROW,
        Decoded => key_reg,
        Clk => Clk);
        
    VGA : entity work.PmodVGA port map (  
        pxl_clk => Clk,
        VGA_HS_O => VGA_HS_O,
        VGA_VS_O => VGA_VS_O,
        VGA_R => VGA_R,
        VGA_B => VGA_B,
        VGA_G => VGA_G,
        TestPxl => key_reg,
        TestPxl2 => TESTOUT(3 downto 0),
        TestPxl3 => TESTOUT2(3 downto 0),
        TestPxl4 => TESTOUT3(3 downto 0),
        TestPxl5 => TESTOUT4(3 downto 0));
            
     SYS_ROM : entity work.Rom_Bank port map (
        Clk => Clk,
        ADDR_BUS => ADDR_BUS,
        Q => DATA_BUS,
        OE => ROM_OE);  
          
     SYS_CNTRL : entity work.Control port map (
        Clk => Clk,
        SP => SP,
        DATA_BUS => DATA_BUS,
        ADDR_BUS => ADDR_BUS,
        ROM_OE => ROM_OE,
        I_REG => I_REG,
        TESTOUT => TESTOUT,
        TESTOUT2 => TESTOUT2,
        TESTOUT3 => TESTOUT3);
     
    process(clk)
    begin
    if(rising_edge(clk)) then
        ADDR_BUS <= 0;
        ROM_OE <= '1';
        TESTOUT <= DATA_BUS;
        ROM_OE <= '0';
        ADDR_BUS <= 1;
        ROM_OE <= '1';
        TESTOUT2 <= DATA_BUS;
        ROM_OE <= '0';
        ADDR_BUS <= 2;
        ROM_OE <= '1';
        TESTOUT3 <= DATA_BUS;
        ROM_OE <= '0';
    end if;
    end process;
        
    

end Behavioral;
