// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Mon Jan 30 09:52:17 2023
// Host        : LAPTOP-BQSK3RO4 running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               C:/Users/oscar/OneDrive/Escritorio/UNIVERSIDAD/MSC_22_23/MSC/tutotial/tutotial.sim/sim_1/impl/timing/xsim/shifter16_tb_time_impl.v
// Design      : shifter16
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* ECO_CHECKSUM = "ea27dda" *) 
(* NotValidForBitStream *)
module shifter16
   (clk,
    rst,
    ce,
    direction,
    polarity,
    shifter_out);
  input clk;
  input rst;
  input ce;
  input direction;
  input polarity;
  output [15:0]shifter_out;

  wire \c_out[0]_i_1_n_0 ;
  wire \c_out[1]_i_1_n_0 ;
  wire \c_out[2]_i_1_n_0 ;
  wire \c_out[3]_i_1_n_0 ;
  wire [3:0]c_out_reg__0;
  wire ce;
  wire ce_IBUF;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire direction;
  wire direction_IBUF;
  wire polarity;
  wire polarity_IBUF;
  wire rst;
  wire rst_IBUF;
  wire [15:0]shifter_out;
  wire [15:0]shifter_out_OBUF;

initial begin
 $sdf_annotate("shifter16_tb_time_impl.sdf",,,,"tool_control");
end
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \c_out[0]_i_1 
       (.I0(c_out_reg__0[0]),
        .O(\c_out[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \c_out[1]_i_1 
       (.I0(c_out_reg__0[0]),
        .I1(direction_IBUF),
        .I2(c_out_reg__0[1]),
        .O(\c_out[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hD2B4)) 
    \c_out[2]_i_1 
       (.I0(c_out_reg__0[0]),
        .I1(direction_IBUF),
        .I2(c_out_reg__0[2]),
        .I3(c_out_reg__0[1]),
        .O(\c_out[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hBF40FD02)) 
    \c_out[3]_i_1 
       (.I0(direction_IBUF),
        .I1(c_out_reg__0[0]),
        .I2(c_out_reg__0[1]),
        .I3(c_out_reg__0[3]),
        .I4(c_out_reg__0[2]),
        .O(\c_out[3]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \c_out_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(ce_IBUF),
        .CLR(rst_IBUF),
        .D(\c_out[0]_i_1_n_0 ),
        .Q(c_out_reg__0[0]));
  FDCE #(
    .INIT(1'b0)) 
    \c_out_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(ce_IBUF),
        .CLR(rst_IBUF),
        .D(\c_out[1]_i_1_n_0 ),
        .Q(c_out_reg__0[1]));
  FDCE #(
    .INIT(1'b0)) 
    \c_out_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(ce_IBUF),
        .CLR(rst_IBUF),
        .D(\c_out[2]_i_1_n_0 ),
        .Q(c_out_reg__0[2]));
  FDCE #(
    .INIT(1'b0)) 
    \c_out_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(ce_IBUF),
        .CLR(rst_IBUF),
        .D(\c_out[3]_i_1_n_0 ),
        .Q(c_out_reg__0[3]));
  IBUF ce_IBUF_inst
       (.I(ce),
        .O(ce_IBUF));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  IBUF direction_IBUF_inst
       (.I(direction),
        .O(direction_IBUF));
  IBUF polarity_IBUF_inst
       (.I(polarity),
        .O(polarity_IBUF));
  IBUF rst_IBUF_inst
       (.I(rst),
        .O(rst_IBUF));
  OBUF \shifter_out_OBUF[0]_inst 
       (.I(shifter_out_OBUF[0]),
        .O(shifter_out[0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h55555556)) 
    \shifter_out_OBUF[0]_inst_i_1 
       (.I0(polarity_IBUF),
        .I1(c_out_reg__0[1]),
        .I2(c_out_reg__0[0]),
        .I3(c_out_reg__0[2]),
        .I4(c_out_reg__0[3]),
        .O(shifter_out_OBUF[0]));
  OBUF \shifter_out_OBUF[10]_inst 
       (.I(shifter_out_OBUF[10]),
        .O(shifter_out[10]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h55555595)) 
    \shifter_out_OBUF[10]_inst_i_1 
       (.I0(polarity_IBUF),
        .I1(c_out_reg__0[3]),
        .I2(c_out_reg__0[1]),
        .I3(c_out_reg__0[2]),
        .I4(c_out_reg__0[0]),
        .O(shifter_out_OBUF[10]));
  OBUF \shifter_out_OBUF[11]_inst 
       (.I(shifter_out_OBUF[11]),
        .O(shifter_out[11]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h55955555)) 
    \shifter_out_OBUF[11]_inst_i_1 
       (.I0(polarity_IBUF),
        .I1(c_out_reg__0[1]),
        .I2(c_out_reg__0[0]),
        .I3(c_out_reg__0[2]),
        .I4(c_out_reg__0[3]),
        .O(shifter_out_OBUF[11]));
  OBUF \shifter_out_OBUF[12]_inst 
       (.I(shifter_out_OBUF[12]),
        .O(shifter_out[12]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h55555595)) 
    \shifter_out_OBUF[12]_inst_i_1 
       (.I0(polarity_IBUF),
        .I1(c_out_reg__0[2]),
        .I2(c_out_reg__0[3]),
        .I3(c_out_reg__0[1]),
        .I4(c_out_reg__0[0]),
        .O(shifter_out_OBUF[12]));
  OBUF \shifter_out_OBUF[13]_inst 
       (.I(shifter_out_OBUF[13]),
        .O(shifter_out[13]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h55955555)) 
    \shifter_out_OBUF[13]_inst_i_1 
       (.I0(polarity_IBUF),
        .I1(c_out_reg__0[3]),
        .I2(c_out_reg__0[0]),
        .I3(c_out_reg__0[1]),
        .I4(c_out_reg__0[2]),
        .O(shifter_out_OBUF[13]));
  OBUF \shifter_out_OBUF[14]_inst 
       (.I(shifter_out_OBUF[14]),
        .O(shifter_out[14]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h55955555)) 
    \shifter_out_OBUF[14]_inst_i_1 
       (.I0(polarity_IBUF),
        .I1(c_out_reg__0[1]),
        .I2(c_out_reg__0[3]),
        .I3(c_out_reg__0[0]),
        .I4(c_out_reg__0[2]),
        .O(shifter_out_OBUF[14]));
  OBUF \shifter_out_OBUF[15]_inst 
       (.I(shifter_out_OBUF[15]),
        .O(shifter_out[15]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h95555555)) 
    \shifter_out_OBUF[15]_inst_i_1 
       (.I0(polarity_IBUF),
        .I1(c_out_reg__0[1]),
        .I2(c_out_reg__0[0]),
        .I3(c_out_reg__0[2]),
        .I4(c_out_reg__0[3]),
        .O(shifter_out_OBUF[15]));
  OBUF \shifter_out_OBUF[1]_inst 
       (.I(shifter_out_OBUF[1]),
        .O(shifter_out[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h55555565)) 
    \shifter_out_OBUF[1]_inst_i_1 
       (.I0(polarity_IBUF),
        .I1(c_out_reg__0[1]),
        .I2(c_out_reg__0[0]),
        .I3(c_out_reg__0[2]),
        .I4(c_out_reg__0[3]),
        .O(shifter_out_OBUF[1]));
  OBUF \shifter_out_OBUF[2]_inst 
       (.I(shifter_out_OBUF[2]),
        .O(shifter_out[2]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h55555565)) 
    \shifter_out_OBUF[2]_inst_i_1 
       (.I0(polarity_IBUF),
        .I1(c_out_reg__0[0]),
        .I2(c_out_reg__0[1]),
        .I3(c_out_reg__0[2]),
        .I4(c_out_reg__0[3]),
        .O(shifter_out_OBUF[2]));
  OBUF \shifter_out_OBUF[3]_inst 
       (.I(shifter_out_OBUF[3]),
        .O(shifter_out[3]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h55555595)) 
    \shifter_out_OBUF[3]_inst_i_1 
       (.I0(polarity_IBUF),
        .I1(c_out_reg__0[1]),
        .I2(c_out_reg__0[0]),
        .I3(c_out_reg__0[2]),
        .I4(c_out_reg__0[3]),
        .O(shifter_out_OBUF[3]));
  OBUF \shifter_out_OBUF[4]_inst 
       (.I(shifter_out_OBUF[4]),
        .O(shifter_out[4]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h55555565)) 
    \shifter_out_OBUF[4]_inst_i_1 
       (.I0(polarity_IBUF),
        .I1(c_out_reg__0[1]),
        .I2(c_out_reg__0[2]),
        .I3(c_out_reg__0[0]),
        .I4(c_out_reg__0[3]),
        .O(shifter_out_OBUF[4]));
  OBUF \shifter_out_OBUF[5]_inst 
       (.I(shifter_out_OBUF[5]),
        .O(shifter_out[5]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h55555595)) 
    \shifter_out_OBUF[5]_inst_i_1 
       (.I0(polarity_IBUF),
        .I1(c_out_reg__0[2]),
        .I2(c_out_reg__0[0]),
        .I3(c_out_reg__0[1]),
        .I4(c_out_reg__0[3]),
        .O(shifter_out_OBUF[5]));
  OBUF \shifter_out_OBUF[6]_inst 
       (.I(shifter_out_OBUF[6]),
        .O(shifter_out[6]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h55555595)) 
    \shifter_out_OBUF[6]_inst_i_1 
       (.I0(polarity_IBUF),
        .I1(c_out_reg__0[2]),
        .I2(c_out_reg__0[1]),
        .I3(c_out_reg__0[0]),
        .I4(c_out_reg__0[3]),
        .O(shifter_out_OBUF[6]));
  OBUF \shifter_out_OBUF[7]_inst 
       (.I(shifter_out_OBUF[7]),
        .O(shifter_out[7]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h55955555)) 
    \shifter_out_OBUF[7]_inst_i_1 
       (.I0(polarity_IBUF),
        .I1(c_out_reg__0[1]),
        .I2(c_out_reg__0[0]),
        .I3(c_out_reg__0[3]),
        .I4(c_out_reg__0[2]),
        .O(shifter_out_OBUF[7]));
  OBUF \shifter_out_OBUF[8]_inst 
       (.I(shifter_out_OBUF[8]),
        .O(shifter_out[8]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h55555565)) 
    \shifter_out_OBUF[8]_inst_i_1 
       (.I0(polarity_IBUF),
        .I1(c_out_reg__0[1]),
        .I2(c_out_reg__0[3]),
        .I3(c_out_reg__0[2]),
        .I4(c_out_reg__0[0]),
        .O(shifter_out_OBUF[8]));
  OBUF \shifter_out_OBUF[9]_inst 
       (.I(shifter_out_OBUF[9]),
        .O(shifter_out[9]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h55555595)) 
    \shifter_out_OBUF[9]_inst_i_1 
       (.I0(polarity_IBUF),
        .I1(c_out_reg__0[3]),
        .I2(c_out_reg__0[0]),
        .I3(c_out_reg__0[2]),
        .I4(c_out_reg__0[1]),
        .O(shifter_out_OBUF[9]));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
