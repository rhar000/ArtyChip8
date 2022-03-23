library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_unsigned.all;
use IEEE.numeric_std.all;
use IEEE.math_real.ALL;
--use IEEE.std_logic_arith.ALL;

entity test_Main is
end test_Main;

architecture test of test_Main is

type REG is array (0 to 9) of std_logic_vector(7 downto 0);
signal TESTREG : REG;

signal Clk : std_logic := '0';
signal ADDR_REG : natural range 0 to 4095;
signal ADDR_BUS : std_logic_vector(11 downto 0);
signal DATA_REG : natural range 0 to 255;
signal DATA_BUS : std_logic_vector(7 downto 0);

signal ROM_OE : std_logic :='0';
signal RAM_RE : std_logic :='0';
signal RAM_WE : std_logic :='0';
signal RAM_DATA : std_logic_vector(7 downto 0);

signal PC_IN, PC_OUT, NNN : std_logic_vector(11 downto 0);
signal PC_EN : std_logic;
signal PC_MODE : natural range 0 to 3 :=0;

signal I_IN, I_OUT : std_logic_vector(11 downto 0);
signal I_EN : std_logic;
signal I_MODE : natural range 0 to 2 :=0;

signal IR_IN, IR_OUT : std_logic_vector(7 downto 0);
signal IR_EN : std_logic;

signal D_IN, D_OUT : std_logic_vector(7 downto 0);
signal D_EN : std_logic;
signal PROG_FLAG : std_logic := '1';

type state_t is (fetch1, fetch2, exec, init);
signal STATE, CURR_STATE : state_t := init;

type op_t is (none, CLS, RET, SYS_ADDR, JP_ADDR, CALL_ADDR, SE_VX_B, SNE_VX_B, SE_VX_VY, LD_VX_B, ADD_VX_B,
    LD_VX_VY, OR_VX_VY, AND_VX_VY, XOR_VX_VY, ADD_VX_VY, SUB_VX_VY, SHR_VX_VY, SUBN_VX_VY, SHL_VX_VY, SNE_VX_VY, 
    LD_I_ADDR, JP_V0_ADDR, RND_VX_B, DRW_VX_VY_N, SKP_VX, SKNP_VX, LD_VX_DT, LD_VX_K, LD_DT_VX, LD_ST_VX, ADD_I_VX, 
    LD_F_VX, LD_B_VX, LD_I_VX, LD_VX_I);
signal OPTYPE : op_t := none;

begin
    NNN <= IR_OUT(3 downto 0) & RAM_DATA;
    
    
    pc_reg : entity work.std_reg generic map(12) port map(Clk, '0', PC_EN, PC_IN, PC_OUT);
    i_reg : entity work.std_reg generic map(12) port map(Clk, '0', I_EN, I_IN, I_OUT);
    ir_reg : entity work.std_reg generic map(8) port map(Clk, '0', IR_EN, RAM_DATA, IR_OUT);
    d_reg : entity work.std_reg generic map(8) port map(Clk, '0', D_EN, D_IN, D_OUT);
    
    wram : entity work.Ram_Bank port map(Clk, PC_OUT, RAM_WE, RAM_RE, RAM_DATA);

    pc_log: entity work.PC_Logic port map(PROG_FLAG, PC_MODE, NNN, PC_OUT, PC_IN);

    

    clk_stimulus: process
    begin
        wait for 1 ns;
        Clk <= not Clk;
    end process clk_stimulus;
    
    clock_proc: process(Clk)
    begin
        if(rising_edge(Clk)) then     
            CURR_STATE <= STATE;       
        end if;
    end process;
  
    read_data: process(CURR_STATE)
    begin
        ROM_OE <= '0';
        RAM_WE <= '0';
        IR_EN <= '0';
        PC_EN <= '0';
        PC_MODE <= 0;
        
        
        case CURR_STATE is
            when fetch1=>
                PROG_FLAG <= '0';    
                PC_EN <= '1';
                STATE <= fetch2;
            when fetch2=>
                IR_EN <= '1';
                PC_EN <= '1';
                STATE <= exec;
            when exec=>
                PC_EN <= '1';
                STATE <= fetch2;
                case IR_OUT(7 downto 4) is
                    when x"0" => -- Call, CLS, Return
                        if (RAM_DATA = x"E0") then 
                            OPTYPE <= CLS;
                        end if;
                        if (RAM_DATA = x"EE") then 
                            OPTYPE <= RET;
                        end if;
                    when x"1" =>
                        OPTYPE <= JP_ADDR;
                        PC_MODE <= 1;
                        PC_EN <= '1';
                        STATE <=fetch1;    
                    when x"2" =>
                        OPTYPE <= CALL_ADDR;
                    when x"3" =>
                        OPTYPE <= SE_VX_B;
                    when x"4" =>
                        OPTYPE <= SNE_VX_B;
                    when x"5" =>
                        OPTYPE <= SE_VX_VY;
                    when x"6" =>
                        OPTYPE <= LD_VX_B;
                    when x"7" =>
                        OPTYPE <= ADD_VX_B;
                    when x"8" =>
                        case RAM_DATA(3 downto 0) is
                            when x"0" =>
                                OPTYPE <= LD_VX_VY;
                            when x"1" =>
                                OPTYPE <= OR_VX_VY;
                            when x"2" =>
                                OPTYPE <= AND_VX_VY;
                            when x"3" =>
                                OPTYPE <= XOR_VX_VY;
                            when x"4" =>
                                OPTYPE <= ADD_VX_VY;
                            when x"5" =>
                                OPTYPE <= SUB_VX_VY;
                            when x"6" =>
                                OPTYPE <= SHR_VX_VY;
                            when x"7" =>
                                OPTYPE <= SUBN_VX_VY;
                            when x"E" =>
                                OPTYPE <= SHL_VX_VY;
                            when others =>
                        end case;
                    when x"9" =>
                        OPTYPE <= SNE_VX_VY;
                    when x"A" =>
                        OPTYPE <= LD_I_ADDR;
                    when x"B" =>
                        OPTYPE <= JP_V0_ADDR;
                    when x"C" =>
                        OPTYPE <= RND_VX_B;
                    when x"D" =>
                        OPTYPE <= DRW_VX_VY_N;
                    when x"E" =>
                        if RAM_DATA = x"9E" then
                            OPTYPE <= SKP_VX;
                        end if;
                        if RAM_DATA = x"A1" then
                            OPTYPE <= SKNP_VX;
                        end if;
                    when x"F" =>
                        case RAM_DATA is
                            when x"07" =>
                                OPTYPE <= LD_VX_DT;
                            when x"0A" =>
                                OPTYPE <= LD_VX_K;
                            when x"15" =>
                                OPTYPE <= LD_DT_VX;
                            when x"18" =>
                                OPTYPE <= LD_ST_VX;
                            when x"1E" =>
                                OPTYPE <= ADD_I_VX;
                            when x"29" =>
                                OPTYPE <= LD_F_VX;
                            when x"33" =>
                                OPTYPE <= LD_B_VX;
                            when x"55" =>
                                OPTYPE <= LD_I_VX;
                            when x"65" =>
                                OPTYPE <= LD_VX_I;
                            when others =>
                        end case;
                    when others =>
                end case;
            when init =>
                PC_EN <= '1';
                I_EN <= '1';
                RAM_RE <= '1';               
                STATE <= fetch1;        
        end case;           
    end process read_data;
end test;

