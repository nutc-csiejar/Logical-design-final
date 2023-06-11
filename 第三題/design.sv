module Ex(A,B,C,F);
input A,B,C;
output F;
wire c1; // c1為A與B運算後之中繼符號
assign c1 = A & B;
assign F = c1 & C;
endmodule