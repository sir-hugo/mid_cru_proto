-- ram.vhd

-- Generated using ACDS version 19.1 240

library IEEE;
library ram_2port_191;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity ram is
	port (
		data_a    : in  std_logic_vector(63 downto 0) := (others => '0'); --    data_a.datain_a
		q_a       : out std_logic_vector(63 downto 0);                    --       q_a.dataout_a
		data_b    : in  std_logic_vector(63 downto 0) := (others => '0'); --    data_b.datain_b
		q_b       : out std_logic_vector(63 downto 0);                    --       q_b.dataout_b
		address_a : in  std_logic_vector(3 downto 0)  := (others => '0'); -- address_a.address_a
		address_b : in  std_logic_vector(3 downto 0)  := (others => '0'); -- address_b.address_b
		wren_a    : in  std_logic                     := '0';             --    wren_a.wren_a
		wren_b    : in  std_logic                     := '0';             --    wren_b.wren_b
		clock     : in  std_logic                     := '0';             --     clock.clk
		rden_a    : in  std_logic                     := '0';             --    rden_a.rden_a
		rden_b    : in  std_logic                     := '0'              --    rden_b.rden_b
	);
end entity ram;

architecture rtl of ram is
	component ram_ram_2port_191_cg5iama_cmp is
		port (
			data_a    : in  std_logic_vector(63 downto 0) := (others => 'X'); -- datain_a
			q_a       : out std_logic_vector(63 downto 0);                    -- dataout_a
			data_b    : in  std_logic_vector(63 downto 0) := (others => 'X'); -- datain_b
			q_b       : out std_logic_vector(63 downto 0);                    -- dataout_b
			address_a : in  std_logic_vector(3 downto 0)  := (others => 'X'); -- address_a
			address_b : in  std_logic_vector(3 downto 0)  := (others => 'X'); -- address_b
			wren_a    : in  std_logic                     := 'X';             -- wren_a
			wren_b    : in  std_logic                     := 'X';             -- wren_b
			clock     : in  std_logic                     := 'X';             -- clk
			rden_a    : in  std_logic                     := 'X';             -- rden_a
			rden_b    : in  std_logic                     := 'X'              -- rden_b
		);
	end component ram_ram_2port_191_cg5iama_cmp;

	for ram_2port_0 : ram_ram_2port_191_cg5iama_cmp
		use entity ram_2port_191.ram_ram_2port_191_cg5iama;
begin

	ram_2port_0 : component ram_ram_2port_191_cg5iama_cmp
		port map (
			data_a    => data_a,    --    data_a.datain_a
			q_a       => q_a,       --       q_a.dataout_a
			data_b    => data_b,    --    data_b.datain_b
			q_b       => q_b,       --       q_b.dataout_b
			address_a => address_a, -- address_a.address_a
			address_b => address_b, -- address_b.address_b
			wren_a    => wren_a,    --    wren_a.wren_a
			wren_b    => wren_b,    --    wren_b.wren_b
			clock     => clock,     --     clock.clk
			rden_a    => rden_a,    --    rden_a.rden_a
			rden_b    => rden_b     --    rden_b.rden_b
		);

end architecture rtl; -- of ram
