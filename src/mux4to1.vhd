-------------------------------------------------------------------------------
--
-- Title       : mux4to1
-- Design      : half_adder
-- Author      : mohammadrezamirzadejava@gmail.com
-- Company     : mohammadreza
--
-------------------------------------------------------------------------------
--
-- File        : D:\Users\moham\ActiveHdlProjects\My_Designs\ui\UI\half_adder\src\mux4to1.vhd
-- Generated   : Sat Oct 22 01:12:23 2022
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
--{entity {mux4to1} architecture {mux4to1}}

library IEEE;
use IEEE.std_logic_1164.all;

entity mux4to1 is
	 port(
		 f : out STD_LOGIC;
		 x : in STD_LOGIC_VECTOR(0 to 3);
		 s : in STD_LOGIC_VECTOR(0 to 1)
	     );
end mux4to1;

--}} End of automatically maintained section

architecture mux4to1 of mux4to1 is
begin

--	with s select
--	f <= 
--		x(0) when "00",
--		x(1) when "01",
--		x(2) when "10",	
--		x(3) when others;

	f <= 
		x(0) when s="00" else
		x(1) when s="01" else
		x(2) when s="10" else
		x(3);	
		

end mux4to1;
