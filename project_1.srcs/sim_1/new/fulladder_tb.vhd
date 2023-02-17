library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Full Adder Test Bench
entity full_adder_tb is
end full_adder_tb;

architecture Behavioral of full_adder_tb is
    -- Inputs
    signal a, b, cin: std_logic;
    signal  clk : std_logic := '0';
    -- Outputs
    signal sum, cout : std_logic;

begin
 clk <= not clk after 50 ns;
    -- Instantiate the Full Adder
    uut: entity work.FULL_ADDER(Behavioral)
        port map (
            a => a,
            b => b,
            clk => clk,
            cin => cin,
            sum => sum,
            cout => cout
        );
 process begin 
        
    -- Test Case 1
    a <= '0';
    b <= '0';
    cin <= '0';
    wait for 150 ns;
    assert sum = '0' and cout = '0' report "Test Case 1 Failed" severity error;

    -- Test Case 2
    a <= '0';
    b <= '1';
    cin <= '1';
    wait for 200 ns;
    assert sum = '0' and cout = '1' report "Test Case 2 Failed" severity error;

    -- Test Case 3
    a <= '1';
    b <= '0';
    cin <= '1';
    wait for 200 ns;
    assert sum = '0' and cout = '1' report "Test Case 3 Failed" severity error;

    -- Test Case 4
    a <= '1';
    b <= '1';
    cin <= '1';
    wait for 200 ns;
    assert sum = '1' and cout = '1' report "Test Case 4 Failed" severity error;

    -- Test Case 5
    a <= '1';
    b <= '1';
    cin <= '0';
    wait for 200 ns;
    assert sum = '0' and cout = '1' report "Test Case 5 Failed" severity error;

    -- Stop the Simulation
    wait;
    end process;
end Behavioral; 