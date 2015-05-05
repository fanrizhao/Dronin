// megafunction wizard: %DDR2 High Performance Controller v8.0%
// GENERATION: XML

// ============================================================
// Megafunction Name(s):
// 			ddr2_24x64_8_controller_phy
// ============================================================
// Generated by DDR2 High Performance Controller 8.0 [Altera, IP Toolbench 1.3.0 Build 214]
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


module ddr2_24x64_8 (
	local_address,
	local_write_req,
	local_read_req,
	local_wdata,
	local_be,
	local_size,
	oct_ctl_rs_value,
	oct_ctl_rt_value,
	global_reset_n,
	pll_ref_clk,
	soft_reset_n,
	local_ready,
	local_rdata,
	local_rdata_valid,
	reset_request_n,
	mem_odt,
	mem_cs_n,
	mem_cke,
	mem_addr,
	mem_ba,
	mem_ras_n,
	mem_cas_n,
	mem_we_n,
	mem_dm,
	local_refresh_ack,
	local_wdata_req,
	local_init_done,
	reset_phy_clk_n,
	phy_clk,
	aux_full_rate_clk,
	aux_half_rate_clk,
	mem_clk,
	mem_clk_n,
	mem_dq,
	mem_dqs,
	mem_dqsn);


	input	[23:0]	local_address;
	input		local_write_req;
	input		local_read_req;
	input	[127:0]	local_wdata;
	input	[15:0]	local_be;
	input	[1:0]	local_size;
	input	[13:0]	oct_ctl_rs_value;
	input	[13:0]	oct_ctl_rt_value;
	input		global_reset_n;
	input		pll_ref_clk;
	input		soft_reset_n;
	output		local_ready;
	output	[127:0]	local_rdata;
	output		local_rdata_valid;
	output		reset_request_n;
	output	[0:0]	mem_odt;
	output	[0:0]	mem_cs_n;
	output	[0:0]	mem_cke;
	output	[12:0]	mem_addr;
	output	[1:0]	mem_ba;
	output		mem_ras_n;
	output		mem_cas_n;
	output		mem_we_n;
	output	[7:0]	mem_dm;
	output		local_refresh_ack;
	output		local_wdata_req;
	output		local_init_done;
	output		reset_phy_clk_n;
	output		phy_clk;
	output		aux_full_rate_clk;
	output		aux_half_rate_clk;
	inout	[0:0]	mem_clk;
	inout	[0:0]	mem_clk_n;
	inout	[63:0]	mem_dq;
	inout	[7:0]	mem_dqs;
	inout	[7:0]	mem_dqsn;

	wire signal_wire0 = 1'b0;
	wire signal_wire1 = 1'b0;
	wire [5:0] signal_wire2 = 6'b0;
	wire signal_wire3 = 1'b0;
	wire signal_wire4 = 1'b0;
	wire signal_wire5 = 1'b0;
	wire signal_wire6 = 1'b0;
	wire [3:0] signal_wire7 = 4'b0;
	wire [2:0] signal_wire8 = 3'b0;
	wire [8:0] signal_wire9 = 9'b0;
	wire signal_wire10 = 1'b0;
	wire signal_wire11 = 1'b0;
	wire signal_wire12 = 1'b0;
	wire signal_wire13 = 1'b0;

	ddr2_24x64_8_controller_phy	ddr2_24x64_8_controller_phy_inst(
		.local_address(local_address),
		.local_write_req(local_write_req),
		.local_read_req(local_read_req),
		.local_burstbegin(signal_wire0),
		.local_wdata(local_wdata),
		.local_be(local_be),
		.local_size(local_size),
		.local_refresh_req(signal_wire1),
		.oct_ctl_rs_value(oct_ctl_rs_value),
		.oct_ctl_rt_value(oct_ctl_rt_value),
		.dqs_delay_ctrl_import(signal_wire2),
		.pll_reconfig_enable(signal_wire3),
		.pll_reconfig_write_param(signal_wire4),
		.pll_reconfig_read_param(signal_wire5),
		.pll_reconfig(signal_wire6),
		.pll_reconfig_counter_type(signal_wire7),
		.pll_reconfig_counter_param(signal_wire8),
		.pll_reconfig_data_in(signal_wire9),
		.pll_reconfig_soft_reset_en_n(signal_wire10),
		.global_reset_n(global_reset_n),
		.local_autopch_req(signal_wire11),
		.local_powerdn_req(signal_wire12),
		.local_self_rfsh_req(signal_wire13),
		.pll_ref_clk(pll_ref_clk),
		.soft_reset_n(soft_reset_n),
		.local_ready(local_ready),
		.local_rdata(local_rdata),
		.local_rdata_valid(local_rdata_valid),
		.reset_request_n(reset_request_n),
		.mem_odt(mem_odt),
		.mem_cs_n(mem_cs_n),
		.mem_cke(mem_cke),
		.mem_addr(mem_addr),
		.mem_ba(mem_ba),
		.mem_ras_n(mem_ras_n),
		.mem_cas_n(mem_cas_n),
		.mem_we_n(mem_we_n),
		.mem_dm(mem_dm),
		.local_refresh_ack(local_refresh_ack),
		.local_wdata_req(local_wdata_req),
		.local_init_done(local_init_done),
		.reset_phy_clk_n(reset_phy_clk_n),
		.mem_reset_n(),
		.dll_reference_clk(),
		.dqs_delay_ctrl_export(),
		.pll_reconfig_busy(),
		.pll_reconfig_data_out(),
		.pll_reconfig_clk(),
		.pll_reconfig_reset(),
		.local_powerdn_ack(),
		.local_self_rfsh_ack(),
		.phy_clk(phy_clk),
		.aux_full_rate_clk(aux_full_rate_clk),
		.aux_half_rate_clk(aux_half_rate_clk),
		.mem_clk(mem_clk),
		.mem_clk_n(mem_clk_n),
		.mem_dq(mem_dq),
		.mem_dqs(mem_dqs),
		.mem_dqsn(mem_dqsn));
endmodule

// =========================================================
// DDR2 High Performance Controller Wizard Data
// ===============================
// DO NOT EDIT FOLLOWING DATA
// @Altera, IP Toolbench@
// Warning: If you modify this section, DDR2 High Performance Controller Wizard may not be able to reproduce your chosen configuration.
// 
// Retrieval info: <?xml version="1.0"?>
// Retrieval info: <MEGACORE title="DDR2 SDRAM High Performance Controller"  version="8.0"  build="214"  iptb_version="1.3.0 Build 214"  format_version="120" >
// Retrieval info:  <NETLIST_SECTION class="altera.ipbu.flowbase.netlist.model.DDRControllerMVCModel"  active_core="ddr2_24x64_8_controller_phy" >
// Retrieval info:   <STATIC_SECTION>
// Retrieval info:    <PRIVATES>
// Retrieval info:     <NAMESPACE name = "parameterization">
// Retrieval info:      <PRIVATE name = "debug_en" value="false"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "export_debug_port" value="false"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "use_generated_memory_model" value="true"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "dedicated_memory_clk_phase_label" value="Dedicated memory clock phase:"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "mem_if_clk_mhz" value="266.667"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "quartus_project_exists" value="true"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "local_if_drate" value="Full"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "enable_v72_rsu" value="false"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "local_if_clk_mhz_label" value="(266.7 MHz)"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "new_variant" value="true"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "mem_if_memtype" value="DDR2 SDRAM"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "pll_ref_clk_mhz" value="100.0"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "mem_if_clk_ps_label" value="(3750 ps)"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "family" value="Stratix III"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "project_family" value="Stratix III"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "speed_grade" value="3"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "dedicated_memory_clk_phase" value="0"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "pll_ref_clk_ps_label" value="(10000 ps)"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "avalon_burst_length" value="1"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "WIDTH_RATIO" value="4"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "mem_if_pchaddr_bit" value="10"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "mem_if_clk_pair_count" value="1"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "vendor" value="JEDEC"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "chip_or_dimm" value="Discrete Device"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "mem_fmax" value="266.667"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "mem_if_cs_per_dimm" value="1"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "pre_latency_label" value="Fix read latency at:"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "dedicated_memory_clk_en" value="false"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "mem_if_bankaddr_width" value="2"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "mem_if_preset_rlat" value="0"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "post_latency_label" value="cycles (0 cycles=minimum latency, non-deterministic)"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "mem_dyn_deskew_en" value="false"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "mem_if_cs_width" value="1"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "mem_if_rowaddr_width" value="13"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "local_if_dwidth_label" value="128"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "mem_if_dm_pins_en" value="Yes"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "mem_if_preset" value="JEDEC DDR2-533 256Mb x8"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "fast_simulation_en" value="FAST"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "mem_if_coladdr_width" value="10"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "mem_if_dq_per_dqs" value="8"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "mem_if_dwidth" value="64"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "mem_tiha_ps" value="500"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "mem_tdsh_ck" value="0.2"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "mem_if_trfc_ns" value="75.0"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "mem_tqh_ck" value="0.36"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "mem_tisa_ps" value="500"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "mem_tdss_ck" value="0.2"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "mem_if_tinit_us" value="200.0"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "mem_if_trcd_ns" value="15.0"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "mem_if_twtr_ck" value="2"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "mem_tdqss_ck" value="0.25"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "mem_tqhs_ps" value="400"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "mem_tdsa_ps" value="350"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "mem_tac_ps" value="500"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "mem_tdha_ps" value="350"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "mem_if_tras_ns" value="45.0"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "mem_if_twr_ns" value="15.0"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "mem_tdqsck_ps" value="450"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "mem_if_trp_ns" value="15.0"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "mem_tdqsq_ps" value="300"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "mem_if_tmrd_ns" value="7.0"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "mem_if_trefi_us" value="7.0"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "mem_tcl" value="4.0"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "mem_tcl_40_fmax" value="266.667"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "mem_odt" value="Disabled"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "mem_dll_en" value="Yes"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "ac_phase" value="270"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "mem_drv_str" value="Normal"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "mem_if_oct_en" value="false"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "input_period" value="0"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "mem_tcl_60_fmax" value="266.667"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "board_skew_ps" value="20"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "mem_if_dqsn_en" value="true"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "dll_external" value="false"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "mem_tcl_15_fmax" value="533.0"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "mem_tcl_30_fmax" value="200.0"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "mem_bl" value="4"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "ac_clk_select" value="dedicated"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "mem_tcl_50_fmax" value="266.667"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "mem_tcl_25_fmax" value="533.0"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "mem_tcl_20_fmax" value="533.0"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "pll_reconfig_ports_en" value="false"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "mem_btype" value="Sequential"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "ctl_ecc_en" value="false"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "user_refresh_en" value="false"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "local_if_type_avalon" value="false"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "ctl_self_refresh_en" value="false"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "ctl_autopch_en" value="false"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "ctl_powerdn_en" value="false"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "tool_context" value="STANDALONE"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "mem_srtr" value="Normal"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "mem_mpr_loc" value="Predefined Pattern"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "dss_tinit_rst_us" value="200.0"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "mem_tcl_90_fmax" value="400.0"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "mem_rtt_wr" value="Dynamic ODT off"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "mem_tcl_100_fmax" value="400.0"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "mem_pasr" value="Full Array"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "mem_asrm" value="Manual SR Reference (SRT)"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "mem_mpr_oper" value="Predefined Pattern"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "mem_tcl_80_fmax" value="400.0"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "mem_drv_impedance" value="RZQ/7"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "mem_rtt_nom" value="ODT Disabled"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "mem_tcl_70_fmax" value="400.0"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "mem_wtcl" value="5.0"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "mem_dll_pch" value="Fast Exit"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "mem_atcl" value="Disabled"  type="STRING"  enable="1" />
// Retrieval info:     </NAMESPACE>
// Retrieval info:     <NAMESPACE name = "simgen">
// Retrieval info:      <PRIVATE name = "use_alt_top" value="1"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "alt_top" value="ddr2_24x64_8_auk_ddr_hp_controller_wrapper"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "nativelink_excludes" value="ddr2_24x64_8_phy_alt_mem_phy_sequencer_wrapper.v,alt_mem_phy_sequencer.vhd,ddr2_24x64_8_phy_alt_mem_phy_dss_wrapper.v,alt_mem_phy_dss.vhd"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "family" value="Stratix III"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "filename" value="ddr2_24x64_8_auk_ddr_hp_controller_wrapper.vo"  type="STRING"  enable="1" />
// Retrieval info:     </NAMESPACE>
// Retrieval info:     <NAMESPACE name = "simgen2">
// Retrieval info:      <PRIVATE name = "family" value="Stratix III"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "command" value="--simgen_arbitrary_blackbox=+ddr2_24x64_8_phy_alt_mem_phy_delay;+ddr2_24x64_8_alt_mem_phy_sequencer_wrapper;+ddr2_24x64_8_alt_mem_phy_reconfig_siii;+ddr2_24x64_8_alt_mem_phy_pll_siii --ini=simgen_tri_bus_opt=on"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "parameter" value="SIMGEN_INITIALIZATION_FILE=/autofs/jayar/b/b5/weizer/research/project/alpharelease/CoreLib/ddr2_24x64_8/ddr2_24x64_8_simgen_init.txt"  type="STRING"  enable="1" />
// Retrieval info:     </NAMESPACE>
// Retrieval info:     <NAMESPACE name = "simgen_enable">
// Retrieval info:      <PRIVATE name = "language" value="Verilog HDL"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "enabled" value="0"  type="STRING"  enable="1" />
// Retrieval info:     </NAMESPACE>
// Retrieval info:     <NAMESPACE name = "qip">
// Retrieval info:      <PRIVATE name = "gx_libs" value="1"  type="STRING"  enable="1" />
// Retrieval info:     </NAMESPACE>
// Retrieval info:     <NAMESPACE name = "greybox">
// Retrieval info:      <PRIVATE name = "filename" value="ddr2_24x64_8_gb.v"  type="STRING"  enable="1" />
// Retrieval info:     </NAMESPACE>
// Retrieval info:     <NAMESPACE name = "serializer"/>
// Retrieval info:    </PRIVATES>
// Retrieval info:    <FILES/>
// Retrieval info:    <PORTS/>
// Retrieval info:    <LIBRARIES/>
// Retrieval info:   </STATIC_SECTION>
// Retrieval info:  </NETLIST_SECTION>
// Retrieval info: </MEGACORE>
// =========================================================
