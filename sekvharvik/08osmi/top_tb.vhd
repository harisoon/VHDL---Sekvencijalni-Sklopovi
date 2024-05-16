library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity top_tb is
end entity;

architecture sim of top_tb is   
	constant ClockFrequency : integer := 100e6;
	constant CLockPeriod : time :=  1000 ms / ClockFrequency;

	signal Clk : std_logic := '1';
	signal nRst : std_logic := '0';
	signal Input : std_logic := '0';
	signal Output : std_logic;

begin
	i_FlipFlop : entity work.top(rtl)
	port map(
		Clk => Clk,
		nRst => nRst,
		Input => Input,
		Output => Output);

	Clk <= not Clk after CLockPeriod / 2;

	process is
	begin 
		nRst <= '1';
		wait for 20 ns;
		Input <= '1';
		wait for 22 ns;
		Input <= '0';
		wait for 6 ns;
		input <= '1';
		wait for 20 ns;

		nRst <= '0';

		wait;
	end process;

	
end architecture;
