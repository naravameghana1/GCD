`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/15/2023 12:02:19 PM
// Design Name: 
// Module Name: gcd_tb
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


module gcd_tb(
    );
reg clk;
reg clr;
reg go;
reg [3:0] xin;
reg [3:0]yin;
wire[3:0]gcd_out;
gcd u3(.clk(clk),.clr(clr),.go(go),.xin(xin),.yin(yin),.gcd_out(gcd_out));
initial begin
clk=1'b0;
clr=1'b0;
go=1'b0;
xin=4'b0000;
yin=4'b0000;
end
always #10 clk=~clk;
initial begin
@(negedge clk);
clr=1;
@(negedge clk);
clr=1'b0;
go=1'b1;
xin=4'b0011;
yin=4'b0110;
@(negedge clk);
@(negedge clk);
@(negedge clk);
@(negedge clk);
@(negedge clk);
@(negedge clk);
@(negedge clk);
@(negedge clk);
@(negedge clk);
@(negedge clk);
clr=1;
@(negedge clk);
clr=1'b0;
go=1'b1;
xin=4'b0100;
yin=4'b1000;
@(negedge clk);
@(negedge clk);
@(negedge clk);
@(negedge clk);
@(negedge clk);
@(negedge clk);
@(negedge clk);
@(negedge clk);
@(negedge clk);
@(negedge clk);
$finish;
end
endmodule
