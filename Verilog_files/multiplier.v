`timescale 1ns / 1ps

module multiplier(
    input A0,A1,A2,A3,B0,B1,B2,B3,
    output C0,C1,C2,C3,C4,C5,C6,C7
    );
   
   wire P0,P1,P2,P3,P4,P5,P6,P7,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16;
   
   assign X1  = A0&B0;
   assign X2  = A1&B0;
   assign X3  = A2&B0;
   assign X4  = A3&B0;
   assign X5  = A0&B1;
   assign X6  = A1&B1;
   assign X7  = A2&B1;
   assign X8  = A3&B1;
   assign X9  = A0&B2;
   assign X10 = A1&B2;
   assign X11 = A2&B2;
   assign X12 = A3&B2;
   assign X13 = A0&B3;
   assign X14 = A1&B3;
   assign X15 = A2&B3;
   assign X16 = A3&B3;
   
   assign C0 = X1;

ripple_carry_adder RCA1(X2,X5,X3,X6,X4,X7,0,X8,0,C1,P0,P1,P2,P3);

ripple_carry_adder RCA2(P0,X9,P1,X10,P2,X11,P3,X12,0,C2,P4,P5,P6,P7);

ripple_carry_adder RCA3(P4,X13,P5,X14,P6,X15,P7,X16,0,C3,C4,C5,C6,C7);
   
endmodule
