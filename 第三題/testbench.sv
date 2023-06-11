`include "design.sv"
`timescale 1ns/1ns
module Test();

    reg A,B,C;
    wire F;


    Ex uut(
        .A(A),
        .B(B),
        .C(C),
        .F(F)
    );

    initial begin
        A = 0;
        B = 0;
        C = 0;
        #100;
        A = 0;
        B = 0;
        C = 1;
        #100;
        A = 0;
        B = 1;
        C = 0;
        #100;
        A = 0;
        B = 1;
        C = 1;
        #100;
        A = 1;
        B = 0;
        C = 0;
        #100;
        A = 1;
        B = 0;
        C = 1;
        #100;
        A = 1;
        B = 1;
        C = 0;
        #100;
        A = 1;
        B = 1;
        C = 1;
        #100;
    end

    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(0);
    end
endmodule