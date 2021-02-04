-- Eduardo Freitas
-- 03/02/2021

library IEEE;
use IEEE.std_logic_1164.all;

ENTITY meu_ci IS
  port( 
      	INPUT: IN std_logic_vector(0 to 1);
        S: OUT std_logic
  ); 
END meu_ci;

ARCHITECTURE HARDWARE OF meu_ci IS
	BEGIN
	S <= NOT INPUT(0) AND INPUT(1);
END HARDWARE;
