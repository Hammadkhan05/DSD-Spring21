`timescale 1ns / 1ps


module Four_Bit_Comp_TB(    );
reg [3:0] A,B;
wire A_gt_B;

initial
begin
#00 A=4'b1101; B=4'b0111;
#10 A=4'b0100; B=4'b0110;
#10 $finish;
end
initial
begin
$monitor ($time, "ns , A =%b, B= %b, A_gt_B =%d ", A, B, A_gt_B);
end

Four4_Bit_Comp FBC0(A_gt_B, A, B );

endmodule
