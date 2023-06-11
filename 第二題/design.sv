module two_com (I,O);
input [3:0] I; //四位元輸入
output [3:0] O; //四位元輸出
buf (O[0],I[0]); //buf為緩衝閘 I0會給O0賦值
xor(O[1],I[0],I[1]); // 11
assign x = I[0] | I[1]; // 12
or(y,I[0],I[1],I[2]);//13
xor(O[2],x,I[2]); //14
xor(O[3],y,I[3]);//15
endmodule
