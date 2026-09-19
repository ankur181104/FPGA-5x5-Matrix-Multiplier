`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/19/2026 12:16:04 AM
// Design Name: 
// Module Name: sixteen_bit_adder
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module sixteen_bit_adder(
    input A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,A15,
    input B0,B1,B2,B3,B4,B5,B6,B7,B8,B9,B10,B11,B12,B13,B14,B15,
    input cin,
    output S0,S1,S2,S3,S4,S5,S6,S7,S8,S9,S10,S11,S12,S13,S14,S15,C15
    );
    
    wire carry;
    
    eight_bit_adder AD1(
    A0,A1,A2,A3,A4,A5,A6,A7,
    B0,B1,B2,B3,B4,B5,B6,B7,
    cin,
    S0,S1,S2,S3,S4,S5,S6,S7,
    carry
    );
    
    eight_bit_adder AD2(
    A8,A9,A10,A11,A12,A13,A14,A15,
    B8,B9,B10,B11,B12,B13,B14,B15,
    carry,
    S8,S9,S10,S11,S12,S13,S14,S15,
    C15
    );
    
endmodule
