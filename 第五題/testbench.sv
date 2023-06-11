`timescale 1ns/1ns
`include "design.sv"
module Test();

    reg [3:0] D;
    wire [1:0] Q;
    Ex uut(
        .D(D),
        .Q(Q)
    );

    initial begin
        D = 4'b0000;
        #10 D = 4'b0001;
        #10 D = 4'b0010;
        #10 D = 4'b0011;
        #10 D = 4'b0100;
        #10 D = 4'b0101;
        #10 D = 4'b0110;
        #10 D = 4'b0111;
        #10 D = 4'b1000;
        #10 D = 4'b1001;
        #10 D = 4'b1010;
        #10 D = 4'b1011;
        #10 D = 4'b1100;
        #10 D = 4'b1101;
        #10 D = 4'b1110;
        #10 D = 4'b1111;
        #10 $finish;
    end

    initial begin

        $dumpfile("dump.vcd");
        $dumpvars(0);
    end


endmodule