`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/15/2023 11:55:20 AM
// Design Name: 
// Module Name: gcd
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module gcd(
input wire clk,
input wire clr,
input wire go,
input wire[3:0]xin,
input wire[3:0]yin,
output wire[3:0]gcd_out
    );
wire eqflg,ltflg,xmsel,ymsel;
wire xld,yld,gld;
gcd_datapath u1(.clk(clk),.clr(clr),.xmsel(xmsel),.ymsel(ymsel),.xld(xld),.yld(yld),.gld(gld),.xin(xin),.yin(yin),.gcd(gcd_out),.eqflg(eqflg),.ltflg(ltflg));
gcd_controlpath u2(.clk(clk),.clr(clr),.go(go),.eqflg(eqflg),.ltflg(ltflg),.xmsel(xmsel),.ymsel(ymsel),.xld(xld),.yld(yld),.gld(gld));
endmodule
