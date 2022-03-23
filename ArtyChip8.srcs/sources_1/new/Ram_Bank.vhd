library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_unsigned.all;
use IEEE.numeric_std.all;

entity Ram_Bank is
    port (  Clk : in std_logic;
            ADDR_BUS : in std_logic_vector(11 downto 0);
            WE : in std_logic;
            RE : in std_logic;
            Q : out std_logic_vector(7 downto 0));
end Ram_Bank;

architecture Behavioral of Ram_Bank is
    type ram_data is array (natural range <>) of std_logic_vector(7 downto 0);
    
    signal program : ram_data(0 to 25) := (
        x"00", x"E0", 
--      x"00", x"EE", 
        x"10", x"08",
        x"2F", x"F2", -- CALL addr
        x"3F", x"F3", -- SE Vx, byte
        x"4F", x"F4", -- SNE Vx, byte
        x"5F", x"F5", -- SE Vx, Vy
        x"6F", x"f6", -- LD Vx, byte
        x"7F", x"F7", -- ADD Vx, byte
        x"10", x"00", 
        x"8F", x"F0", 
        x"8F", x"F1", 
        x"8F", x"F2", 
        x"8F", x"F3"
    );

begin
    process(Clk)
    begin
        if rising_edge(Clk) then
            if (RE='1') then
                Q <= program(to_integer(unsigned(ADDR_BUS)));
            end if;
        end if;
    end process;
    
end Behavioral;
