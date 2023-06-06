library ieee;
library work;
use ieee.std_logic_1164.all;
use work.Gates.all;


entity MUX_4X1_4BIT is 
	
	port(A, B, C, D: in std_logic_vector(3 downto 0);
		  Sel: in std_logic_vector(1 downto 0);
		  Y : out std_logic_vector(3 downto 0));
	
end entity; 

architecture structural of MUX_4X1_4BIT is

	component MUX_4X1 is
     port(I: in std_logic_vector(3 downto 0);
		  Sel: in std_logic_vector(1 downto 0);
		  Y : out std_logic);
   end component;
	
1
	begin 
	
		A1: MUX_4X1 port map(I(0) => A(0), I(1) => B(0), I(2) => C(0), I(3) => D(0), Sel(0) => Sel(0),Sel(1) => Sel(1),Y => Y(0));	
		A2: MUX_4X1 port map(I(0) => A(1), I(1) => B(1), I(2) => C(1), I(3) => D(1), Sel(0) => Sel(0),Sel(1) => Sel(1),Y => Y(1));	
		A3: MUX_4X1 port map(I(0) => A(2), I(1) => B(2), I(2) => C(2), I(3) => D(2), Sel(0) => Sel(0),Sel(1) => Sel(1),Y => Y(2));	
		A4: MUX_4X1 port map(I(0) => A(3), I(1) => B(3), I(2) => C(3), I(3) => D(3), Sel(0) => Sel(0),Sel(1) => Sel(1),Y => Y(3));	


end structural;