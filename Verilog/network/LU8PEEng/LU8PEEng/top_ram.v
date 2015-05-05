module top_ram (
	clock,
	data,
	rdaddress,
	wraddress,
	wren,
	q);

	parameter TOPSIZE = 1024, TOPSIZEWIDTH = 10, TOPWIDTH = 32;
	
	input	  clock;
	input	[TOPWIDTH-1:0]  data;
	input	[TOPSIZEWIDTH-1:0]  rdaddress;
	input	[TOPSIZEWIDTH-1:0]  wraddress;
	input	  wren;
	output	[TOPWIDTH-1:0]  q;

	wire [TOPWIDTH-1:0] sub_wire0;
	wire [TOPWIDTH-1:0] q = sub_wire0[TOPWIDTH-1:0];

	altsyncram	altsyncram_component (
				.wren_a (wren),
				.clock0 (clock),
				.address_a (wraddress),
				.address_b (rdaddress),
				.data_a (data),
				.q_b (sub_wire0),
				.aclr0 (1'b0),
				.aclr1 (1'b0),
				.addressstall_a (1'b0),
				.addressstall_b (1'b0),
				.byteena_a (1'b1),
				.byteena_b (1'b1),
				.clock1 (1'b1),
				.clocken0 (1'b1),
				.clocken1 (1'b1),
				.clocken2 (1'b1),
				.clocken3 (1'b1),
				.data_b ({TOPWIDTH{1'b1}}),
				.eccstatus (),
				.q_a (),
				.rden_a (1'b1),
				.rden_b (1'b1),
				.wren_b (1'b0));
	defparam
		altsyncram_component.address_aclr_b = "NONE",
		altsyncram_component.address_reg_b = "CLOCK0",
		altsyncram_component.clock_enable_input_a = "BYPASS",
		altsyncram_component.clock_enable_input_b = "BYPASS",
		altsyncram_component.clock_enable_output_b = "BYPASS",
		altsyncram_component.intended_device_family = "Stratix III",
		altsyncram_component.lpm_type = "altsyncram",
		altsyncram_component.numwords_a = TOPSIZE,
		altsyncram_component.numwords_b = TOPSIZE,
		altsyncram_component.operation_mode = "DUAL_PORT",
		altsyncram_component.outdata_aclr_b = "NONE",
		altsyncram_component.outdata_reg_b = "CLOCK0",
		altsyncram_component.power_up_uninitialized = "FALSE",
		altsyncram_component.read_during_write_mode_mixed_ports = "DONT_CARE",
		altsyncram_component.widthad_a = TOPSIZEWIDTH,
		altsyncram_component.widthad_b = TOPSIZEWIDTH,
		altsyncram_component.width_a = TOPWIDTH,
		altsyncram_component.width_b = TOPWIDTH,
		altsyncram_component.width_byteena_a = 1;


endmodule
