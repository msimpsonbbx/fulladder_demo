library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity AND_GATE_TB is
end AND_GATE_TB;

architecture Behavioral of AND_GATE_TB is
    component AND_GATE is
        Port ( A : in  STD_LOGIC;
               B : in  STD_LOGIC;
               Y : out  STD_LOGIC);
    end component;
    signal A, B, Y : STD_LOGIC;
begin
    DUT : AND_GATE
    Port map (A => A, B => B, Y => Y);
        process begin
            -- Test case 1: A = 0, B = 0
            A <= '0';
            B <= '0';
            wait for 10 ns;
            assert Y = '0' report "Test case 1 failed" severity failure;
        
            -- Test case 2: A = 0, B = 1
            A <= '0';
            B <= '1';
            wait for 10 ns;
            assert Y = '0' report "Test case 2 failed" severity failure;
        
            -- Test case 3: A = 1, B = 0
            A <= '1';
            B <= '0';
            wait for 10 ns;
            assert Y = '0' report "Test case 3 failed" severity failure;
        
            -- Test case 4: A = 1, B = 1
            A <= '1';
            B <= '1';
            wait for 10 ns;
            assert Y = '1' report "Test case 4 failed" severity failure;
        end process;
    end Behavioral;