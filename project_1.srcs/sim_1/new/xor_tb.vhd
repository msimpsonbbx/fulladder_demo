library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity XOR_GATE_TB is
end XOR_GATE_TB;

architecture Behavioral of XOR_GATE_TB is
    signal A, B, Y : std_logic;
begin
    DUT: entity work.XOR_GATE(Behavioral)
        port map (A => A, B => B, Y => Y);

    -- Stimulus process
    stim_proc: process
    begin
        A <= '0'; B <= '0'; wait for 10 ns;
        assert (Y = '0') report "Error: A=0, B=0, Y should be 0" severity error;

        A <= '0'; B <= '1'; wait for 10 ns;
        assert (Y = '1') report "Error: A=0, B=1, Y should be 1" severity error;

        A <= '1'; B <= '0'; wait for 10 ns;
        assert (Y = '1') report "Error: A=1, B=0, Y should be 1" severity error;

        A <= '1'; B <= '1'; wait for 10 ns;
        assert (Y = '0') report "Error: A=1, B=1, Y should be 0" severity error;

        wait;
    end process;
end Behavioral;