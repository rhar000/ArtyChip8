library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;

entity PC_Logic is
  Port ( PROG_FLAG : in std_logic;
         PC_MODE : in natural range 0 to 3;
         NNN : in std_logic_vector(11 downto 0);
         PC_OUT : in std_logic_vector(11 downto 0);
         PC_IN : out std_logic_vector(11 downto 0));
end PC_Logic;

architecture Behavioral of PC_Logic is
    signal PC_REG : std_logic_vector(11 downto 0);
begin
    PC_IN <= PC_REG when PROG_FLAG = '0' else x"000";

    
    with PC_MODE select
        PC_REG <=   std_logic_vector(unsigned(PC_OUT) + 1) when 0,
                    NNN when 1,
                    std_logic_vector(unsigned(PC_OUT) + 1) when 2,
                    std_logic_vector(unsigned(PC_OUT) + 1) when 3;
end Behavioral;
