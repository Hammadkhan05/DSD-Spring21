`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/05/2021 11:01:18 PM
// Design Name: 
// Module Name: Decoder_4_to_1
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


module Decoder_4_to_1(
    input En,
    input A,
    input B,
    output [3:0] D
    );
    //logic
    assign D[0] = ~(~A & ~B & ~En);
    assign D[0] = ~(~A &  B & ~En);
    assign D[0] = ~( A & ~B & ~En);
    assign D[0] = ~( A & B & ~En);
    

  
endmodule
