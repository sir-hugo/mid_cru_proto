-- fifo.vhd

-- Generated using ACDS version 19.1 240

library IEEE;
library fifo_191;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity fifo is
	port (
		data  : in  std_logic_vector(63 downto 0) := (others => '0'); --  fifo_input.datain
		wrreq : in  std_logic                     := '0';             --            .wrreq
		rdreq : in  std_logic                     := '0';             --            .rdreq
		clock : in  std_logic                     := '0';             --            .clk
		sclr  : in  std_logic                     := '0';             --            .sclr
		q     : out std_logic_vector(63 downto 0);                    -- fifo_output.dataout
		empty : out std_logic                                         --            .empty
	);
end entity fifo;

architecture rtl of fifo is
	component fifo_fifo_191_nveaihq_cmp is
		port (
			data  : in  std_logic_vector(63 downto 0) := (others => 'X'); -- datain
			wrreq : in  std_logic                     := 'X';             -- wrreq
			rdreq : in  std_logic                     := 'X';             -- rdreq
			clock : in  std_logic                     := 'X';             -- clk
			sclr  : in  std_logic                     := 'X';             -- sclr
			q     : out std_logic_vector(63 downto 0);                    -- dataout
			empty : out std_logic                                         -- empty
		);
	end component fifo_fifo_191_nveaihq_cmp;

	for fifo_0 : fifo_fifo_191_nveaihq_cmp
		use entity fifo_191.fifo_fifo_191_nveaihq;
begin

	fifo_0 : component fifo_fifo_191_nveaihq_cmp
		port map (
			data  => data,  --  fifo_input.datain
			wrreq => wrreq, --            .wrreq
			rdreq => rdreq, --            .rdreq
			clock => clock, --            .clk
			sclr  => sclr,  --            .sclr
			q     => q,     -- fifo_output.dataout
			empty => empty  --            .empty
		);

end architecture rtl; -- of fifo