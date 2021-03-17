
library IEEE;
use IEEE.std_logic_1164.all;

ENTITY fullAdder IS
	PORT(
    	AB_CIN: IN BIT_VECTOR (2 DOWNTO 0);       -- A(2) B(1) CIN(0)
        S_COUT: OUT BIT_VECTOR (1 DOWNTO 0));   -- S(1) COUT(0)
END fullAdder;

ARCHITECTURE HARDWARE OF fullAdder IS
	
	BEGIN
    
    S_COUT(1) <= A XOR B XOR AB_CIN(0);
	S_COUT(0) <= (A AND B) OR (AB_CIN(0) AND (A XOR B));
	
END HARDWARE;
