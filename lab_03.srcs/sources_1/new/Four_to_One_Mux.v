`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/11/2021 01:21:04 PM
// Design Name: 
// Module Name: Four_to_One_Mux
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


module Four_to_One_Mux(Out, s0, s1, d0, d1, d2, d3);

input   s0, s1, d0, d1, d2, d3;
output reg Out;
 
 //logic using behavioural modelling
 
 
 always@(s0, s1, d0, d1, d2, d3)
 begin 
        if (s1 == 1'b0 && s0 == 1'b0)
            Out = d0;
        else if (s1 == 1'b0 && s0 == 1'b1)
            Out = d1;
        else if (s1 == 1'b1 && s0 == 1'b0)
            Out = d2;
        else if (s1 == 1'b1 && s0 == 1'b1)
            Out = d3;
        else
            Out = 1'bz;       
 end
 
 
endmodule
