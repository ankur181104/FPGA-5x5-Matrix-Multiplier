`timescale 1ns / 1ps

module tb_sixteen_bit_adder;

    reg A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,A15;
    reg B0,B1,B2,B3,B4,B5,B6,B7,B8,B9,B10,B11,B12,B13,B14,B15;
    reg cin;

    wire S0,S1,S2,S3,S4,S5,S6,S7,
         S8,S9,S10,S11,S12,S13,S14,S15,
         C15;

    sixteen_bit_adder DUT (
        A0,A1,A2,A3,A4,A5,A6,A7,
        A8,A9,A10,A11,A12,A13,A14,A15,
        B0,B1,B2,B3,B4,B5,B6,B7,
        B8,B9,B10,B11,B12,B13,B14,B15,
        cin,
        S0,S1,S2,S3,S4,S5,S6,S7,
        S8,S9,S10,S11,S12,S13,S14,S15,
        C15
    );

    initial begin
        // Test 1: 20 + 10 = 30
        {A15,A14,A13,A12,A11,A10,A9,A8,A7,A6,A5,A4,A3,A2,A1,A0} = 16'd20;
        {B15,B14,B13,B12,B11,B10,B9,B8,B7,B6,B5,B4,B3,B2,B1,B0} = 16'd10;
        cin = 0;
        #10;

        // Test 2: 1000 + 2000 = 3000
        {A15,A14,A13,A12,A11,A10,A9,A8,A7,A6,A5,A4,A3,A2,A1,A0} = 16'd1000;
        {B15,B14,B13,B12,B11,B10,B9,B8,B7,B6,B5,B4,B3,B2,B1,B0} = 16'd2000;
        cin = 0;
        #10;

        // Test 3: 65535 + 1 = overflow
        {A15,A14,A13,A12,A11,A10,A9,A8,A7,A6,A5,A4,A3,A2,A1,A0} = 16'd65535;
        {B15,B14,B13,B12,B11,B10,B9,B8,B7,B6,B5,B4,B3,B2,B1,B0} = 16'd1;
        cin = 0;
        #10;

        $stop;
    end

endmodule
