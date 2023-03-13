// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Sat Apr  1 11:58:43 2023
// Host        : LAPTOP-BQSK3RO4 running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               C:/Users/oscar/OneDrive/Escritorio/UNIVERSIDAD/MSC_22_23/MSC/apartado2/apartado2.sim/sim_1/impl/timing/xsim/f_meter_tb_time_impl.v
// Design      : f_meter
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* ECO_CHECKSUM = "f049f174" *) 
(* NotValidForBitStream *)
module f_meter
   (CLK,
    RST,
    F_OUT,
    F_MED_OK,
    F_MED);
  input CLK;
  input RST;
  input F_OUT;
  output F_MED_OK;
  output [15:0]F_MED;

  wire CLK;
  wire CLK_IBUF;
  wire CLK_IBUF_BUFG;
  wire [15:0]F_MED;
  wire \F_MED[15]_i_2_n_0 ;
  wire \F_MED[15]_i_3_n_0 ;
  wire \F_MED[15]_i_4_n_0 ;
  wire [15:0]F_MED_OBUF;
  wire F_MED_OK;
  wire F_MED_OK_OBUF;
  wire F_OUT;
  wire F_OUT_IBUF;
  wire RST;
  wire RST_IBUF;
  wire [15:0]bcd_register;
  wire bcd_register0;
  wire ce_prescaler;
  wire centenas;
  wire \centenas[0]_i_1_n_0 ;
  wire \centenas[1]_i_1_n_0 ;
  wire \centenas[2]_i_1_n_0 ;
  wire \centenas[3]_i_2_n_0 ;
  wire \centenas[3]_i_3_n_0 ;
  wire \centenas[3]_i_4_n_0 ;
  wire \centenas_reg_n_0_[0] ;
  wire \centenas_reg_n_0_[1] ;
  wire \centenas_reg_n_0_[2] ;
  wire \centenas_reg_n_0_[3] ;
  wire [16:0]cnt_prescaler;
  wire \cnt_prescaler_reg[12]_i_2_n_0 ;
  wire \cnt_prescaler_reg[4]_i_2_n_0 ;
  wire \cnt_prescaler_reg[8]_i_2_n_0 ;
  wire \cnt_prescaler_reg_n_0_[0] ;
  wire \cnt_prescaler_reg_n_0_[10] ;
  wire \cnt_prescaler_reg_n_0_[11] ;
  wire \cnt_prescaler_reg_n_0_[12] ;
  wire \cnt_prescaler_reg_n_0_[13] ;
  wire \cnt_prescaler_reg_n_0_[14] ;
  wire \cnt_prescaler_reg_n_0_[15] ;
  wire \cnt_prescaler_reg_n_0_[16] ;
  wire \cnt_prescaler_reg_n_0_[1] ;
  wire \cnt_prescaler_reg_n_0_[2] ;
  wire \cnt_prescaler_reg_n_0_[3] ;
  wire \cnt_prescaler_reg_n_0_[4] ;
  wire \cnt_prescaler_reg_n_0_[5] ;
  wire \cnt_prescaler_reg_n_0_[6] ;
  wire \cnt_prescaler_reg_n_0_[7] ;
  wire \cnt_prescaler_reg_n_0_[8] ;
  wire \cnt_prescaler_reg_n_0_[9] ;
  wire [16:1]data0;
  wire decenas;
  wire \decenas[0]_i_1_n_0 ;
  wire \decenas[1]_i_1_n_0 ;
  wire \decenas[2]_i_1_n_0 ;
  wire \decenas[3]_i_2_n_0 ;
  wire \decenas_reg_n_0_[0] ;
  wire \decenas_reg_n_0_[1] ;
  wire \decenas_reg_n_0_[2] ;
  wire \decenas_reg_n_0_[3] ;
  wire millares;
  wire \millares[3]_i_3_n_0 ;
  wire [3:0]millares_reg__0;
  wire p_0_in;
  wire [3:0]plusOp;
  wire t_out;
  wire unidades;
  wire \unidades[0]_i_1_n_0 ;
  wire \unidades[1]_i_1_n_0 ;
  wire \unidades[2]_i_1_n_0 ;
  wire \unidades[3]_i_2_n_0 ;
  wire \unidades_reg_n_0_[0] ;
  wire \unidades_reg_n_0_[1] ;
  wire \unidades_reg_n_0_[2] ;
  wire \unidades_reg_n_0_[3] ;
  wire [2:0]\NLW_cnt_prescaler_reg[12]_i_2_CO_UNCONNECTED ;
  wire [3:0]\NLW_cnt_prescaler_reg[16]_i_2_CO_UNCONNECTED ;
  wire [2:0]\NLW_cnt_prescaler_reg[4]_i_2_CO_UNCONNECTED ;
  wire [2:0]\NLW_cnt_prescaler_reg[8]_i_2_CO_UNCONNECTED ;

initial begin
 $sdf_annotate("f_meter_tb_time_impl.sdf",,,,"tool_control");
end
  BUFG CLK_IBUF_BUFG_inst
       (.I(CLK_IBUF),
        .O(CLK_IBUF_BUFG));
  IBUF CLK_IBUF_inst
       (.I(CLK),
        .O(CLK_IBUF));
  LUT6 #(
    .INIT(64'h0000000000020000)) 
    \F_MED[15]_i_1 
       (.I0(\F_MED[15]_i_2_n_0 ),
        .I1(\F_MED[15]_i_3_n_0 ),
        .I2(\F_MED[15]_i_4_n_0 ),
        .I3(\cnt_prescaler_reg_n_0_[14] ),
        .I4(\cnt_prescaler_reg_n_0_[1] ),
        .I5(\cnt_prescaler_reg_n_0_[6] ),
        .O(ce_prescaler));
  LUT6 #(
    .INIT(64'h0100000000000000)) 
    \F_MED[15]_i_2 
       (.I0(\cnt_prescaler_reg_n_0_[13] ),
        .I1(\cnt_prescaler_reg_n_0_[12] ),
        .I2(\cnt_prescaler_reg_n_0_[8] ),
        .I3(\cnt_prescaler_reg_n_0_[7] ),
        .I4(\cnt_prescaler_reg_n_0_[3] ),
        .I5(\cnt_prescaler_reg_n_0_[15] ),
        .O(\F_MED[15]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFDF)) 
    \F_MED[15]_i_3 
       (.I0(\cnt_prescaler_reg_n_0_[9] ),
        .I1(\cnt_prescaler_reg_n_0_[5] ),
        .I2(\cnt_prescaler_reg_n_0_[2] ),
        .I3(\cnt_prescaler_reg_n_0_[11] ),
        .O(\F_MED[15]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \F_MED[15]_i_4 
       (.I0(\cnt_prescaler_reg_n_0_[4] ),
        .I1(\cnt_prescaler_reg_n_0_[0] ),
        .I2(\cnt_prescaler_reg_n_0_[16] ),
        .I3(\cnt_prescaler_reg_n_0_[10] ),
        .O(\F_MED[15]_i_4_n_0 ));
  OBUF \F_MED_OBUF[0]_inst 
       (.I(F_MED_OBUF[0]),
        .O(F_MED[0]));
  OBUF \F_MED_OBUF[10]_inst 
       (.I(F_MED_OBUF[10]),
        .O(F_MED[10]));
  OBUF \F_MED_OBUF[11]_inst 
       (.I(F_MED_OBUF[11]),
        .O(F_MED[11]));
  OBUF \F_MED_OBUF[12]_inst 
       (.I(F_MED_OBUF[12]),
        .O(F_MED[12]));
  OBUF \F_MED_OBUF[13]_inst 
       (.I(F_MED_OBUF[13]),
        .O(F_MED[13]));
  OBUF \F_MED_OBUF[14]_inst 
       (.I(F_MED_OBUF[14]),
        .O(F_MED[14]));
  OBUF \F_MED_OBUF[15]_inst 
       (.I(F_MED_OBUF[15]),
        .O(F_MED[15]));
  OBUF \F_MED_OBUF[1]_inst 
       (.I(F_MED_OBUF[1]),
        .O(F_MED[1]));
  OBUF \F_MED_OBUF[2]_inst 
       (.I(F_MED_OBUF[2]),
        .O(F_MED[2]));
  OBUF \F_MED_OBUF[3]_inst 
       (.I(F_MED_OBUF[3]),
        .O(F_MED[3]));
  OBUF \F_MED_OBUF[4]_inst 
       (.I(F_MED_OBUF[4]),
        .O(F_MED[4]));
  OBUF \F_MED_OBUF[5]_inst 
       (.I(F_MED_OBUF[5]),
        .O(F_MED[5]));
  OBUF \F_MED_OBUF[6]_inst 
       (.I(F_MED_OBUF[6]),
        .O(F_MED[6]));
  OBUF \F_MED_OBUF[7]_inst 
       (.I(F_MED_OBUF[7]),
        .O(F_MED[7]));
  OBUF \F_MED_OBUF[8]_inst 
       (.I(F_MED_OBUF[8]),
        .O(F_MED[8]));
  OBUF \F_MED_OBUF[9]_inst 
       (.I(F_MED_OBUF[9]),
        .O(F_MED[9]));
  OBUF F_MED_OK_OBUF_inst
       (.I(F_MED_OK_OBUF),
        .O(F_MED_OK));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    F_MED_OK_OBUF_inst_i_1
       (.I0(ce_prescaler),
        .I1(t_out),
        .O(F_MED_OK_OBUF));
  FDRE #(
    .INIT(1'b0)) 
    \F_MED_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(ce_prescaler),
        .D(bcd_register[0]),
        .Q(F_MED_OBUF[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \F_MED_reg[10] 
       (.C(CLK_IBUF_BUFG),
        .CE(ce_prescaler),
        .D(bcd_register[10]),
        .Q(F_MED_OBUF[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \F_MED_reg[11] 
       (.C(CLK_IBUF_BUFG),
        .CE(ce_prescaler),
        .D(bcd_register[11]),
        .Q(F_MED_OBUF[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \F_MED_reg[12] 
       (.C(CLK_IBUF_BUFG),
        .CE(ce_prescaler),
        .D(bcd_register[12]),
        .Q(F_MED_OBUF[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \F_MED_reg[13] 
       (.C(CLK_IBUF_BUFG),
        .CE(ce_prescaler),
        .D(bcd_register[13]),
        .Q(F_MED_OBUF[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \F_MED_reg[14] 
       (.C(CLK_IBUF_BUFG),
        .CE(ce_prescaler),
        .D(bcd_register[14]),
        .Q(F_MED_OBUF[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \F_MED_reg[15] 
       (.C(CLK_IBUF_BUFG),
        .CE(ce_prescaler),
        .D(bcd_register[15]),
        .Q(F_MED_OBUF[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \F_MED_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(ce_prescaler),
        .D(bcd_register[1]),
        .Q(F_MED_OBUF[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \F_MED_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(ce_prescaler),
        .D(bcd_register[2]),
        .Q(F_MED_OBUF[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \F_MED_reg[3] 
       (.C(CLK_IBUF_BUFG),
        .CE(ce_prescaler),
        .D(bcd_register[3]),
        .Q(F_MED_OBUF[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \F_MED_reg[4] 
       (.C(CLK_IBUF_BUFG),
        .CE(ce_prescaler),
        .D(bcd_register[4]),
        .Q(F_MED_OBUF[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \F_MED_reg[5] 
       (.C(CLK_IBUF_BUFG),
        .CE(ce_prescaler),
        .D(bcd_register[5]),
        .Q(F_MED_OBUF[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \F_MED_reg[6] 
       (.C(CLK_IBUF_BUFG),
        .CE(ce_prescaler),
        .D(bcd_register[6]),
        .Q(F_MED_OBUF[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \F_MED_reg[7] 
       (.C(CLK_IBUF_BUFG),
        .CE(ce_prescaler),
        .D(bcd_register[7]),
        .Q(F_MED_OBUF[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \F_MED_reg[8] 
       (.C(CLK_IBUF_BUFG),
        .CE(ce_prescaler),
        .D(bcd_register[8]),
        .Q(F_MED_OBUF[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \F_MED_reg[9] 
       (.C(CLK_IBUF_BUFG),
        .CE(ce_prescaler),
        .D(bcd_register[9]),
        .Q(F_MED_OBUF[9]),
        .R(1'b0));
  IBUF F_OUT_IBUF_inst
       (.I(F_OUT),
        .O(F_OUT_IBUF));
  IBUF RST_IBUF_inst
       (.I(RST),
        .O(RST_IBUF));
  LUT2 #(
    .INIT(4'h2)) 
    \bcd_register[15]_i_1 
       (.I0(ce_prescaler),
        .I1(RST_IBUF),
        .O(bcd_register0));
  FDRE #(
    .INIT(1'b0)) 
    \bcd_register_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(bcd_register0),
        .D(\unidades_reg_n_0_[0] ),
        .Q(bcd_register[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bcd_register_reg[10] 
       (.C(CLK_IBUF_BUFG),
        .CE(bcd_register0),
        .D(\centenas_reg_n_0_[2] ),
        .Q(bcd_register[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bcd_register_reg[11] 
       (.C(CLK_IBUF_BUFG),
        .CE(bcd_register0),
        .D(\centenas_reg_n_0_[3] ),
        .Q(bcd_register[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bcd_register_reg[12] 
       (.C(CLK_IBUF_BUFG),
        .CE(bcd_register0),
        .D(millares_reg__0[0]),
        .Q(bcd_register[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bcd_register_reg[13] 
       (.C(CLK_IBUF_BUFG),
        .CE(bcd_register0),
        .D(millares_reg__0[1]),
        .Q(bcd_register[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bcd_register_reg[14] 
       (.C(CLK_IBUF_BUFG),
        .CE(bcd_register0),
        .D(millares_reg__0[2]),
        .Q(bcd_register[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bcd_register_reg[15] 
       (.C(CLK_IBUF_BUFG),
        .CE(bcd_register0),
        .D(millares_reg__0[3]),
        .Q(bcd_register[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bcd_register_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(bcd_register0),
        .D(\unidades_reg_n_0_[1] ),
        .Q(bcd_register[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bcd_register_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(bcd_register0),
        .D(\unidades_reg_n_0_[2] ),
        .Q(bcd_register[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bcd_register_reg[3] 
       (.C(CLK_IBUF_BUFG),
        .CE(bcd_register0),
        .D(\unidades_reg_n_0_[3] ),
        .Q(bcd_register[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bcd_register_reg[4] 
       (.C(CLK_IBUF_BUFG),
        .CE(bcd_register0),
        .D(\decenas_reg_n_0_[0] ),
        .Q(bcd_register[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bcd_register_reg[5] 
       (.C(CLK_IBUF_BUFG),
        .CE(bcd_register0),
        .D(\decenas_reg_n_0_[1] ),
        .Q(bcd_register[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bcd_register_reg[6] 
       (.C(CLK_IBUF_BUFG),
        .CE(bcd_register0),
        .D(\decenas_reg_n_0_[2] ),
        .Q(bcd_register[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bcd_register_reg[7] 
       (.C(CLK_IBUF_BUFG),
        .CE(bcd_register0),
        .D(\decenas_reg_n_0_[3] ),
        .Q(bcd_register[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bcd_register_reg[8] 
       (.C(CLK_IBUF_BUFG),
        .CE(bcd_register0),
        .D(\centenas_reg_n_0_[0] ),
        .Q(bcd_register[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bcd_register_reg[9] 
       (.C(CLK_IBUF_BUFG),
        .CE(bcd_register0),
        .D(\centenas_reg_n_0_[1] ),
        .Q(bcd_register[9]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \centenas[0]_i_1 
       (.I0(\centenas_reg_n_0_[0] ),
        .O(\centenas[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0BF0)) 
    \centenas[1]_i_1 
       (.I0(\centenas_reg_n_0_[2] ),
        .I1(\centenas_reg_n_0_[3] ),
        .I2(\centenas_reg_n_0_[1] ),
        .I3(\centenas_reg_n_0_[0] ),
        .O(\centenas[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \centenas[2]_i_1 
       (.I0(\centenas_reg_n_0_[0] ),
        .I1(\centenas_reg_n_0_[1] ),
        .I2(\centenas_reg_n_0_[2] ),
        .O(\centenas[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0004)) 
    \centenas[3]_i_1 
       (.I0(ce_prescaler),
        .I1(F_OUT_IBUF),
        .I2(\centenas[3]_i_3_n_0 ),
        .I3(\centenas[3]_i_4_n_0 ),
        .O(centenas));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h6F80)) 
    \centenas[3]_i_2 
       (.I0(\centenas_reg_n_0_[2] ),
        .I1(\centenas_reg_n_0_[1] ),
        .I2(\centenas_reg_n_0_[0] ),
        .I3(\centenas_reg_n_0_[3] ),
        .O(\centenas[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hFFF7)) 
    \centenas[3]_i_3 
       (.I0(\decenas_reg_n_0_[0] ),
        .I1(\decenas_reg_n_0_[3] ),
        .I2(\decenas_reg_n_0_[1] ),
        .I3(\decenas_reg_n_0_[2] ),
        .O(\centenas[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hFFF7)) 
    \centenas[3]_i_4 
       (.I0(\unidades_reg_n_0_[0] ),
        .I1(\unidades_reg_n_0_[3] ),
        .I2(\unidades_reg_n_0_[1] ),
        .I3(\unidades_reg_n_0_[2] ),
        .O(\centenas[3]_i_4_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \centenas_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(centenas),
        .CLR(RST_IBUF),
        .D(\centenas[0]_i_1_n_0 ),
        .Q(\centenas_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \centenas_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(centenas),
        .CLR(RST_IBUF),
        .D(\centenas[1]_i_1_n_0 ),
        .Q(\centenas_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \centenas_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(centenas),
        .CLR(RST_IBUF),
        .D(\centenas[2]_i_1_n_0 ),
        .Q(\centenas_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \centenas_reg[3] 
       (.C(CLK_IBUF_BUFG),
        .CE(centenas),
        .CLR(RST_IBUF),
        .D(\centenas[3]_i_2_n_0 ),
        .Q(\centenas_reg_n_0_[3] ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \cnt_prescaler[0]_i_1 
       (.I0(\cnt_prescaler_reg_n_0_[0] ),
        .O(cnt_prescaler[0]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt_prescaler[10]_i_1 
       (.I0(data0[10]),
        .I1(ce_prescaler),
        .O(cnt_prescaler[10]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt_prescaler[11]_i_1 
       (.I0(data0[11]),
        .I1(ce_prescaler),
        .O(cnt_prescaler[11]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt_prescaler[12]_i_1 
       (.I0(data0[12]),
        .I1(ce_prescaler),
        .O(cnt_prescaler[12]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt_prescaler[13]_i_1 
       (.I0(data0[13]),
        .I1(ce_prescaler),
        .O(cnt_prescaler[13]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt_prescaler[14]_i_1 
       (.I0(data0[14]),
        .I1(ce_prescaler),
        .O(cnt_prescaler[14]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt_prescaler[15]_i_1 
       (.I0(data0[15]),
        .I1(ce_prescaler),
        .O(cnt_prescaler[15]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt_prescaler[16]_i_1 
       (.I0(data0[16]),
        .I1(ce_prescaler),
        .O(cnt_prescaler[16]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt_prescaler[1]_i_1 
       (.I0(data0[1]),
        .I1(ce_prescaler),
        .O(cnt_prescaler[1]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt_prescaler[2]_i_1 
       (.I0(data0[2]),
        .I1(ce_prescaler),
        .O(cnt_prescaler[2]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt_prescaler[3]_i_1 
       (.I0(data0[3]),
        .I1(ce_prescaler),
        .O(cnt_prescaler[3]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt_prescaler[4]_i_1 
       (.I0(data0[4]),
        .I1(ce_prescaler),
        .O(cnt_prescaler[4]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt_prescaler[5]_i_1 
       (.I0(data0[5]),
        .I1(ce_prescaler),
        .O(cnt_prescaler[5]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt_prescaler[6]_i_1 
       (.I0(data0[6]),
        .I1(ce_prescaler),
        .O(cnt_prescaler[6]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt_prescaler[7]_i_1 
       (.I0(data0[7]),
        .I1(ce_prescaler),
        .O(cnt_prescaler[7]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt_prescaler[8]_i_1 
       (.I0(data0[8]),
        .I1(ce_prescaler),
        .O(cnt_prescaler[8]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt_prescaler[9]_i_1 
       (.I0(data0[9]),
        .I1(ce_prescaler),
        .O(cnt_prescaler[9]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_prescaler_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(RST_IBUF),
        .D(cnt_prescaler[0]),
        .Q(\cnt_prescaler_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_prescaler_reg[10] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(RST_IBUF),
        .D(cnt_prescaler[10]),
        .Q(\cnt_prescaler_reg_n_0_[10] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_prescaler_reg[11] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(RST_IBUF),
        .D(cnt_prescaler[11]),
        .Q(\cnt_prescaler_reg_n_0_[11] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_prescaler_reg[12] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(RST_IBUF),
        .D(cnt_prescaler[12]),
        .Q(\cnt_prescaler_reg_n_0_[12] ));
  CARRY4 \cnt_prescaler_reg[12]_i_2 
       (.CI(\cnt_prescaler_reg[8]_i_2_n_0 ),
        .CO({\cnt_prescaler_reg[12]_i_2_n_0 ,\NLW_cnt_prescaler_reg[12]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[12:9]),
        .S({\cnt_prescaler_reg_n_0_[12] ,\cnt_prescaler_reg_n_0_[11] ,\cnt_prescaler_reg_n_0_[10] ,\cnt_prescaler_reg_n_0_[9] }));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_prescaler_reg[13] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(RST_IBUF),
        .D(cnt_prescaler[13]),
        .Q(\cnt_prescaler_reg_n_0_[13] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_prescaler_reg[14] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(RST_IBUF),
        .D(cnt_prescaler[14]),
        .Q(\cnt_prescaler_reg_n_0_[14] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_prescaler_reg[15] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(RST_IBUF),
        .D(cnt_prescaler[15]),
        .Q(\cnt_prescaler_reg_n_0_[15] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_prescaler_reg[16] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(RST_IBUF),
        .D(cnt_prescaler[16]),
        .Q(\cnt_prescaler_reg_n_0_[16] ));
  CARRY4 \cnt_prescaler_reg[16]_i_2 
       (.CI(\cnt_prescaler_reg[12]_i_2_n_0 ),
        .CO(\NLW_cnt_prescaler_reg[16]_i_2_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[16:13]),
        .S({\cnt_prescaler_reg_n_0_[16] ,\cnt_prescaler_reg_n_0_[15] ,\cnt_prescaler_reg_n_0_[14] ,\cnt_prescaler_reg_n_0_[13] }));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_prescaler_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(RST_IBUF),
        .D(cnt_prescaler[1]),
        .Q(\cnt_prescaler_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_prescaler_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(RST_IBUF),
        .D(cnt_prescaler[2]),
        .Q(\cnt_prescaler_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_prescaler_reg[3] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(RST_IBUF),
        .D(cnt_prescaler[3]),
        .Q(\cnt_prescaler_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_prescaler_reg[4] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(RST_IBUF),
        .D(cnt_prescaler[4]),
        .Q(\cnt_prescaler_reg_n_0_[4] ));
  CARRY4 \cnt_prescaler_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\cnt_prescaler_reg[4]_i_2_n_0 ,\NLW_cnt_prescaler_reg[4]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(\cnt_prescaler_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[4:1]),
        .S({\cnt_prescaler_reg_n_0_[4] ,\cnt_prescaler_reg_n_0_[3] ,\cnt_prescaler_reg_n_0_[2] ,\cnt_prescaler_reg_n_0_[1] }));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_prescaler_reg[5] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(RST_IBUF),
        .D(cnt_prescaler[5]),
        .Q(\cnt_prescaler_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_prescaler_reg[6] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(RST_IBUF),
        .D(cnt_prescaler[6]),
        .Q(\cnt_prescaler_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_prescaler_reg[7] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(RST_IBUF),
        .D(cnt_prescaler[7]),
        .Q(\cnt_prescaler_reg_n_0_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_prescaler_reg[8] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(RST_IBUF),
        .D(cnt_prescaler[8]),
        .Q(\cnt_prescaler_reg_n_0_[8] ));
  CARRY4 \cnt_prescaler_reg[8]_i_2 
       (.CI(\cnt_prescaler_reg[4]_i_2_n_0 ),
        .CO({\cnt_prescaler_reg[8]_i_2_n_0 ,\NLW_cnt_prescaler_reg[8]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[8:5]),
        .S({\cnt_prescaler_reg_n_0_[8] ,\cnt_prescaler_reg_n_0_[7] ,\cnt_prescaler_reg_n_0_[6] ,\cnt_prescaler_reg_n_0_[5] }));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_prescaler_reg[9] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(RST_IBUF),
        .D(cnt_prescaler[9]),
        .Q(\cnt_prescaler_reg_n_0_[9] ));
  LUT1 #(
    .INIT(2'h1)) 
    \decenas[0]_i_1 
       (.I0(\decenas_reg_n_0_[0] ),
        .O(\decenas[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0BF0)) 
    \decenas[1]_i_1 
       (.I0(\decenas_reg_n_0_[2] ),
        .I1(\decenas_reg_n_0_[3] ),
        .I2(\decenas_reg_n_0_[1] ),
        .I3(\decenas_reg_n_0_[0] ),
        .O(\decenas[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \decenas[2]_i_1 
       (.I0(\decenas_reg_n_0_[0] ),
        .I1(\decenas_reg_n_0_[1] ),
        .I2(\decenas_reg_n_0_[2] ),
        .O(\decenas[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0004000000000000)) 
    \decenas[3]_i_1 
       (.I0(ce_prescaler),
        .I1(F_OUT_IBUF),
        .I2(\unidades_reg_n_0_[2] ),
        .I3(\unidades_reg_n_0_[1] ),
        .I4(\unidades_reg_n_0_[3] ),
        .I5(\unidades_reg_n_0_[0] ),
        .O(decenas));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h6F80)) 
    \decenas[3]_i_2 
       (.I0(\decenas_reg_n_0_[2] ),
        .I1(\decenas_reg_n_0_[1] ),
        .I2(\decenas_reg_n_0_[0] ),
        .I3(\decenas_reg_n_0_[3] ),
        .O(\decenas[3]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \decenas_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(decenas),
        .CLR(RST_IBUF),
        .D(\decenas[0]_i_1_n_0 ),
        .Q(\decenas_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \decenas_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(decenas),
        .CLR(RST_IBUF),
        .D(\decenas[1]_i_1_n_0 ),
        .Q(\decenas_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \decenas_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(decenas),
        .CLR(RST_IBUF),
        .D(\decenas[2]_i_1_n_0 ),
        .Q(\decenas_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \decenas_reg[3] 
       (.C(CLK_IBUF_BUFG),
        .CE(decenas),
        .CLR(RST_IBUF),
        .D(\decenas[3]_i_2_n_0 ),
        .Q(\decenas_reg_n_0_[3] ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \millares[0]_i_1 
       (.I0(millares_reg__0[0]),
        .O(plusOp[0]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \millares[1]_i_1 
       (.I0(millares_reg__0[0]),
        .I1(millares_reg__0[1]),
        .O(plusOp[1]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \millares[2]_i_1 
       (.I0(millares_reg__0[0]),
        .I1(millares_reg__0[1]),
        .I2(millares_reg__0[2]),
        .O(plusOp[2]));
  LUT5 #(
    .INIT(32'h00000004)) 
    \millares[3]_i_1 
       (.I0(ce_prescaler),
        .I1(F_OUT_IBUF),
        .I2(\millares[3]_i_3_n_0 ),
        .I3(\centenas[3]_i_4_n_0 ),
        .I4(\centenas[3]_i_3_n_0 ),
        .O(millares));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \millares[3]_i_2 
       (.I0(millares_reg__0[3]),
        .I1(millares_reg__0[0]),
        .I2(millares_reg__0[1]),
        .I3(millares_reg__0[2]),
        .O(plusOp[3]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hFFF7)) 
    \millares[3]_i_3 
       (.I0(\centenas_reg_n_0_[0] ),
        .I1(\centenas_reg_n_0_[3] ),
        .I2(\centenas_reg_n_0_[1] ),
        .I3(\centenas_reg_n_0_[2] ),
        .O(\millares[3]_i_3_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \millares_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(millares),
        .CLR(RST_IBUF),
        .D(plusOp[0]),
        .Q(millares_reg__0[0]));
  FDCE #(
    .INIT(1'b0)) 
    \millares_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(millares),
        .CLR(RST_IBUF),
        .D(plusOp[1]),
        .Q(millares_reg__0[1]));
  FDCE #(
    .INIT(1'b0)) 
    \millares_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(millares),
        .CLR(RST_IBUF),
        .D(plusOp[2]),
        .Q(millares_reg__0[2]));
  FDCE #(
    .INIT(1'b0)) 
    \millares_reg[3] 
       (.C(CLK_IBUF_BUFG),
        .CE(millares),
        .CLR(RST_IBUF),
        .D(plusOp[3]),
        .Q(millares_reg__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT1 #(
    .INIT(2'h1)) 
    t_out_i_1
       (.I0(t_out),
        .O(p_0_in));
  FDCE #(
    .INIT(1'b0)) 
    t_out_reg
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(RST_IBUF),
        .D(p_0_in),
        .Q(t_out));
  LUT1 #(
    .INIT(2'h1)) 
    \unidades[0]_i_1 
       (.I0(\unidades_reg_n_0_[0] ),
        .O(\unidades[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h0BF0)) 
    \unidades[1]_i_1 
       (.I0(\unidades_reg_n_0_[2] ),
        .I1(\unidades_reg_n_0_[3] ),
        .I2(\unidades_reg_n_0_[1] ),
        .I3(\unidades_reg_n_0_[0] ),
        .O(\unidades[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \unidades[2]_i_1 
       (.I0(\unidades_reg_n_0_[0] ),
        .I1(\unidades_reg_n_0_[1] ),
        .I2(\unidades_reg_n_0_[2] ),
        .O(\unidades[2]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \unidades[3]_i_1 
       (.I0(F_OUT_IBUF),
        .I1(ce_prescaler),
        .O(unidades));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h6F80)) 
    \unidades[3]_i_2 
       (.I0(\unidades_reg_n_0_[2] ),
        .I1(\unidades_reg_n_0_[1] ),
        .I2(\unidades_reg_n_0_[0] ),
        .I3(\unidades_reg_n_0_[3] ),
        .O(\unidades[3]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \unidades_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(unidades),
        .CLR(RST_IBUF),
        .D(\unidades[0]_i_1_n_0 ),
        .Q(\unidades_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \unidades_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(unidades),
        .CLR(RST_IBUF),
        .D(\unidades[1]_i_1_n_0 ),
        .Q(\unidades_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \unidades_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(unidades),
        .CLR(RST_IBUF),
        .D(\unidades[2]_i_1_n_0 ),
        .Q(\unidades_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \unidades_reg[3] 
       (.C(CLK_IBUF_BUFG),
        .CE(unidades),
        .CLR(RST_IBUF),
        .D(\unidades[3]_i_2_n_0 ),
        .Q(\unidades_reg_n_0_[3] ));
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
