module mux_case(A,B,N,X);
input [3:0] A,B; //四位元輸入
input [2:0] N; //三位元輸入
output [3:0] X; //四位元輸出
reg X;

always @(A,B,N) 
    case (N)
    1:X = A & B ;
    2:X = A | B ;
    3:X = A & B ;
    6:X = A | B ;
        default : X = 0;
    endcase
endmodule