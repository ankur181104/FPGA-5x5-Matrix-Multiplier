`timescale 1ns / 1ps

module tb_output_matrix;

    // Input matrix A (rows)
    reg [3:0] A0,A1,A2,A3,A4;
    reg [3:0] B0,B1,B2,B3,B4;
    reg [3:0] C0,C1,C2,C3,C4;
    reg [3:0] D0,D1,D2,D3,D4;
    reg [3:0] E0,E1,E2,E3,E4;

    // Weight matrix (columns)
    reg [3:0] P0,Q0,R0,S0,T0;
    reg [3:0] P1,Q1,R1,S1,T1;
    reg [3:0] P2,Q2,R2,S2,T2;
    reg [3:0] P3,Q3,R3,S3,T3;
    reg [3:0] P4,Q4,R4,S4,T4;

    // Outputs
    wire [15:0] AP,AQ,AR,AS,AT;
    wire [15:0] BP,BQ,BR,BS,BT;
    wire [15:0] CP,CQ,CR,CS,CT;
    wire [15:0] DP,DQ,DR,DS,DT;
    wire [15:0] EP,EQ,ER,ES,ET;

    // DUT
    output_matrix DUT (
        A0,A1,A2,A3,A4,
        B0,B1,B2,B3,B4,
        C0,C1,C2,C3,C4,
        D0,D1,D2,D3,D4,
        E0,E1,E2,E3,E4,

        P0,Q0,R0,S0,T0,
        P1,Q1,R1,S1,T1,
        P2,Q2,R2,S2,T2,
        P3,Q3,R3,S3,T3,
        P4,Q4,R4,S4,T4,

        AP,AQ,AR,AS,AT,
        BP,BQ,BR,BS,BT,
        CP,CQ,CR,CS,CT,
        DP,DQ,DR,DS,DT,
        EP,EQ,ER,ES,ET
    );

    initial begin
        // -------- Matrix A --------
        A0=1; A1=2; A2=3; A3=4; A4=5;
        B0=1; B1=1; B2=1; B3=1; B4=1;
        C0=2; C1=2; C2=2; C3=2; C4=2;
        D0=3; D1=3; D2=3; D3=3; D4=3;
        E0=4; E1=4; E2=4; E3=4; E4=4;

        // -------- Matrix W --------
        P0=1; Q0=2; R0=3; S0=4; T0=5;
        P1=1; Q1=2; R1=3; S1=4; T1=5;
        P2=1; Q2=2; R2=3; S2=4; T2=5;
        P3=1; Q3=2; R3=3; S3=4; T3=5;
        P4=1; Q4=2; R4=3; S4=4; T4=5;

        #10;

        $display("\n===== OUTPUT MATRIX =====");

        $display("Row A: %d  %d  %d  %d  %d", AP,AQ,AR,AS,AT);
        $display("Row B: %d  %d  %d  %d  %d", BP,BQ,BR,BS,BT);
        $display("Row C: %d  %d  %d  %d  %d", CP,CQ,CR,CS,CT);
        $display("Row D: %d  %d  %d  %d  %d", DP,DQ,DR,DS,DT);
        $display("Row E: %d  %d  %d  %d  %d", EP,EQ,ER,ES,ET);

        $display("=========================\n");

        $finish;
    end

endmodule
