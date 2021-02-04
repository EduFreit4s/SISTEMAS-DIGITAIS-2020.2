-- Eduardo Freitas
-- 04/02/2021

library IEEE;
use IEEE.std_logic_1164.all;

ENTITY meu_ci_2 IS
	port( 
    	INPUT: IN std_logic_vector(0 to 3);
        S: OUT std_logic
  	); 
END meu_ci_2;

ARCHITECTURE HARDWARE OF meu_ci_2 IS
  	
    SIGNAL AND_1, AND_2: std_logic;
	
    BEGIN
    
    AND_1 <= INPUT(0) AND INPUT(1);
    AND_2 <= INPUT(2) AND INPUT(3);
    S <= AND_1 OR AND_2;

END HARDWARE;