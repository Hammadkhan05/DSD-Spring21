`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/11/2021 12:54:28 PM
// Design Name: 
// Module Name: Conditional_op
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


module Conditional_op(D_out, S,D );

output D_out;
input [1:0] S ;
input [3:0] D;
 
 assign D_out = S[1] ? (S[0] ? D[3] : D[2]) : (S[0] ? D[1] : D[0]);
endmodule
