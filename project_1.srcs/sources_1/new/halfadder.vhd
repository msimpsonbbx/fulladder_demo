library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity half_adder is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           sum : out  STD_LOGIC;
           carry : out  STD_LOGIC);
end half_adder;



architecture Behavioral of half_adder is

begin
--instantiate and do port map for the first half adder.
XOR_GATE : entity work.XOR_GATE port map(a,b,sum);
--instantiate and do port map for the second half adder.
AND_GATE : entity work.AND_GATE port map(a,b,carry);

end;