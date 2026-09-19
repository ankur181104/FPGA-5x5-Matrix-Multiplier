`timescale 1ns / 1ps
module full_adder(
    input a,b,c,
    output sum2,
    output carry2
    );
    
    wire s1,c1,c2;
    
    half_adder HA1(a,b,s1,c1);
    half_adder HA2(s1,c,sum2,c2);
    
    assign carry2 = c1|c2;
    
endmodule
