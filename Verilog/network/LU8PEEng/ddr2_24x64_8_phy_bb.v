// Generated by altmemphy 8.0 [Altera, IP Toolbench 1.3.0 Build 214]
// ************************************************************
// THIS IS A WIZARD-GENERATED FILE. DO NOT EDIT THIS FILE!
// ************************************************************
// Copyright (C) 1991-2008 Altera Corporation
// Any megafunction design, and related net list (encrypted or decrypted),
// support information, device programming or simulation file, and any other
// associated documentation or information provided by Altera or a partner
// under Altera's Megafunction Partnership Program may be used only to
// program PLD devices (but not masked PLD devices) from Altera.  Any other
// use of such megafunction design, net list, support information, device
// programming or simulation file, or any other related documentation or
// information is prohibited for any other purpose, including, but not
// limited to modification, reverse engineering, de-compiling, or use with
// any other silicon devices, unless such use is explicitly licensed under
// a separate agreement with Altera or a megafunction partner.  Title to
// the intellectual property, including patents, copyrights, trademarks,
// trade secrets, or maskworks, embodied in any such megafunction design,
// net list, support information, device programming or simulation file, or
// any other related documentation or information provided by Altera or a
// megafunction partner, remains with Altera, the megafunction partner, or
// their respective licensors.  No other licenses, including any licenses
// needed under any third party's intellectual property, are provided herein.

module ddr2_24x64_8_phy (
	pll_ref_clk,
	global_reset_n,
	soft_reset_n,
	local_address,
	local_read_req,
	local_wdata,
	local_write_req,
	local_size,
	local_be,
	local_refresh_req,
	local_burstbegin,
	ctl_ready,
	ctl_wdata_req,
	ctl_rdata,
	ctl_rdata_valid,
	ctl_refresh_ack,
	ctl_mem_addr_h,
	ctl_mem_addr_l,
	ctl_mem_ba_h,
	ctl_mem_ba_l,
	ctl_mem_cas_n_h,
	ctl_mem_cas_n_l,
	ctl_mem_cke_h,
	ctl_mem_cke_l,
	ctl_mem_cs_n_h,
	ctl_mem_cs_n_l,
	ctl_mem_odt_h,
	ctl_mem_odt_l,
	ctl_mem_ras_n_h,
	ctl_mem_ras_n_l,
	ctl_mem_we_n_h,
	ctl_mem_we_n_l,
	ctl_mem_be,
	ctl_mem_dqs_burst,
	ctl_mem_wdata,
	ctl_mem_wdata_valid,
	ctl_init_done,
	ctl_doing_rd,
	ctl_add_1t_ac_lat,
	ctl_add_1t_odt_lat,
	ctl_add_intermediate_regs,
	ctl_negedge_en,
	dqs_delay_ctrl_import,
	pll_reconfig_enable,
	pll_reconfig_counter_type,
	pll_reconfig_counter_param,
	pll_reconfig_data_in,
	pll_reconfig_read_param,
	pll_reconfig_write_param,
	pll_reconfig,
	oct_ctl_rs_value,
	oct_ctl_rt_value,
	local_autopch_req,
	local_powerdn_req,
	local_self_rfsh_req,
	ctl_self_rfsh_ack,
	ctl_powerdn_ack,
	reset_request_n,
	phy_clk,
	reset_phy_clk_n,
	aux_half_rate_clk,
	aux_full_rate_clk,
	local_ready,
	local_rdata,
	local_rdata_valid,
	local_init_done,
	local_refresh_ack,
	local_wdata_req,
	ctl_address,
	ctl_read_req,
	ctl_wdata,
	ctl_write_req,
	ctl_size,
	ctl_be,
	ctl_refresh_req,
	ctl_burstbegin,
	ctl_mem_rdata,
	ctl_mem_rdata_valid,
	ctl_rlat,
	ctl_usr_mode_rdy,
	mem_addr,
	mem_ba,
	mem_cas_n,
	mem_cke,
	mem_cs_n,
	mem_dm,
	mem_odt,
	mem_ras_n,
	mem_we_n,
	mem_reset_n,
	resynchronisation_successful,
	postamble_successful,
	tracking_successful,
	tracking_adjustment_up,
	tracking_adjustment_down,
	dqs_delay_ctrl_export,
	dll_reference_clk,
	pll_reconfig_clk,
	pll_reconfig_reset,
	pll_reconfig_data_out,
	pll_reconfig_busy,
	local_self_rfsh_ack,
	local_powerdn_ack,
	ctl_autopch_req,
	ctl_powerdn_req,
	ctl_self_rfsh_req,
	mem_clk,
	mem_clk_n,
	mem_dq,
	mem_dqs,
	mem_dqsn);

	input		pll_ref_clk;
	input		global_reset_n;
	input		soft_reset_n;
	input	[23:0]	local_address;
	input		local_read_req;
	input	[127:0]	local_wdata;
	input		local_write_req;
	input	[1:0]	local_size;
	input	[15:0]	local_be;
	input		local_refresh_req;
	input		local_burstbegin;
	input		ctl_ready;
	input		ctl_wdata_req;
	input	[127:0]	ctl_rdata;
	input		ctl_rdata_valid;
	input		ctl_refresh_ack;
	input	[12:0]	ctl_mem_addr_h;
	input	[12:0]	ctl_mem_addr_l;
	input	[1:0]	ctl_mem_ba_h;
	input	[1:0]	ctl_mem_ba_l;
	input		ctl_mem_cas_n_h;
	input		ctl_mem_cas_n_l;
	input	[0:0]	ctl_mem_cke_h;
	input	[0:0]	ctl_mem_cke_l;
	input	[0:0]	ctl_mem_cs_n_h;
	input	[0:0]	ctl_mem_cs_n_l;
	input	[0:0]	ctl_mem_odt_h;
	input	[0:0]	ctl_mem_odt_l;
	input		ctl_mem_ras_n_h;
	input		ctl_mem_ras_n_l;
	input		ctl_mem_we_n_h;
	input		ctl_mem_we_n_l;
	input	[15:0]	ctl_mem_be;
	input		ctl_mem_dqs_burst;
	input	[127:0]	ctl_mem_wdata;
	input		ctl_mem_wdata_valid;
	input		ctl_init_done;
	input		ctl_doing_rd;
	input		ctl_add_1t_ac_lat;
	input		ctl_add_1t_odt_lat;
	input		ctl_add_intermediate_regs;
	input		ctl_negedge_en;
	input	[5:0]	dqs_delay_ctrl_import;
	input		pll_reconfig_enable;
	input	[3:0]	pll_reconfig_counter_type;
	input	[2:0]	pll_reconfig_counter_param;
	input	[8:0]	pll_reconfig_data_in;
	input		pll_reconfig_read_param;
	input		pll_reconfig_write_param;
	input		pll_reconfig;
	input	[13:0]	oct_ctl_rs_value;
	input	[13:0]	oct_ctl_rt_value;
	input		local_autopch_req;
	input		local_powerdn_req;
	input		local_self_rfsh_req;
	input		ctl_self_rfsh_ack;
	input		ctl_powerdn_ack;
	output		reset_request_n;
	output		phy_clk;
	output		reset_phy_clk_n;
	output		aux_half_rate_clk;
	output		aux_full_rate_clk;
	output		local_ready;
	output	[127:0]	local_rdata;
	output		local_rdata_valid;
	output		local_init_done;
	output		local_refresh_ack;
	output		local_wdata_req;
	output	[23:0]	ctl_address;
	output		ctl_read_req;
	output	[127:0]	ctl_wdata;
	output		ctl_write_req;
	output	[1:0]	ctl_size;
	output	[15:0]	ctl_be;
	output		ctl_refresh_req;
	output		ctl_burstbegin;
	output	[127:0]	ctl_mem_rdata;
	output		ctl_mem_rdata_valid;
	output	[5:0]	ctl_rlat;
	output		ctl_usr_mode_rdy;
	output	[12:0]	mem_addr;
	output	[1:0]	mem_ba;
	output		mem_cas_n;
	output	[0:0]	mem_cke;
	output	[0:0]	mem_cs_n;
	output	[7:0]	mem_dm;
	output	[0:0]	mem_odt;
	output		mem_ras_n;
	output		mem_we_n;
	output		mem_reset_n;
	output		resynchronisation_successful;
	output		postamble_successful;
	output		tracking_successful;
	output		tracking_adjustment_up;
	output		tracking_adjustment_down;
	output	[5:0]	dqs_delay_ctrl_export;
	output		dll_reference_clk;
	output		pll_reconfig_clk;
	output		pll_reconfig_reset;
	output	[8:0]	pll_reconfig_data_out;
	output		pll_reconfig_busy;
	output		local_self_rfsh_ack;
	output		local_powerdn_ack;
	output		ctl_autopch_req;
	output		ctl_powerdn_req;
	output		ctl_self_rfsh_req;
	inout	[0:0]	mem_clk;
	inout	[0:0]	mem_clk_n;
	inout	[63:0]	mem_dq;
	inout	[7:0]	mem_dqs;
	inout	[7:0]	mem_dqsn;
endmodule