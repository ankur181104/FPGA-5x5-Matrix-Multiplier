`timescale 1ns / 1ps

module ripple_carry_adder(
    input A0,B0,A1,B1,A2,B2,A3,B3,cin,
    output S0,S1,S2,S3,c3
    );
    
    wire c0,c1,c2;
    
    full_adder FA1(A0,B0,cin,S0,c0);
    full_adder FA2(A1,B1,c0,S1,c1);
    full_adder FA3(A2,B2,c1,S2,c2);
    full_adder FA4(A3,B3,c2,S3,c3);
    
endmodule
