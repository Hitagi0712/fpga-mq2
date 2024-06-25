library ieee;
use ieee.std_logic_1164.all;
LiBRARY std;
USE std.standard.all; --comment
LIBRARY work;
USE work.all;

entity clock is
port (
	clk_in : IN STD_LOGIC;
	clk_out : OUT STD_LOGIC
);
end clock ;

architecture LogicFunction of clock IS
	signal term : std_LOGIC := '0';
	signal count : integer range 0 to 127 := 0;
	
	begin
	process(clk_in)
		begin
			if(falling_edge(clk_in)) then
				count <= count + 1;
				if (count >= 50) then--120=>500kHz
					count <= 0;
					term <= not term;
				end if;
			end if;
	end process;
	clk_out <= term;
end LogicFunction;