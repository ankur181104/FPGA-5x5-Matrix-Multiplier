`timescale 1ns / 1ps

module eight_bit_adder(
    input A0,A1,A2,A3,A4,A5,A6,A7,
    input B0,B1,B2,B3,B4,B5,B6,B7,
    input cin,
    output S0,S1,S2,S3,S4,S5,S6,S7,C7
    );
    
    wire carry;
    
    ripple_carry_adder RCA1(A0,B0,A1,B1,A2,B2,A3,B3,cin,S0,S1,S2,S3,carry);
    ripple_carry_adder RCA2(A4,B4,A5,B5,A6,B6,A7,B7,carry,S4,S5,S6,S7,C7);
    
endmodule