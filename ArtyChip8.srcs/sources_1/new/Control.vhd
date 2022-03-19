library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_unsigned.all;
use IEEE.numeric_std.all;

entity Control is
    Port (  Clk : std_logic;
            SP : std_logic_vector(7 downto 0);
            DATA_BUS  : in std_logic_vector(7 downto 0);
            ADDR_BUS : out natural range 0 to 32767;
            ROM_OE : out std_logic;
            I_REG : inout std_logic_vector(11 downto 0);
            TESTOUT : out std_logic_vector(7 downto 0);
            TESTOUT2 : out std_logic_vector(7 downto 0);
            TESTOUT3 : out std_logic_vector(7 downto 0)
    );
end Control;

architecture Behavioral of Control is
    type state_t is (fetch1, fetch2, fetch3, exec, none);
    
    signal STATE : state_t := fetch1;
    
    signal OPCODE : std_logic_vector(15 downto 0) := (others => '0');
    
    signal PC : std_logic_vector(11 downto 0) := (others => '0');
    
begin

    
end Behavioral;
