-------------------------------------------------------------------------------
--
-- Title       : mux2to1
-- Design      : half_adder
-- Author      : mohammadrezamirzadejava@gmail.com
-- Company     : mohammadreza
--
-------------------------------------------------------------------------------
--
-- File        : D:\Users\moham\ActiveHdlProjects\My_Designs\ui\UI\half_adder\src\mux2to1.vhd
-- Generated   : Sat Oct 22 01:30:29 2022
-- From        : interface description file
-- By          : Itf2Vhdl ver. 1.22
--
-------------------------------------------------------------------------------
--
-- Description : 
--
-------------------------------------------------------------------------------

--{{ Section below this comment is automatically maintained
--   and may be overwritten
--{entity {mux2to1} architecture {mux2to1}}

library IEEE;
use IEEE.std_logic_1164.all;

entity mux2to1 is
	 port(
		 a : in STD_LOGIC;
		 b : in STD_LOGIC;
		 s : in STD_LOGIC;
		 c : out STD_LOGIC
	     );
end mux2to1;

--}} End of automatically maintained section

architecture mux2to1 of mux2to1 is
begin

	process(a,b,s)
	begin
		if s = '0' then 
			c <= a;
		else
			c <= b;
		end if;	
	end process;

end mux2to1;
