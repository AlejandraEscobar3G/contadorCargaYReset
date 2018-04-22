library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity contadorEstado is
port (clk, rst, edo_Cont : in std_logic;
			a3,a2,a1,a0 : in std_logic;
			Q : inout std_logic_vector(3 downto 0)
		);
end contadorEstado;

architecture ale of contadorEstado is 
begin
	process(clk, rst)
	begin
		if(clk 'event and clk = '1') then
			if(rst = '1' OR edo_Cont = '1') then
				if (rst = '1' and edo_Cont = '0') then
					Q <= "0000";
				else
					Q(3) <= a3;
					Q(2) <= a2;
					Q(1) <= a1;
					Q(0) <= a0;
				end if;
			else
				Q <= Q+1;
			end if;
		end if;
	end process;
end ale;