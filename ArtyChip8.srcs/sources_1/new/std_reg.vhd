library IEEE;
use IEEE.std_logic_1164.all;

entity std_reg is
   generic( LEN     : integer := 8);
   
   port( Clk      : in std_logic;
         RST      : in std_logic;
         EN       : in std_logic;
         RIN      : in std_logic_vector(LEN-1 downto 0);
         ROUT     : out std_logic_vector(LEN-1 downto 0));
end std_reg;

architecture Behavioral of std_reg is
begin
   process(Clk)
   begin
      if rising_edge(Clk) then
         if EN = '1' then
            if RST = '1' then
               ROUT <= (others => '0');
            else
               ROUT <= RIN;
            end if;
         end if;
      end if;
   end process;
end Behavioral;

