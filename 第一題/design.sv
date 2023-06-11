module Ex(P,Q,R,S,T,U,V,W,X,Y,Z);
input [4:0] P,Q; //五位元輸入
output [6:0] R; //七位元輸出
output [3:0] S; //四位元輸出
output [5:0] T,W; // 六位元輸出
output [4:0] U,V,X; // 五位元輸出
output Y,Z; //一位元輸出
assign R = P * 3;
assign S = Q >> 3; //用 >> 3是因為要右移2的3次方
assign T = 5 + P;
assign U = P ~& Q; // 反及的符號為~&
assign V = {P[1:0],P[4:2]}; // P[1] P[0] P[4] P[3] P[2] 
assign W = {P[2:0],Q[4:2]}; // P[4] P[3] P[2] P[1] P[0] Q[4] Q[3] Q[2] Q[1] Q[0]
assign X = P > 10 ? P : Q;
assign Y = Q >= 10 && Q <= 20 ? 1 : 0
assign Z = ^ P ? 1 : 0 //題目要XOR 所以用 ^ 
endmodule