`timescale 1ns / 1ps

module tb_eight_bit_adder;

    reg A0,A1,A2,A3,A4,A5,A6,A7;
    reg B0,B1,B2,B3,B4,B5,B6,B7;
    reg cin;

    wire S0,S1,S2,S3,S4,S5,S6,S7,C7;

    eight_bit_adder DUT (
        A0,A1,A2,A3,A4,A5,A6,A7,
        B0,B1,B2,B3,B4,B5,B6,B7,
        cin,
        S0,S1,S2,S3,S4,S5,S6,S7,
        C7
    );

    initial begin
        // Test 1: 5 + 3 = 8
        {A7,A6,A5,A4,A3,A2,A1,A0} = 8'd5;
        {B7,B6,B5,B4,B3,B2,B1,B0} = 8'd3;
        cin = 0;
        #10;

        // Test 2: 15 + 10 = 25
        {A7,A6,A5,A4,A3,A2,A1,A0} = 8'd15;
        {B7,B6,B5,B4,B3,B2,B1,B0} = 8'd10;
        cin = 0;
        #10;

        // Test 3: 257 + 256 = 256 
        {A7,A6,A5,A4,A3,A2,A1,A0} = 8'd255;
        {B7,B6,B5,B4,B3,B2,B1,B0} = 8'd255;
        cin = 1;
        #10;

        $stop;
    end

endmodule
