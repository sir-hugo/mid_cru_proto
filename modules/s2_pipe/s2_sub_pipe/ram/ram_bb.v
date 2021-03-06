module ram (
		input  wire [63:0] data_a,    //    data_a.datain_a
		output wire [63:0] q_a,       //       q_a.dataout_a
		input  wire [63:0] data_b,    //    data_b.datain_b
		output wire [63:0] q_b,       //       q_b.dataout_b
		input  wire [3:0]  address_a, // address_a.address_a
		input  wire [3:0]  address_b, // address_b.address_b
		input  wire        wren_a,    //    wren_a.wren_a
		input  wire        wren_b,    //    wren_b.wren_b
		input  wire        clock,     //     clock.clk
		input  wire        rden_a,    //    rden_a.rden_a
		input  wire        rden_b     //    rden_b.rden_b
	);
endmodule

