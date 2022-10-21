-------------------------------------------------------------------------------
--
-- Title       : dflipflop
-- Design      : half_adder
-- Author      : mohammadrezamirzadejava@gmail.com
-- Company     : mohammadreza
--
-------------------------------------------------------------------------------
--
-- File        : D:\Users\moham\ActiveHdlProjects\My_Designs\ui\UI\half_adder\src\dflipflop.vhd
-- Generated   : Sat Oct 22 01:44:55 2022
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
--{entity {dflipflop} architecture {dflipflop}}

library IEEE;
use IEEE.std_logic_1164.all;

entity dflipflop is
	 port(
		 d : in STD_LOGIC;
		 clk : in STD_LOGIC; 
		 r : in STD_LOGIC;
		 q1 : out STD_LOGIC;
		 q2 : out STD_LOGIC
	     );
end dflipflop;

--}} End of automatically maintained section

architecture dflipflop of dflipflop is
begin

	process(clk,r)
	begin
		if r = '1' then
			q1 <= '0';
			q2 <= '1';
		else	
			if clk'event and clk='1' then
				q1 <= d;
				q2 <= not d;
			end if;
		end if;	
	end process;

end dflipflop;
