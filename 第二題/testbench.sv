`include "design.sv"
`timescale 1ns/1ns
module Test();

    reg [3:0] I;
    wire [3:0] O;

    
    // iverilog -o wave testbench.sv
    // vvp wave
    
    two_com uut(
        .I(I),
        .O(O)
    );

    initial begin
        I = 4'b0000;
        #100;

        I = 4'b0001;
        #100;

        I = 4'b0101;
        #100;
        I = 4'b1001;
        #100;
        I = 4'b0111;
        #100;
        I = 4'b1110;
        #100;

    end

    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(0);

    end


endmodule
