-- Eduardo Freitas
-- 04/02/2021

library IEEE;
use IEEE.std_logic_1164.all;

ENTITY testbench is 
END testbench;

ARCHITECTURE HARDWARE OF testbench IS

	COMPONENT meu_ci_2 IS 
      port( 
        INPUT: IN std_logic_vector(0 to 3);  					
        S: OUT std_logic
      ); 
  	END COMPONENT;

    SIGNAL ABCD: std_logic_vector(0 to 3);
    SIGNAL Q: std_logic;
	
  	BEGIN

    ci: meu_ci_2 PORT MAP(ABCD, Q);
    
    ABCD <= 
    "0000" AFTER 05 NS,
    "0001" AFTER 10 NS,
    "0010" AFTER 15 NS,
    "0011" AFTER 20 NS,
    "0100" AFTER 25 NS,
    "0101" AFTER 30 NS,
    "0110" AFTER 35 NS,
    "0111" AFTER 40 NS,
    "1000" AFTER 45 NS,
    "1001" AFTER 50 NS,
    "1010" AFTER 55 NS,
    "1011" AFTER 60 NS,
    "1100" AFTER 65 NS,
    "1101" AFTER 70 NS,
    "1110" AFTER 75 NS,
    "1111" AFTER 80 NS,
    "0000" AFTER 100 NS; 
                         
END HARDWARE;