-------------------------------------------------------------------------------
--
-- Title       : half_adder
-- Design      : half_adder
-- Author      : mohammadrezamirzadejava@gmail.com
-- Company     : mohammadreza
--
-------------------------------------------------------------------------------
--
-- File        : D:\Users\moham\ActiveHdlProjects\My_Designs\ui\UI\half_adder\src\half_adder.vhd
-- Generated   : Fri Oct 21 23:54:14 2022
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
--{entity {half_adder} architecture {half_adder}}

library IEEE;
use IEEE.std_logic_1164.all;

entity half_adder is
	 port(
		 a : in STD_LOGIC;
		 b : in STD_LOGIC;
		 s : out STD_LOGIC;
		 c : out STD_LOGIC
	     );
end half_adder;

--}} End of automatically maintained section

architecture half_adder of half_adder is
begin

	c <= a and b;
	s <= a xor b;

end half_adder;
