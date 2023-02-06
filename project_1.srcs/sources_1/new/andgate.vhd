library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity main is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           C : out  STD_LOGIC);
end main;

architecture Behavioral of main is
begin
    C <= A and B;
end Behavioral;