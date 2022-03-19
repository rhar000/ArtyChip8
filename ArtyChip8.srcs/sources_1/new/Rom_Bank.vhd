library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_unsigned.all;
use IEEE.numeric_std.all;

entity Rom_Bank is
    port (  Clk : in std_logic;
            ADDR_BUS : in natural range 0 to 32767;
            Q : out std_logic_vector(7 downto 0);
            OE : in std_logic);
            
            
end Rom_Bank;

architecture Behavioral of Rom_Bank is
    type rom_data is array (natural range <>) of std_logic_vector(7 downto 0);
    
    signal program : rom_data(0 to 6) := (
        x"22", x"44", x"66", x"88", x"aa", x"cc", x"ff"
    );

begin
    process(Clk)
    begin
        if rising_edge(Clk) then
            if (OE='1') then
                Q <= Program(ADDR_BUS);
            end if;
        end if;
    end process;
    
end Behavioral;
