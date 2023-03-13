// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Sun Mar 12 11:03:33 2023
// Host        : LAPTOP-BQSK3RO4 running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               C:/Users/oscar/OneDrive/Escritorio/UNIVERSIDAD/MSC_22_23/MSC/apartado1/apartado1.sim/sim_1/impl/timing/xsim/cnt_display_tb_time_impl.v
// Design      : cnt_display
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* ECO_CHECKSUM = "c53c369f" *) 
(* NotValidForBitStream *)
module cnt_display
   (CLK,
    RST,
    DATO_BCD,
    DATO_BCD_OK,
    AND_30,
    DP,
    SEG_AG);
  input CLK;
  input RST;
  input [15:0]DATO_BCD;
  input DATO_BCD_OK;
  output [3:0]AND_30;
  output DP;
  output [6:0]SEG_AG;

  wire [3:0]AND_30;
  wire [3:0]AND_30_OBUF;
  wire CLK;
  wire CLK_IBUF;
  wire CLK_IBUF_BUFG;
  wire [15:0]DATO_BCD;
  wire [15:0]DATO_BCD_IBUF;
  wire DATO_BCD_OK;
  wire DATO_BCD_OK_IBUF;
  wire DP;
  wire RST;
  wire RST_IBUF;
  wire [6:0]SEG_AG;
  wire [6:0]SEG_AG_OBUF;
  wire \SEG_AG_OBUF[6]_inst_i_10_n_0 ;
  wire \SEG_AG_OBUF[6]_inst_i_11_n_0 ;
  wire \SEG_AG_OBUF[6]_inst_i_12_n_0 ;
  wire \SEG_AG_OBUF[6]_inst_i_13_n_0 ;
  wire \SEG_AG_OBUF[6]_inst_i_14_n_0 ;
  wire \SEG_AG_OBUF[6]_inst_i_15_n_0 ;
  wire \SEG_AG_OBUF[6]_inst_i_16_n_0 ;
  wire \SEG_AG_OBUF[6]_inst_i_17_n_0 ;
  wire \SEG_AG_OBUF[6]_inst_i_18_n_0 ;
  wire \SEG_AG_OBUF[6]_inst_i_19_n_0 ;
  wire \SEG_AG_OBUF[6]_inst_i_20_n_0 ;
  wire \SEG_AG_OBUF[6]_inst_i_21_n_0 ;
  wire \SEG_AG_OBUF[6]_inst_i_22_n_0 ;
  wire \SEG_AG_OBUF[6]_inst_i_23_n_0 ;
  wire \SEG_AG_OBUF[6]_inst_i_24_n_0 ;
  wire \SEG_AG_OBUF[6]_inst_i_25_n_0 ;
  wire \SEG_AG_OBUF[6]_inst_i_26_n_0 ;
  wire \SEG_AG_OBUF[6]_inst_i_27_n_0 ;
  wire \SEG_AG_OBUF[6]_inst_i_2_n_0 ;
  wire \SEG_AG_OBUF[6]_inst_i_3_n_0 ;
  wire \SEG_AG_OBUF[6]_inst_i_4_n_0 ;
  wire \SEG_AG_OBUF[6]_inst_i_5_n_0 ;
  wire \SEG_AG_OBUF[6]_inst_i_6_n_0 ;
  wire \SEG_AG_OBUF[6]_inst_i_7_n_0 ;
  wire \SEG_AG_OBUF[6]_inst_i_8_n_0 ;
  wire \SEG_AG_OBUF[6]_inst_i_9_n_0 ;
  wire [1:0]counter_multiplexor;
  wire \counter_multiplexor[0]_i_1_n_0 ;
  wire \counter_multiplexor[1]_i_1_n_0 ;
  wire [7:0]counter_prescaler;
  wire \counter_prescaler[4]_i_2_n_0 ;
  wire \counter_prescaler[7]_i_2_n_0 ;
  wire \counter_prescaler_reg_n_0_[0] ;
  wire \counter_prescaler_reg_n_0_[1] ;
  wire \counter_prescaler_reg_n_0_[2] ;
  wire \counter_prescaler_reg_n_0_[3] ;
  wire \counter_prescaler_reg_n_0_[4] ;
  wire \counter_prescaler_reg_n_0_[5] ;
  wire \counter_prescaler_reg_n_0_[6] ;
  wire \counter_prescaler_reg_n_0_[7] ;
  wire [15:0]current_dato_bcd;

initial begin
 $sdf_annotate("cnt_display_tb_time_impl.sdf",,,,"tool_control");
end
  OBUF \AND_30_OBUF[0]_inst 
       (.I(AND_30_OBUF[0]),
        .O(AND_30[0]));
  LUT2 #(
    .INIT(4'hE)) 
    \AND_30_OBUF[0]_inst_i_1 
       (.I0(counter_multiplexor[1]),
        .I1(counter_multiplexor[0]),
        .O(AND_30_OBUF[0]));
  OBUF \AND_30_OBUF[1]_inst 
       (.I(AND_30_OBUF[1]),
        .O(AND_30[1]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \AND_30_OBUF[1]_inst_i_1 
       (.I0(counter_multiplexor[1]),
        .I1(counter_multiplexor[0]),
        .O(AND_30_OBUF[1]));
  OBUF \AND_30_OBUF[2]_inst 
       (.I(AND_30_OBUF[2]),
        .O(AND_30[2]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \AND_30_OBUF[2]_inst_i_1 
       (.I0(counter_multiplexor[0]),
        .I1(counter_multiplexor[1]),
        .O(AND_30_OBUF[2]));
  OBUF \AND_30_OBUF[3]_inst 
       (.I(AND_30_OBUF[3]),
        .O(AND_30[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \AND_30_OBUF[3]_inst_i_1 
       (.I0(counter_multiplexor[1]),
        .I1(counter_multiplexor[0]),
        .O(AND_30_OBUF[3]));
  BUFG CLK_IBUF_BUFG_inst
       (.I(CLK_IBUF),
        .O(CLK_IBUF_BUFG));
  IBUF CLK_IBUF_inst
       (.I(CLK),
        .O(CLK_IBUF));
  IBUF \DATO_BCD_IBUF[0]_inst 
       (.I(DATO_BCD[0]),
        .O(DATO_BCD_IBUF[0]));
  IBUF \DATO_BCD_IBUF[10]_inst 
       (.I(DATO_BCD[10]),
        .O(DATO_BCD_IBUF[10]));
  IBUF \DATO_BCD_IBUF[11]_inst 
       (.I(DATO_BCD[11]),
        .O(DATO_BCD_IBUF[11]));
  IBUF \DATO_BCD_IBUF[12]_inst 
       (.I(DATO_BCD[12]),
        .O(DATO_BCD_IBUF[12]));
  IBUF \DATO_BCD_IBUF[13]_inst 
       (.I(DATO_BCD[13]),
        .O(DATO_BCD_IBUF[13]));
  IBUF \DATO_BCD_IBUF[14]_inst 
       (.I(DATO_BCD[14]),
        .O(DATO_BCD_IBUF[14]));
  IBUF \DATO_BCD_IBUF[15]_inst 
       (.I(DATO_BCD[15]),
        .O(DATO_BCD_IBUF[15]));
  IBUF \DATO_BCD_IBUF[1]_inst 
       (.I(DATO_BCD[1]),
        .O(DATO_BCD_IBUF[1]));
  IBUF \DATO_BCD_IBUF[2]_inst 
       (.I(DATO_BCD[2]),
        .O(DATO_BCD_IBUF[2]));
  IBUF \DATO_BCD_IBUF[3]_inst 
       (.I(DATO_BCD[3]),
        .O(DATO_BCD_IBUF[3]));
  IBUF \DATO_BCD_IBUF[4]_inst 
       (.I(DATO_BCD[4]),
        .O(DATO_BCD_IBUF[4]));
  IBUF \DATO_BCD_IBUF[5]_inst 
       (.I(DATO_BCD[5]),
        .O(DATO_BCD_IBUF[5]));
  IBUF \DATO_BCD_IBUF[6]_inst 
       (.I(DATO_BCD[6]),
        .O(DATO_BCD_IBUF[6]));
  IBUF \DATO_BCD_IBUF[7]_inst 
       (.I(DATO_BCD[7]),
        .O(DATO_BCD_IBUF[7]));
  IBUF \DATO_BCD_IBUF[8]_inst 
       (.I(DATO_BCD[8]),
        .O(DATO_BCD_IBUF[8]));
  IBUF \DATO_BCD_IBUF[9]_inst 
       (.I(DATO_BCD[9]),
        .O(DATO_BCD_IBUF[9]));
  IBUF DATO_BCD_OK_IBUF_inst
       (.I(DATO_BCD_OK),
        .O(DATO_BCD_OK_IBUF));
  OBUF DP_OBUF_inst
       (.I(1'b1),
        .O(DP));
  IBUF RST_IBUF_inst
       (.I(RST),
        .O(RST_IBUF));
  OBUF \SEG_AG_OBUF[0]_inst 
       (.I(SEG_AG_OBUF[0]),
        .O(SEG_AG[0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h92C8)) 
    \SEG_AG_OBUF[0]_inst_i_1 
       (.I0(\SEG_AG_OBUF[6]_inst_i_2_n_0 ),
        .I1(\SEG_AG_OBUF[6]_inst_i_4_n_0 ),
        .I2(\SEG_AG_OBUF[6]_inst_i_5_n_0 ),
        .I3(\SEG_AG_OBUF[6]_inst_i_3_n_0 ),
        .O(SEG_AG_OBUF[0]));
  OBUF \SEG_AG_OBUF[1]_inst 
       (.I(SEG_AG_OBUF[1]),
        .O(SEG_AG[1]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hEB08)) 
    \SEG_AG_OBUF[1]_inst_i_1 
       (.I0(\SEG_AG_OBUF[6]_inst_i_2_n_0 ),
        .I1(\SEG_AG_OBUF[6]_inst_i_3_n_0 ),
        .I2(\SEG_AG_OBUF[6]_inst_i_5_n_0 ),
        .I3(\SEG_AG_OBUF[6]_inst_i_4_n_0 ),
        .O(SEG_AG_OBUF[1]));
  OBUF \SEG_AG_OBUF[2]_inst 
       (.I(SEG_AG_OBUF[2]),
        .O(SEG_AG[2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hAA21)) 
    \SEG_AG_OBUF[2]_inst_i_1 
       (.I0(\SEG_AG_OBUF[6]_inst_i_2_n_0 ),
        .I1(\SEG_AG_OBUF[6]_inst_i_5_n_0 ),
        .I2(\SEG_AG_OBUF[6]_inst_i_3_n_0 ),
        .I3(\SEG_AG_OBUF[6]_inst_i_4_n_0 ),
        .O(SEG_AG_OBUF[2]));
  OBUF \SEG_AG_OBUF[3]_inst 
       (.I(SEG_AG_OBUF[3]),
        .O(SEG_AG[3]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hBE4A)) 
    \SEG_AG_OBUF[3]_inst_i_1 
       (.I0(\SEG_AG_OBUF[6]_inst_i_2_n_0 ),
        .I1(\SEG_AG_OBUF[6]_inst_i_4_n_0 ),
        .I2(\SEG_AG_OBUF[6]_inst_i_5_n_0 ),
        .I3(\SEG_AG_OBUF[6]_inst_i_3_n_0 ),
        .O(SEG_AG_OBUF[3]));
  OBUF \SEG_AG_OBUF[4]_inst 
       (.I(SEG_AG_OBUF[4]),
        .O(SEG_AG[4]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hD6C4)) 
    \SEG_AG_OBUF[4]_inst_i_1 
       (.I0(\SEG_AG_OBUF[6]_inst_i_2_n_0 ),
        .I1(\SEG_AG_OBUF[6]_inst_i_3_n_0 ),
        .I2(\SEG_AG_OBUF[6]_inst_i_5_n_0 ),
        .I3(\SEG_AG_OBUF[6]_inst_i_4_n_0 ),
        .O(SEG_AG_OBUF[4]));
  OBUF \SEG_AG_OBUF[5]_inst 
       (.I(SEG_AG_OBUF[5]),
        .O(SEG_AG[5]));
  LUT4 #(
    .INIT(16'h8271)) 
    \SEG_AG_OBUF[5]_inst_i_1 
       (.I0(\SEG_AG_OBUF[6]_inst_i_4_n_0 ),
        .I1(\SEG_AG_OBUF[6]_inst_i_5_n_0 ),
        .I2(\SEG_AG_OBUF[6]_inst_i_3_n_0 ),
        .I3(\SEG_AG_OBUF[6]_inst_i_2_n_0 ),
        .O(SEG_AG_OBUF[5]));
  OBUF \SEG_AG_OBUF[6]_inst 
       (.I(SEG_AG_OBUF[6]),
        .O(SEG_AG[6]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hA568)) 
    \SEG_AG_OBUF[6]_inst_i_1 
       (.I0(\SEG_AG_OBUF[6]_inst_i_2_n_0 ),
        .I1(\SEG_AG_OBUF[6]_inst_i_3_n_0 ),
        .I2(\SEG_AG_OBUF[6]_inst_i_4_n_0 ),
        .I3(\SEG_AG_OBUF[6]_inst_i_5_n_0 ),
        .O(SEG_AG_OBUF[6]));
  LUT6 #(
    .INIT(64'h8888888888088888)) 
    \SEG_AG_OBUF[6]_inst_i_10 
       (.I0(counter_multiplexor[1]),
        .I1(counter_multiplexor[0]),
        .I2(\SEG_AG_OBUF[6]_inst_i_22_n_0 ),
        .I3(current_dato_bcd[15]),
        .I4(\SEG_AG_OBUF[6]_inst_i_19_n_0 ),
        .I5(\SEG_AG_OBUF[6]_inst_i_24_n_0 ),
        .O(\SEG_AG_OBUF[6]_inst_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAA8AAA8AAA8AAAAA)) 
    \SEG_AG_OBUF[6]_inst_i_11 
       (.I0(\SEG_AG_OBUF[6]_inst_i_25_n_0 ),
        .I1(current_dato_bcd[11]),
        .I2(\SEG_AG_OBUF[6]_inst_i_19_n_0 ),
        .I3(\SEG_AG_OBUF[6]_inst_i_24_n_0 ),
        .I4(\SEG_AG_OBUF[6]_inst_i_22_n_0 ),
        .I5(current_dato_bcd[15]),
        .O(\SEG_AG_OBUF[6]_inst_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFBFB000000000C00)) 
    \SEG_AG_OBUF[6]_inst_i_12 
       (.I0(\SEG_AG_OBUF[6]_inst_i_26_n_0 ),
        .I1(\SEG_AG_OBUF[6]_inst_i_19_n_0 ),
        .I2(\SEG_AG_OBUF[6]_inst_i_24_n_0 ),
        .I3(current_dato_bcd[0]),
        .I4(counter_multiplexor[0]),
        .I5(counter_multiplexor[1]),
        .O(\SEG_AG_OBUF[6]_inst_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFFA8A8A8FFFFFFFF)) 
    \SEG_AG_OBUF[6]_inst_i_13 
       (.I0(current_dato_bcd[11]),
        .I1(current_dato_bcd[10]),
        .I2(current_dato_bcd[9]),
        .I3(\SEG_AG_OBUF[6]_inst_i_20_n_0 ),
        .I4(current_dato_bcd[15]),
        .I5(\SEG_AG_OBUF[6]_inst_i_19_n_0 ),
        .O(\SEG_AG_OBUF[6]_inst_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hF7F7F7F3FFFFFFFF)) 
    \SEG_AG_OBUF[6]_inst_i_14 
       (.I0(current_dato_bcd[8]),
        .I1(\SEG_AG_OBUF[6]_inst_i_19_n_0 ),
        .I2(\SEG_AG_OBUF[6]_inst_i_24_n_0 ),
        .I3(\SEG_AG_OBUF[6]_inst_i_22_n_0 ),
        .I4(current_dato_bcd[15]),
        .I5(\SEG_AG_OBUF[6]_inst_i_25_n_0 ),
        .O(\SEG_AG_OBUF[6]_inst_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hFFF300000000FBFB)) 
    \SEG_AG_OBUF[6]_inst_i_15 
       (.I0(current_dato_bcd[2]),
        .I1(\SEG_AG_OBUF[6]_inst_i_19_n_0 ),
        .I2(\SEG_AG_OBUF[6]_inst_i_24_n_0 ),
        .I3(\SEG_AG_OBUF[6]_inst_i_27_n_0 ),
        .I4(counter_multiplexor[0]),
        .I5(counter_multiplexor[1]),
        .O(\SEG_AG_OBUF[6]_inst_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hF7F7F7F3FFFFFFFF)) 
    \SEG_AG_OBUF[6]_inst_i_16 
       (.I0(current_dato_bcd[10]),
        .I1(\SEG_AG_OBUF[6]_inst_i_19_n_0 ),
        .I2(\SEG_AG_OBUF[6]_inst_i_24_n_0 ),
        .I3(\SEG_AG_OBUF[6]_inst_i_22_n_0 ),
        .I4(current_dato_bcd[15]),
        .I5(\SEG_AG_OBUF[6]_inst_i_25_n_0 ),
        .O(\SEG_AG_OBUF[6]_inst_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h001000F0FFFFFFFF)) 
    \SEG_AG_OBUF[6]_inst_i_17 
       (.I0(current_dato_bcd[15]),
        .I1(\SEG_AG_OBUF[6]_inst_i_22_n_0 ),
        .I2(\SEG_AG_OBUF[6]_inst_i_19_n_0 ),
        .I3(\SEG_AG_OBUF[6]_inst_i_24_n_0 ),
        .I4(current_dato_bcd[9]),
        .I5(\SEG_AG_OBUF[6]_inst_i_25_n_0 ),
        .O(\SEG_AG_OBUF[6]_inst_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hFBFB000000000C00)) 
    \SEG_AG_OBUF[6]_inst_i_18 
       (.I0(current_dato_bcd[13]),
        .I1(\SEG_AG_OBUF[6]_inst_i_19_n_0 ),
        .I2(\SEG_AG_OBUF[6]_inst_i_24_n_0 ),
        .I3(current_dato_bcd[1]),
        .I4(counter_multiplexor[0]),
        .I5(counter_multiplexor[1]),
        .O(\SEG_AG_OBUF[6]_inst_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h0000005757575757)) 
    \SEG_AG_OBUF[6]_inst_i_19 
       (.I0(current_dato_bcd[7]),
        .I1(current_dato_bcd[5]),
        .I2(current_dato_bcd[6]),
        .I3(current_dato_bcd[1]),
        .I4(current_dato_bcd[2]),
        .I5(current_dato_bcd[3]),
        .O(\SEG_AG_OBUF[6]_inst_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFF70)) 
    \SEG_AG_OBUF[6]_inst_i_2 
       (.I0(\SEG_AG_OBUF[6]_inst_i_6_n_0 ),
        .I1(\SEG_AG_OBUF[6]_inst_i_7_n_0 ),
        .I2(\SEG_AG_OBUF[6]_inst_i_8_n_0 ),
        .I3(\SEG_AG_OBUF[6]_inst_i_9_n_0 ),
        .I4(\SEG_AG_OBUF[6]_inst_i_10_n_0 ),
        .I5(\SEG_AG_OBUF[6]_inst_i_11_n_0 ),
        .O(\SEG_AG_OBUF[6]_inst_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \SEG_AG_OBUF[6]_inst_i_20 
       (.I0(current_dato_bcd[13]),
        .I1(current_dato_bcd[14]),
        .O(\SEG_AG_OBUF[6]_inst_i_20_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \SEG_AG_OBUF[6]_inst_i_21 
       (.I0(current_dato_bcd[9]),
        .I1(current_dato_bcd[10]),
        .O(\SEG_AG_OBUF[6]_inst_i_21_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \SEG_AG_OBUF[6]_inst_i_22 
       (.I0(current_dato_bcd[12]),
        .I1(current_dato_bcd[14]),
        .I2(current_dato_bcd[13]),
        .O(\SEG_AG_OBUF[6]_inst_i_22_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \SEG_AG_OBUF[6]_inst_i_23 
       (.I0(current_dato_bcd[11]),
        .I1(current_dato_bcd[10]),
        .I2(current_dato_bcd[9]),
        .O(\SEG_AG_OBUF[6]_inst_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFA8A8A8A8A8)) 
    \SEG_AG_OBUF[6]_inst_i_24 
       (.I0(current_dato_bcd[15]),
        .I1(current_dato_bcd[13]),
        .I2(current_dato_bcd[14]),
        .I3(current_dato_bcd[9]),
        .I4(current_dato_bcd[10]),
        .I5(current_dato_bcd[11]),
        .O(\SEG_AG_OBUF[6]_inst_i_24_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \SEG_AG_OBUF[6]_inst_i_25 
       (.I0(counter_multiplexor[1]),
        .I1(counter_multiplexor[0]),
        .O(\SEG_AG_OBUF[6]_inst_i_25_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hAAAB)) 
    \SEG_AG_OBUF[6]_inst_i_26 
       (.I0(current_dato_bcd[12]),
        .I1(current_dato_bcd[13]),
        .I2(current_dato_bcd[14]),
        .I3(current_dato_bcd[15]),
        .O(\SEG_AG_OBUF[6]_inst_i_26_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hAAAB)) 
    \SEG_AG_OBUF[6]_inst_i_27 
       (.I0(current_dato_bcd[14]),
        .I1(current_dato_bcd[13]),
        .I2(current_dato_bcd[12]),
        .I3(current_dato_bcd[15]),
        .O(\SEG_AG_OBUF[6]_inst_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hEEEAEEEEFFFFFFFF)) 
    \SEG_AG_OBUF[6]_inst_i_3 
       (.I0(\SEG_AG_OBUF[6]_inst_i_12_n_0 ),
        .I1(\SEG_AG_OBUF[6]_inst_i_8_n_0 ),
        .I2(current_dato_bcd[4]),
        .I3(\SEG_AG_OBUF[6]_inst_i_13_n_0 ),
        .I4(\SEG_AG_OBUF[6]_inst_i_7_n_0 ),
        .I5(\SEG_AG_OBUF[6]_inst_i_14_n_0 ),
        .O(\SEG_AG_OBUF[6]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAEAEEEEFFFFFFFF)) 
    \SEG_AG_OBUF[6]_inst_i_4 
       (.I0(\SEG_AG_OBUF[6]_inst_i_15_n_0 ),
        .I1(\SEG_AG_OBUF[6]_inst_i_8_n_0 ),
        .I2(current_dato_bcd[6]),
        .I3(\SEG_AG_OBUF[6]_inst_i_13_n_0 ),
        .I4(\SEG_AG_OBUF[6]_inst_i_7_n_0 ),
        .I5(\SEG_AG_OBUF[6]_inst_i_16_n_0 ),
        .O(\SEG_AG_OBUF[6]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000555DDDDD)) 
    \SEG_AG_OBUF[6]_inst_i_5 
       (.I0(\SEG_AG_OBUF[6]_inst_i_7_n_0 ),
        .I1(\SEG_AG_OBUF[6]_inst_i_17_n_0 ),
        .I2(\SEG_AG_OBUF[6]_inst_i_13_n_0 ),
        .I3(current_dato_bcd[5]),
        .I4(\SEG_AG_OBUF[6]_inst_i_8_n_0 ),
        .I5(\SEG_AG_OBUF[6]_inst_i_18_n_0 ),
        .O(\SEG_AG_OBUF[6]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000044404440444)) 
    \SEG_AG_OBUF[6]_inst_i_6 
       (.I0(current_dato_bcd[7]),
        .I1(\SEG_AG_OBUF[6]_inst_i_19_n_0 ),
        .I2(current_dato_bcd[15]),
        .I3(\SEG_AG_OBUF[6]_inst_i_20_n_0 ),
        .I4(\SEG_AG_OBUF[6]_inst_i_21_n_0 ),
        .I5(current_dato_bcd[11]),
        .O(\SEG_AG_OBUF[6]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFEFFFF)) 
    \SEG_AG_OBUF[6]_inst_i_7 
       (.I0(current_dato_bcd[15]),
        .I1(\SEG_AG_OBUF[6]_inst_i_22_n_0 ),
        .I2(\SEG_AG_OBUF[6]_inst_i_23_n_0 ),
        .I3(current_dato_bcd[8]),
        .I4(\SEG_AG_OBUF[6]_inst_i_19_n_0 ),
        .I5(\SEG_AG_OBUF[6]_inst_i_24_n_0 ),
        .O(\SEG_AG_OBUF[6]_inst_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \SEG_AG_OBUF[6]_inst_i_8 
       (.I0(counter_multiplexor[0]),
        .I1(counter_multiplexor[1]),
        .O(\SEG_AG_OBUF[6]_inst_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h11101111)) 
    \SEG_AG_OBUF[6]_inst_i_9 
       (.I0(counter_multiplexor[1]),
        .I1(counter_multiplexor[0]),
        .I2(current_dato_bcd[3]),
        .I3(\SEG_AG_OBUF[6]_inst_i_24_n_0 ),
        .I4(\SEG_AG_OBUF[6]_inst_i_19_n_0 ),
        .O(\SEG_AG_OBUF[6]_inst_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \counter_multiplexor[0]_i_1 
       (.I0(\counter_prescaler[4]_i_2_n_0 ),
        .I1(counter_multiplexor[0]),
        .O(\counter_multiplexor[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hD2)) 
    \counter_multiplexor[1]_i_1 
       (.I0(counter_multiplexor[0]),
        .I1(\counter_prescaler[4]_i_2_n_0 ),
        .I2(counter_multiplexor[1]),
        .O(\counter_multiplexor[1]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_multiplexor_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(RST_IBUF),
        .D(\counter_multiplexor[0]_i_1_n_0 ),
        .Q(counter_multiplexor[0]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_multiplexor_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(RST_IBUF),
        .D(\counter_multiplexor[1]_i_1_n_0 ),
        .Q(counter_multiplexor[1]));
  LUT1 #(
    .INIT(2'h1)) 
    \counter_prescaler[0]_i_1 
       (.I0(\counter_prescaler_reg_n_0_[0] ),
        .O(counter_prescaler[0]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \counter_prescaler[1]_i_1 
       (.I0(\counter_prescaler[4]_i_2_n_0 ),
        .I1(\counter_prescaler_reg_n_0_[1] ),
        .I2(\counter_prescaler_reg_n_0_[0] ),
        .O(counter_prescaler[1]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h2888)) 
    \counter_prescaler[2]_i_1 
       (.I0(\counter_prescaler[4]_i_2_n_0 ),
        .I1(\counter_prescaler_reg_n_0_[2] ),
        .I2(\counter_prescaler_reg_n_0_[0] ),
        .I3(\counter_prescaler_reg_n_0_[1] ),
        .O(counter_prescaler[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h28888888)) 
    \counter_prescaler[3]_i_1 
       (.I0(\counter_prescaler[4]_i_2_n_0 ),
        .I1(\counter_prescaler_reg_n_0_[3] ),
        .I2(\counter_prescaler_reg_n_0_[1] ),
        .I3(\counter_prescaler_reg_n_0_[2] ),
        .I4(\counter_prescaler_reg_n_0_[0] ),
        .O(counter_prescaler[3]));
  LUT6 #(
    .INIT(64'h2888888888888888)) 
    \counter_prescaler[4]_i_1 
       (.I0(\counter_prescaler[4]_i_2_n_0 ),
        .I1(\counter_prescaler_reg_n_0_[4] ),
        .I2(\counter_prescaler_reg_n_0_[3] ),
        .I3(\counter_prescaler_reg_n_0_[1] ),
        .I4(\counter_prescaler_reg_n_0_[2] ),
        .I5(\counter_prescaler_reg_n_0_[0] ),
        .O(counter_prescaler[4]));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFFFFFF)) 
    \counter_prescaler[4]_i_2 
       (.I0(\counter_prescaler[7]_i_2_n_0 ),
        .I1(\counter_prescaler_reg_n_0_[3] ),
        .I2(\counter_prescaler_reg_n_0_[5] ),
        .I3(\counter_prescaler_reg_n_0_[1] ),
        .I4(\counter_prescaler_reg_n_0_[6] ),
        .I5(\counter_prescaler_reg_n_0_[7] ),
        .O(\counter_prescaler[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hAA6A)) 
    \counter_prescaler[5]_i_1 
       (.I0(\counter_prescaler_reg_n_0_[5] ),
        .I1(\counter_prescaler_reg_n_0_[3] ),
        .I2(\counter_prescaler_reg_n_0_[1] ),
        .I3(\counter_prescaler[7]_i_2_n_0 ),
        .O(counter_prescaler[5]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hAAAA6AAA)) 
    \counter_prescaler[6]_i_1 
       (.I0(\counter_prescaler_reg_n_0_[6] ),
        .I1(\counter_prescaler_reg_n_0_[5] ),
        .I2(\counter_prescaler_reg_n_0_[1] ),
        .I3(\counter_prescaler_reg_n_0_[3] ),
        .I4(\counter_prescaler[7]_i_2_n_0 ),
        .O(counter_prescaler[6]));
  LUT6 #(
    .INIT(64'hAAAAAAAA6AAAAAA8)) 
    \counter_prescaler[7]_i_1 
       (.I0(\counter_prescaler_reg_n_0_[7] ),
        .I1(\counter_prescaler_reg_n_0_[1] ),
        .I2(\counter_prescaler_reg_n_0_[3] ),
        .I3(\counter_prescaler_reg_n_0_[5] ),
        .I4(\counter_prescaler_reg_n_0_[6] ),
        .I5(\counter_prescaler[7]_i_2_n_0 ),
        .O(counter_prescaler[7]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \counter_prescaler[7]_i_2 
       (.I0(\counter_prescaler_reg_n_0_[2] ),
        .I1(\counter_prescaler_reg_n_0_[0] ),
        .I2(\counter_prescaler_reg_n_0_[4] ),
        .O(\counter_prescaler[7]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_prescaler_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(RST_IBUF),
        .D(counter_prescaler[0]),
        .Q(\counter_prescaler_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_prescaler_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(RST_IBUF),
        .D(counter_prescaler[1]),
        .Q(\counter_prescaler_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_prescaler_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(RST_IBUF),
        .D(counter_prescaler[2]),
        .Q(\counter_prescaler_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_prescaler_reg[3] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(RST_IBUF),
        .D(counter_prescaler[3]),
        .Q(\counter_prescaler_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_prescaler_reg[4] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(RST_IBUF),
        .D(counter_prescaler[4]),
        .Q(\counter_prescaler_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_prescaler_reg[5] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(RST_IBUF),
        .D(counter_prescaler[5]),
        .Q(\counter_prescaler_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_prescaler_reg[6] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(RST_IBUF),
        .D(counter_prescaler[6]),
        .Q(\counter_prescaler_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_prescaler_reg[7] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(RST_IBUF),
        .D(counter_prescaler[7]),
        .Q(\counter_prescaler_reg_n_0_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    \current_dato_bcd_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(DATO_BCD_OK_IBUF),
        .CLR(RST_IBUF),
        .D(DATO_BCD_IBUF[0]),
        .Q(current_dato_bcd[0]));
  FDCE #(
    .INIT(1'b0)) 
    \current_dato_bcd_reg[10] 
       (.C(CLK_IBUF_BUFG),
        .CE(DATO_BCD_OK_IBUF),
        .CLR(RST_IBUF),
        .D(DATO_BCD_IBUF[10]),
        .Q(current_dato_bcd[10]));
  FDCE #(
    .INIT(1'b0)) 
    \current_dato_bcd_reg[11] 
       (.C(CLK_IBUF_BUFG),
        .CE(DATO_BCD_OK_IBUF),
        .CLR(RST_IBUF),
        .D(DATO_BCD_IBUF[11]),
        .Q(current_dato_bcd[11]));
  FDCE #(
    .INIT(1'b0)) 
    \current_dato_bcd_reg[12] 
       (.C(CLK_IBUF_BUFG),
        .CE(DATO_BCD_OK_IBUF),
        .CLR(RST_IBUF),
        .D(DATO_BCD_IBUF[12]),
        .Q(current_dato_bcd[12]));
  FDCE #(
    .INIT(1'b0)) 
    \current_dato_bcd_reg[13] 
       (.C(CLK_IBUF_BUFG),
        .CE(DATO_BCD_OK_IBUF),
        .CLR(RST_IBUF),
        .D(DATO_BCD_IBUF[13]),
        .Q(current_dato_bcd[13]));
  FDCE #(
    .INIT(1'b0)) 
    \current_dato_bcd_reg[14] 
       (.C(CLK_IBUF_BUFG),
        .CE(DATO_BCD_OK_IBUF),
        .CLR(RST_IBUF),
        .D(DATO_BCD_IBUF[14]),
        .Q(current_dato_bcd[14]));
  FDCE #(
    .INIT(1'b0)) 
    \current_dato_bcd_reg[15] 
       (.C(CLK_IBUF_BUFG),
        .CE(DATO_BCD_OK_IBUF),
        .CLR(RST_IBUF),
        .D(DATO_BCD_IBUF[15]),
        .Q(current_dato_bcd[15]));
  FDCE #(
    .INIT(1'b0)) 
    \current_dato_bcd_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(DATO_BCD_OK_IBUF),
        .CLR(RST_IBUF),
        .D(DATO_BCD_IBUF[1]),
        .Q(current_dato_bcd[1]));
  FDCE #(
    .INIT(1'b0)) 
    \current_dato_bcd_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(DATO_BCD_OK_IBUF),
        .CLR(RST_IBUF),
        .D(DATO_BCD_IBUF[2]),
        .Q(current_dato_bcd[2]));
  FDCE #(
    .INIT(1'b0)) 
    \current_dato_bcd_reg[3] 
       (.C(CLK_IBUF_BUFG),
        .CE(DATO_BCD_OK_IBUF),
        .CLR(RST_IBUF),
        .D(DATO_BCD_IBUF[3]),
        .Q(current_dato_bcd[3]));
  FDCE #(
    .INIT(1'b0)) 
    \current_dato_bcd_reg[4] 
       (.C(CLK_IBUF_BUFG),
        .CE(DATO_BCD_OK_IBUF),
        .CLR(RST_IBUF),
        .D(DATO_BCD_IBUF[4]),
        .Q(current_dato_bcd[4]));
  FDCE #(
    .INIT(1'b0)) 
    \current_dato_bcd_reg[5] 
       (.C(CLK_IBUF_BUFG),
        .CE(DATO_BCD_OK_IBUF),
        .CLR(RST_IBUF),
        .D(DATO_BCD_IBUF[5]),
        .Q(current_dato_bcd[5]));
  FDCE #(
    .INIT(1'b0)) 
    \current_dato_bcd_reg[6] 
       (.C(CLK_IBUF_BUFG),
        .CE(DATO_BCD_OK_IBUF),
        .CLR(RST_IBUF),
        .D(DATO_BCD_IBUF[6]),
        .Q(current_dato_bcd[6]));
  FDCE #(
    .INIT(1'b0)) 
    \current_dato_bcd_reg[7] 
       (.C(CLK_IBUF_BUFG),
        .CE(DATO_BCD_OK_IBUF),
        .CLR(RST_IBUF),
        .D(DATO_BCD_IBUF[7]),
        .Q(current_dato_bcd[7]));
  FDCE #(
    .INIT(1'b0)) 
    \current_dato_bcd_reg[8] 
       (.C(CLK_IBUF_BUFG),
        .CE(DATO_BCD_OK_IBUF),
        .CLR(RST_IBUF),
        .D(DATO_BCD_IBUF[8]),
        .Q(current_dato_bcd[8]));
  FDCE #(
    .INIT(1'b0)) 
    \current_dato_bcd_reg[9] 
       (.C(CLK_IBUF_BUFG),
        .CE(DATO_BCD_OK_IBUF),
        .CLR(RST_IBUF),
        .D(DATO_BCD_IBUF[9]),
        .Q(current_dato_bcd[9]));
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
