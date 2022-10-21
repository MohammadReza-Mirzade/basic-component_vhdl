-------------------------------------------------------------------------------
--
-- Title       : adder_2bit
-- Design      : half_adder
-- Author      : mohammadrezamirzadejava@gmail.com
-- Company     : mohammadreza
--
-------------------------------------------------------------------------------
--
-- File        : D:\Users\moham\ActiveHdlProjects\My_Designs\ui\UI\half_adder\src\adder_2bit.vhd
-- Generated   : Sat Oct 22 00:23:28 2022
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
--{entity {adder_2bit} architecture {adder_2bit}}

library IEEE;
use IEEE.std_logic_1164.all;

entity adder_2bit is
	 port(
		 cin : in STD_LOGIC;
		 cout : out STD_LOGIC;
		 a : in STD_LOGIC_VECTOR(1 downto 0);
		 b : in STD_LOGIC_VECTOR(1 downto 0);
		 s : out STD_LOGIC_VECTOR(1 downto 0)
	     );
end adder_2bit;

--}} End of automatically maintained section

architecture adder_2bit of adder_2bit is	
signal c_signal:std_logic;

component full_adder is
	 port(
		 a : in STD_LOGIC;
		 b : in STD_LOGIC;
		 cin : in STD_LOGIC;
		 s : out STD_LOGIC;
		 cout : out STD_LOGIC
	     );
end component;

begin
  	fulladder_u0:full_adder
	port map (
		a => a(0),
		b => b(0),
		cin => cin,
		s => s(0),
		cout => c_signal
	);
	
	fulladder_u1:full_adder
	port map (
		a => a(1),
		b => b(1),
		cin => cin,
		s => s(1),
		cout => c_signal
	);
	 

end adder_2bit;
