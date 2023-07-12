`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/15/2023 11:38:31 AM
// Design Name: 
// Module Name: gcd_controlpath
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


module gcd_controlpath(
input wire clk,
input wire clr,
input wire go,
input wire eqflg,
input wire ltflg,
output reg xmsel=0,
output reg ymsel=0,
output reg xld=0,
output reg yld=0,
output reg gld=0
    );
reg[2:0]ps=0,ns;
parameter start=3'b000,input1=3'b001,test1=3'b010,test2=3'b011,update1=3'b100,update2=3'b101,done=3'b110;
always@(posedge clk or posedge clr)
begin
if(clr==1)
ps<=start;
else
ps<=ns;
end
always@(*)
begin
case(ps)
start:if(go==1)
ns=input1;
else
ns=start;
input1:ns=test1;
test1:if(eqflg==1)
ns=done;
else
ns=test2;
test2:if(ltflg==1)
ns=update1;
else
ns=update2;
update1:ns=test1;
update2:ns=test2;
done:ns=done;
default:ns=start;
endcase
end
always@(*)
begin
xld=0;yld=0;gld=0;
xmsel=0;ymsel=0;
case(ps)
input1:begin
xld=1;yld=1;xmsel=1;ymsel=1;
end
update1:yld=1;
update2:xld=1;
done:gld=1;
default;
endcase
end

endmodule
