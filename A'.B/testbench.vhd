-- Eduardo Freitas
-- 03/02/2021

library IEEE;
use IEEE.std_logic_1164.all;

ENTITY testbench is 
END testbench;

ARCHITECTURE HARDWARE OF testbench IS

  COMPONENT meu_ci IS 
    port( 
      INPUT: IN std_logic_vector(0 to 1);  						
      S: OUT std_logic
    ); 
  END COMPONENT;

  SIGNAL fio_entrada: std_logic_vector(0 to 1);
  SIGNAL fio_saida: std_logic;

  BEGIN

  ci: meu_ci PORT MAP(fio_entrada, fio_saida);

      fio_entrada <=  "00" after 10 ns,
                      "01" after 20 ns,
                      "10" after 30 ns,
                      "11" after 40 ns,
                      "00" after 50 ns;
                   
END HARDWARE;