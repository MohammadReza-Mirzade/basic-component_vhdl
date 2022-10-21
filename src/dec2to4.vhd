-------------------------------------------------------------------------------
--
-- Title       : dec2to4
-- Design      : half_adder
-- Author      : mohammadrezamirzadejava@gmail.com
-- Company     : mohammadreza
--
-------------------------------------------------------------------------------
--
-- File        : D:\Users\moham\ActiveHdlProjects\My_Designs\ui\UI\half_adder\src\dec2to4.vhd
-- Generated   : Sat Oct 22 01:36:08 2022
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
--{entity {dec2to4} architecture {dec2to4}}

library IEEE;
use IEEE.std_logic_1164.all;

entity dec2to4 is
	 port(
		 e : in STD_LOGIC;
		 x : in STD_LOGIC_VECTOR(1 downto 0);
		 y : out STD_LOGIC_VECTOR(3 downto 0)
	     );
end dec2to4;

--}} End of automatically maintained section

architecture dec2to4 of dec2to4 is
begin

	process(x,e)	
	begin
		if e = '1' then
			case x is
				when "00" =>   y <= "0001";
				when "01" =>   y <= "0010";
				when "10" =>   y <= "0100";
				when others	=> y <= "1000";
			end case;	
		else
			y <= "0000";
		end if;	
	end process;

end dec2to4;
