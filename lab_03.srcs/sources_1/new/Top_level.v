`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/11/2021 07:24:59 PM
// Design Name: 
// Module Name: Top_level
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


module Top_level(Deci, Cathodes, Anodes);
input [9:0] Deci;
output [6:0] Cathodes;
output Anodes;

wire [3:0] bcd;

Dec_to_BCD inst0(bcd, Deci);
SSD_driver inst1(bcd, Anodes, Cathodes);

endmodule
