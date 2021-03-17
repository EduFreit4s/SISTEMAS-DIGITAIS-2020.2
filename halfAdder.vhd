LIBRARY ieee ;
USE ieee.std_logic_1164.all ;

ENTITY halfAdder IS
	PORT ( 	
    	AB: IN BIT_VECTOR(1 DOWNTO 0);		-- A(1) B(0)
      	S_COUT: OUT BIT_VECTOR(1 DOWNTO 0);	-- S(1) COUT(0)
END ha;

ARCHITECTURE HARDWARE OF halfAdder IS

	BEGIN
   
    S <= A xor B;
    COUT <= A and B;

END HARDWARE;
