library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_unsigned.all;
use IEEE.numeric_std.all;

entity Rom_Bank is
    port (  Clk : in std_logic;
            Address : in std_logic_vector(13 downto 0);
            Data : out std_logic_vector(7 downto 0);
            OE : in std_logic);
            
            
end Rom_Bank;

architecture Behavioral of Rom_Bank is
    type rom_data is array (natural range <>) of std_logic_vector(7 downto 0);
    
    signal program : rom_data(0 to 2) := (
        x"07", x"01", x"02"
    );

begin
    process(Clk)
    begin
        if rising_edge(Clk) then
            if (OE='0') then
                Data <= Program(to_integer(unsigned(Address)));
            end if;
        end if;
    end process;
    
end Behavioral;
