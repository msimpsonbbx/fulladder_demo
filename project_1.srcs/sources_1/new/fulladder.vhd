library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FULL_ADDER is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           Cin : in  STD_LOGIC;
           Sum : out  STD_LOGIC;
           Cout : out  STD_LOGIC);
end FULL_ADDER;

architecture Behavioral of FULL_ADDER is
    signal HA1_Sum, HA1_Cout : std_logic;
    signal HA2_Sum, HA2_Cout : std_logic;
begin
    -- Instantiate the two half adder sub-modules
    HA1 : entity work.HALF_ADDER(Behavioral)
        port map (A => A, B => B, Sum => HA1_Sum, carry => HA1_Cout);

    HA2 : entity work.HALF_ADDER(Behavioral)
        port map (A => HA1_Sum, B => Cin, Sum => HA2_Sum, carry => HA2_Cout);

    -- Use the outputs of the two half adders to calculate the final outputs
    Sum <= HA2_Sum;
    Cout <= HA1_Cout OR HA2_Cout;
end Behavioral;