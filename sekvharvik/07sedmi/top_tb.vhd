library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity top_tb is
end entity;

architecture sim of top_tb is   
	constant DataWidth: integer := 8;
	
	signal Sig1 : unsigned(DataWidth-1 downto 0) := x"AA";
	signal Sig2 : unsigned(7 downto 0) := x"BB";
	signal Sig3 : unsigned(7 downto 0) := x"CC";
	signal Sig4 : unsigned(7 downto 0) := x"DD";
	
	signal Sel : unsigned(1 downto 0) := (others => '0');
	signal Output1 : unsigned(7 downto 0);
	

begin
	i_Mux1: entity work.top(rtl) 
	generic map(DataWidth => 8)
	port map(
		Sel => Sel,
		Sig1 => Sig1,
		Sig2 => Sig2,
		Sig3 => Sig3,
		Sig4 => Sig4,
		Output1 => Output1);
	process is
	begin
		wait for 10 ns;
		Sel <= Sel + 1;
		wait for 10 ns;
		Sel <= Sel + 1;
		wait for 10 ns;
		Sel <= Sel + 1;
		wait for 10 ns;
		Sel <= Sel + 1;
		wait for 10 ns;
		Sel <= "UU";
		wait;
	end process;

	
end architecture;
