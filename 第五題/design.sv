module Ex(D,Q);
input [3:0] D; //四位元輸入
output [1:0] Q; //二位元輸出
reg [1:0] Q; //宣告為暫存器資料
always@ (D)
    casex(D)
        4'b1000 : Q = 3;
        4'bx100 : Q = 2;
        4'bxx10 : Q = 1;
        default : Q = 0;
    endcase
endmodule
