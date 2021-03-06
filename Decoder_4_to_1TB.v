`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/05/2021 11:02:31 PM
// Design Name: 
// Module Name: Decoder_4_to_1TB
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


module Decoder_4_to_1TB();
 reg A, B, En;
 wire [3:0] D;
 
 initial 
 begin
 #00 En = 1'b1; A = 1'bx; B = 1'bx; 
 #10 En = 1'b0; A = 1'b0; B = 1'b0; 
 #10 En = 1'b0; A = 1'b0; B = 1'b1; 
 #10 En = 1'b0; A = 1'b1; B = 1'b0; 
 #10 En = 1'b0; A = 1'b1; B = 1'b1; 
 #10 $stop;
 end
 
 //display
 
 initial 
 $monitor($time, "En = %b, A = %b, B = %b -- D =%b", En, A, B, D);
 
 //instantiate design
 Decoder_4_to_1 inst0(En, A, B, D);
   
endmodule
