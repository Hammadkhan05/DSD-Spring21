`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/11/2021 05:55:09 PM
// Design Name: 
// Module Name: Dec_to_BCD
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

//Hammad Khan  --  041-18-0005
module Dec_to_BCD(out,inp);
input wire [9:0] inp;
output reg [3:0] out;

always@(*)

begin

    case(inp)
        10'b0000000001 : out = 4'b0000;     // 0
        10'b0000000010 : out = 4'b0001;    // 1
        10'b0000000100 : out = 4'b0010;     // 2
        10'b0000001000 : out = 4'b0011;     // 3
        10'b0000010000 : out = 4'b0100;   // 4
        10'b0000100000 : out = 4'b0101;    // 5
        10'b0001000000 : out = 4'b0110;    // 6 
        10'b0010000000 : out = 4'b0111;   // 7
        10'b0100000000 : out = 4'b1000;  // 8
        10'b1000000000 : out = 4'b1001;     // 9
        default : out = 4'bzzzz;     // 
    endcase
end

endmodule
