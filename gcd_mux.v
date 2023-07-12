`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/15/2023 11:29:19 AM
// Design Name: 
// Module Name: gcd_mux
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


module gcd_mux(
input wire[3:0]a,
input wire[3:0]b,
input wire s,
output reg[3:0]y
    );
    always@(*)
    if(s==0)
    y=a;
    else
    y=b;
endmodule
