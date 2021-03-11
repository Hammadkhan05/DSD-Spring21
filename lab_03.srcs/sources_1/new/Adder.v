`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/11/2021 07:07:01 PM
// Design Name: 
// Module Name: Adder
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


module Adder(Sum, Cout, A, B, Cin);
parameter N=16;

input  [N-1:0] A,B;
input Cin;
output reg [N-1:0] Sum;
output reg Cout;

//logic

always@(*)

begin
    {Cout,Sum} = A + B + Cin;
end





endmodule
