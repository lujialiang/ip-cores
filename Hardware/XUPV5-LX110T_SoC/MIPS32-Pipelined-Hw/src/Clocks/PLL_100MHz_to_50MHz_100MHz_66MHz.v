////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____ 
//  /   /\/   / 
// /___/  \  /    Vendor: Xilinx 
// \   \   \/     Version : 14.1
//  \   \         Application : xaw2verilog
//  /   /         Filename : pl3.v
// /___/   /\     Timestamp : 06/15/2012 18:39:50
// \   \  /  \ 
//  \___\/\___\ 
//
//Command: xaw2verilog -intstyle C:/root/Work/Gauss/XUM/delz/ipcore_dir/pl3.xaw -st pl3.v
//Design Name: pl3
//Device: xc5vlx110t-2ff1136
//
// Module pl3
// Generated by Xilinx Architecture Wizard
// Written for synthesis tool: XST
// For block PLL_ADV_INST, Estimated PLL Jitter for CLKOUT0 = 0.171 ns
// For block PLL_ADV_INST, Estimated PLL Jitter for CLKOUT1 = 0.149 ns
// For block PLL_ADV_INST, Estimated PLL Jitter for CLKOUT2 = 0.162 ns
`timescale 1ns / 1ps

module PLL_100MHz_to_50MHz_100MHz_66MHz(CLKIN1_IN, 
           RST_IN, 
           CLKOUT0_OUT, 
           CLKOUT1_OUT, 
           CLKOUT2_OUT, 
           LOCKED_OUT);

    input CLKIN1_IN;
    input RST_IN;
   output CLKOUT0_OUT;
   output CLKOUT1_OUT;
   output CLKOUT2_OUT;
   output LOCKED_OUT;
   
   wire CLKFBOUT_CLKFBIN;
   wire CLKIN1_IBUFG;
   wire CLKOUT0_BUF;
   wire CLKOUT1_BUF;
   wire CLKOUT2_BUF;
   wire GND_BIT;
   wire [4:0] GND_BUS_5;
   wire [15:0] GND_BUS_16;
   wire VCC_BIT;
   
   assign GND_BIT = 0;
   assign GND_BUS_5 = 5'b00000;
   assign GND_BUS_16 = 16'b0000000000000000;
   assign VCC_BIT = 1;
   IBUFG  CLKIN1_IBUFG_INST (.I(CLKIN1_IN), 
                            .O(CLKIN1_IBUFG));
   BUFG  CLKOUT0_BUFG_INST (.I(CLKOUT0_BUF), 
                           .O(CLKOUT0_OUT));
   BUFG  CLKOUT1_BUFG_INST (.I(CLKOUT1_BUF), 
                           .O(CLKOUT1_OUT));
   BUFG  CLKOUT2_BUFG_INST (.I(CLKOUT2_BUF), 
                           .O(CLKOUT2_OUT));
   PLL_ADV #( .BANDWIDTH("OPTIMIZED"), .CLKIN1_PERIOD(10.000), 
         .CLKIN2_PERIOD(10.000), .CLKOUT0_DIVIDE(8), .CLKOUT1_DIVIDE(4), 
         .CLKOUT2_DIVIDE(6), .CLKOUT0_PHASE(0.000), .CLKOUT1_PHASE(0.000), 
         .CLKOUT2_PHASE(0.000), .CLKOUT0_DUTY_CYCLE(0.500), 
         .CLKOUT1_DUTY_CYCLE(0.500), .CLKOUT2_DUTY_CYCLE(0.500), 
         .COMPENSATION("SYSTEM_SYNCHRONOUS"), .DIVCLK_DIVIDE(1), 
         .CLKFBOUT_MULT(4), .CLKFBOUT_PHASE(0.0), .REF_JITTER(0.005000) ) 
         PLL_ADV_INST (.CLKFBIN(CLKFBOUT_CLKFBIN), 
                         .CLKINSEL(VCC_BIT), 
                         .CLKIN1(CLKIN1_IBUFG), 
                         .CLKIN2(GND_BIT), 
                         .DADDR(GND_BUS_5[4:0]), 
                         .DCLK(GND_BIT), 
                         .DEN(GND_BIT), 
                         .DI(GND_BUS_16[15:0]), 
                         .DWE(GND_BIT), 
                         .REL(GND_BIT), 
                         .RST(RST_IN), 
                         .CLKFBDCM(), 
                         .CLKFBOUT(CLKFBOUT_CLKFBIN), 
                         .CLKOUTDCM0(), 
                         .CLKOUTDCM1(), 
                         .CLKOUTDCM2(), 
                         .CLKOUTDCM3(), 
                         .CLKOUTDCM4(), 
                         .CLKOUTDCM5(), 
                         .CLKOUT0(CLKOUT0_BUF), 
                         .CLKOUT1(CLKOUT1_BUF), 
                         .CLKOUT2(CLKOUT2_BUF), 
                         .CLKOUT3(), 
                         .CLKOUT4(), 
                         .CLKOUT5(), 
                         .DO(), 
                         .DRDY(), 
                         .LOCKED(LOCKED_OUT));
endmodule
