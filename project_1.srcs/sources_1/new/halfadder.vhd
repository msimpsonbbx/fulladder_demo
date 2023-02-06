library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Import the AND and XOR gate modules
use work.AND_GATE.all;
use work.XOR_GATE.all;

entity half_adder is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           sum : out  STD_LOGIC;
           carry : out  STD_LOGIC);
end half_adder;

architecture Behavioral of half_adder is
begin
    sum <= XOR_GATE(a,b);
    carry <= AND_GATE(a,b);
end Behavioral;