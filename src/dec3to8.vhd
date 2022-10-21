-------------------------------------------------------------------------------
--
-- Title       : dec3to8
-- Design      : half_adder
-- Author      : mohammadrezamirzadejava@gmail.com
-- Company     : mohammadreza
--
-------------------------------------------------------------------------------
--
-- File        : D:\Users\moham\ActiveHdlProjects\My_Designs\ui\UI\half_adder\src\dec3to8.vhd
-- Generated   : Sat Oct 22 01:21:18 2022
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
--{entity {dec3to8} architecture {dec3to8}}

library IEEE;
use IEEE.std_logic_1164.all;

entity dec3to8 is
	 port(
		 s : in STD_LOGIC_VECTOR(0 to 2);
		 m : out STD_LOGIC_VECTOR(0 to 7)
	     );
end dec3to8;

--}} End of automatically maintained section

architecture dec3to8 of dec3to8 is
begin

	with s select
	m <= 
		"00000001" when "000",
		"00000010" when "001",
		"00000100" when "010",
		"00001000" when "011",
		"00010000" when "100",
		"00100000" when "101",
		"01000000" when "110",
		"10000000" when others;

end dec3to8;
