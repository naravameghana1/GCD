`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/15/2023 11:31:47 AM
// Design Name: 
// Module Name: gcd_reg
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


module gcd_reg(
input wire load,
input wire clk,
input wire clr,
input wire [3:0]d,
output reg [3:0]q=0
    );
    always@(posedge clk or posedge clr)
    if(clr==1)
    q<=0;
    else if(load==1)
    q<=d;
    endmodule

