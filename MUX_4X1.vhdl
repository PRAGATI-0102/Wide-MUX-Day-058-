library ieee;
library work;
use ieee.std_logic_1164.all;
use work.Gates.all;


entity MUX_4X1 is 
	
	port(I: in std_logic_vector(3 downto 0);
		  Sel: in std_logic_vector(1 downto 0);
		  Y : out std_logic);
	
end entity; 

architecture structural of MUX_4X1 is

	component MUX_2X1 is
     port(I: in std_logic_vector(1 downto 0);
		  Sel: in std_logic;
		  Y : out std_logic);
   end component;
	
	signal w1,w2 : std_logic; 

	begin 
	
		A1: MUX_2X1 port map(I(1) => I(1), I(0) => I(0), Sel => Sel(0), Y => w1);	
		A2: MUX_2X1 port map(I(1) => I(3), I(0) => I(2), Sel => Sel(0), Y => w2);
		A3: MUX_2X1 port map(I(1) => w2, I(0) => w1, Sel => Sel(1), Y => Y);	
		
end structural;