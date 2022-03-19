library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_unsigned.all;
use IEEE.numeric_std.all;

entity PmodKYPD is
    Port (  Col : buffer std_logic_vector(3 downto 0);
            Row : in std_logic_vector(3 downto 0);
            Decoded : out std_logic_vector(3 downto 0);
            Clk : in std_logic);
end PmodKYPD;

architecture Behavioral of PmodKYPD is
    signal count : integer := 1;
    signal key_num : integer := 0;
    signal col_sel : std_logic_vector(1 downto 0) := (others => '0');
    
begin
    Decoded <= std_logic_vector(to_unsigned(key_num,4));
    
    multiplex: process(Clk)
    begin
        if rising_edge(Clk) then
            count <= count+1;
            if (count = 9999) then
                count <= 0;
                col_sel <= col_sel + 1;
            elsif (count = 99) then
                if(col_sel = 0) then
                    if (Row = "0111") then key_num <= 10;
                    elsif (Row = "1011") then key_num <= 11;
                    elsif (Row = "1101") then key_num <= 12;
                    elsif (Row = "1110") then key_num <= 13;
                    end if;
                elsif(col_sel = 1) then
                    if (Row = "0111") then key_num <= 3;
                    elsif (Row = "1011") then key_num <= 6;
                    elsif (Row = "1101") then key_num <= 9;
                    elsif (Row = "1110") then key_num <= 14;
                    end if;
                elsif(col_sel = 2) then
                    if (Row = "0111") then key_num <= 2;
                    elsif (Row = "1011") then key_num <= 5;
                    elsif (Row = "1101") then key_num <= 8;
                    elsif (Row = "1110") then key_num <= 15;
                    end if;
                elsif(col_sel = 3) then
                    if (Row = "0111") then key_num <= 1;
                    elsif (Row = "1011") then key_num <= 4;
                    elsif (Row = "1101") then key_num <= 7;
                    elsif (Row = "1110") then key_num <= 0;        
                    end if;      
                end if; 
            end if;
        end if;
    end process multiplex;
    
    getkey: process(Clk)
    begin
        if rising_edge(Clk) then
            case col_sel is
                when "00" => Col <= "1110";
                when "01" => Col <= "1101";
                when "10" => Col <= "1011";
                when "11" => Col <= "0111";
            end case;
        end if;
    end process getkey;    
    
end Behavioral;
