library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Import the half adder and AND gate modules
use work.half_adder.all;

entity half_adder_tb is
end half_adder_tb;

architecture Behavioral of half_adder_tb is
    signal a, b, sum, carry : std_logic;
begin
    -- Instantiate the half adder
    uut : entity work.half_adder(Behavioral)
        port map (
            a => a,
            b => b,
            sum => sum,
            carry => carry
        );
process begin
    -- Test case 1
    a <= '0';
    b <= '0';
    wait for 10 ns;
    assert sum = '0' and carry = '0' report "Test case 1 failed" severity failure;

    -- Test case 2
    a <= '0';
    b <= '1';
    wait for 10 ns;
    assert sum = '1' and carry = '0' report "Test case 2 failed" severity failure;

    -- Test case 3
    a <= '1';
    b <= '0';
    wait for 10 ns;
    assert sum = '1' and carry = '0' report "Test case 3 failed" severity failure;

    -- Test case 4
    a <= '1';
    b <= '1';
    wait for 10 ns;
    assert sum = '0' and carry = '1' report "Test case 4 failed" severity failure;
end process;
end Behavioral;