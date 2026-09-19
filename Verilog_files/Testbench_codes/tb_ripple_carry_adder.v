`timescale 1ns / 1ps

module tb_ripple_carry_adder();

    reg A0,B0,A1,B1,A2,B2,A3,B3,cin;
    wire S0,S1,S2,S3,c3;
    
    ripple_carry_adder DUT(
    A0,B0,A1,B1,A2,B2,A3,B3,cin,
    S0,S1,S2,S3,c3
    );
    
    initial begin 
    
    A0=0;B0=0;A1=0;B1=0;A2=0;B2=0;A3=0;B3=0;cin=0;  //0000+0000 with cin=0 = 0000 with c3=0
    #10;
    
    A0=1;B0=0;A1=0;B1=1;A2=1;B2=0;A3=0;B3=1;cin=0;  //0101+1010 with cin=0 = 1111 with c3=0
    #10;
    
    A0=0;B0=0;A1=0;B1=1;A2=1;B2=1;A3=1;B3=0;cin=1;  //1100+0110 with cin=1 = 0011 with c3=1
    #10;
    
    A0=1;B0=1;A1=1;B1=1;A2=1;B2=1;A3=1;B3=1;cin=1;  //1111+1111 with cin=1 = 1111 with c3=1
    #10;
    
    $finish;
    end
    
endmodule
