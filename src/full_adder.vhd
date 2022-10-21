-------------------------------------------------------------------------------
--
-- Title       : full_adder
-- Design      : half_adder
-- Author      : mohammadrezamirzadejava@gmail.com
-- Company     : mohammadreza
--
-------------------------------------------------------------------------------
--
-- File        : D:\Users\moham\ActiveHdlProjects\My_Designs\ui\UI\half_adder\src\full_adder.vhd
-- Generated   : Fri Oct 21 23:56:41 2022
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
--{entity {full_adder} architecture {full_adder}}

library IEEE;
use IEEE.std_logic_1164.all;

entity full_adder is
	 port(
		 a : in STD_LOGIC;
		 b : in STD_LOGIC;
		 cin : in STD_LOGIC;
		 s : out STD_LOGIC;
		 cout : out STD_LOGIC
	     );
end full_adder;

--}} End of automatically maintained section

architecture full_adder of full_adder is
signal y1, y2, y3: std_logic;
begin

	y1 <= a xor b;
	s <= y1 xor cin;
	y3 <= y1 and cin;
	y2 <= a and b;
	cout <= y2 or y3;

end full_adder;
