library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity main_tb is
end main_tb;

architecture Behavioral of main_tb is
    signal A, B, C : std_logic;
begin
    -- Instantiate the main entity
    uut : entity work.main
        port map (
            A => A,
            B => B,
            C => C
        );

    -- Stimulus process
    stim_proc: process
    begin
        A <= '0';
        B <= '0';
        wait for 10 ns;
        A <= '1';
        B <= '0';
        wait for 10 ns;
        A <= '0';
        B <= '1';
        wait for 10 ns;
        A <= '1';
        B <= '1';
        
        end Behavioral;