`timescale 1ns/1ns
`include "design.sv"
module Test();

    reg [3:0] A;
    reg [3:0] B;
    reg [2:0] N;
    wire [3:0]X;


    mux_case uut(
        .A(A),
        .B(B),
        .N(N),
        .X(X)
    );

    initial begin
        A = 4'b0110;
        B = 4'b0101;
        N = 3'b000;
        #100;
        A = 4'b0110;
        B = 4'b0101;
        N = 3'b001;
        #100;
        A = 4'b0110;
        B = 4'b0101;
        N = 3'b010;
        #100;
        A = 4'b0110;
        B = 4'b0101;
        N = 3'b011;
        #100;
        A = 4'b0110;
        B = 4'b0101;
        N = 3'b110;
        #100;
    end

    initial begin

        $dumpfile("dump.vcd");
        $dumpvars(0);
    end


endmodule