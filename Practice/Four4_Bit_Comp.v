`timescale 1ns / 1ps


module Four4_Bit_Comp( A_gt_B, A, B);
input [3:0] A, B;
output reg   A_gt_B ;

initial 
begin

assign A_gt_B =   ( (A[3] & (~B[3])) |
                  ( (A[3] & B[3]) & (A[2] & (~ B[2]))) |
                  ( (A[3] & B[3]) & (A[2] & B[2])& (A[1]& (~B[1])))|
                  ( (A[3] & B[3]) & (A[2] & B[2])& (A[1]& (B[1])) & (A[0]& (~B[0]) ) ));         

end


endmodule

