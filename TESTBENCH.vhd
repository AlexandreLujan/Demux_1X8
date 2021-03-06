LIBRARY work;
USE work.MyPackage.all;

ENTITY TESTBENCH IS
END ENTITY;

ARCHITECTURE RTL OF TESTBENCH IS

	SIGNAL S_ENT    : BIT;
	SIGNAL S_SEL    :  BIT_VECTOR (2 DOWNTO 0);
   SIGNAL S_OUTPUT :  BIT_VECTOR (7 DOWNTO 0);
	
BEGIN

    DEMUX1X8_0 : DEMUX1X8 
	 PORT MAP (
		ENT => S_ENT,
		SEL => S_SEL,
		OUTPUT => S_OUTPUT
	);

	S_SEL <= "001" AFTER 0ns, "101" AFTER 40ns;
	S_ENT <= '1' AFTER 0ns;
		  
END ARCHITECTURE;