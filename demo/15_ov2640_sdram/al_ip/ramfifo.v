/************************************************************\
 **  Copyright (c) 2011-2021 Anlogic, Inc.
 **  All Right Reserved.
\************************************************************/
/************************************************************\
 ** Log	:	This file is generated by Anlogic IP Generator.
 ** File	:	C:/Users/zhang/Desktop/ov2640_sdram1/ov2640_sdram/al_ip/ramfifo.v
 ** Date	:	2020 04 05
 ** TD version	:	4.6.14756
\************************************************************/

`timescale 1ns / 1ps

module ramfifo (
	rst,
	di, clkr, re, clkw, we,
	do,
	empty_flag,full_flag,rdusedw,wrusedw
 
);

	input rst;
	input [15:0] di;
	input clkw, we;
	input clkr,re;

	output [15:0] do;
	output empty_flag;
	output full_flag;
	output [10:0] rdusedw;
	output [10:0] wrusedw;

EG_LOGIC_RAMFIFO #(
 	.DATA_WIDTH(16),
	.ADDR_WIDTH(10),
	.SHOWAHEAD(0),
	.IMPLEMENT("32K")
)
logic_ramfifo(
	.rst(rst),
	.di(di),
	.clkw(clkw),
	.we(we),
	.do(do),
	.clkr(clkr),
	.re(re),
	.empty_flag(empty_flag),
	.full_flag(full_flag),
	.rdusedw(rdusedw),
	.wrusedw(wrusedw)
);

endmodule