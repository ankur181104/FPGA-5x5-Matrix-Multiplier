`timescale 1ns / 1ps

module output_matrix(
    input [3:0]A0,A1,A2,A3,A4,
    input [3:0]B0,B1,B2,B3,B4,
    input [3:0]C0,C1,C2,C3,C4,
    input [3:0]D0,D1,D2,D3,D4,
    input [3:0]E0,E1,E2,E3,E4,
    
    input [3:0]P0,Q0,R0,S0,T0,
    input [3:0]P1,Q1,R1,S1,T1,
    input [3:0]P2,Q2,R2,S2,T2,
    input [3:0]P3,Q3,R3,S3,T3,
    input [3:0]P4,Q4,R4,S4,T4,
    
    output [15:0] AP, AQ, AR, AS, AT,
    output [15:0] BP, BQ, BR, BS, BT,
    output [15:0] CP, CQ, CR, CS, CT,
    output [15:0] DP, DQ, DR, DS, DT,
    output [15:0] EP, EQ, ER, ES, ET
    );
    
        matrix_element_5x5 ME1(
            A0, A1, A2, A3, A4,
            P0, P1, P2, P3, P4,
            AP
        );
        
        matrix_element_5x5 ME2(
            A0, A1, A2, A3, A4,
            Q0, Q1, Q2, Q3, Q4,
            AQ
        );
        
        matrix_element_5x5 ME3(
            A0, A1, A2, A3, A4,
            R0, R1, R2, R3, R4,
            AR
        );
        
        matrix_element_5x5 ME4(
            A0, A1, A2, A3, A4,
            S0, S1, S2, S3, S4,
            AS
        );
        
        matrix_element_5x5 ME5(
            A0, A1, A2, A3, A4,
            T0, T1, T2, T3, T4,
            AT
        );
        
        matrix_element_5x5 ME6(
            B0, B1, B2, B3, B4,
            P0, P1, P2, P3, P4,
            BP
        );
        
        matrix_element_5x5 ME7(
            B0, B1, B2, B3, B4,
            Q0, Q1, Q2, Q3, Q4,
            BQ
        );
        
        matrix_element_5x5 ME8(
            B0, B1, B2, B3, B4,
            R0, R1, R2, R3, R4,
            BR
        );
        
        matrix_element_5x5 ME9(
            B0, B1, B2, B3, B4,
            S0, S1, S2, S3, S4,
            BS
        );
        
        matrix_element_5x5 ME10(
            B0, B1, B2, B3, B4,
            T0, T1, T2, T3, T4,
            BT
        );
        
        matrix_element_5x5 ME11(
            C0, C1, C2, C3, C4,
            P0, P1, P2, P3, P4,
            CP
        );
        
        matrix_element_5x5 ME12(
            C0, C1, C2, C3, C4,
            Q0, Q1, Q2, Q3, Q4,
            CQ
        );
        
        matrix_element_5x5 ME13(
            C0, C1, C2, C3, C4,
            R0, R1, R2, R3, R4,
            CR
        );
        
        matrix_element_5x5 ME14(
            C0, C1, C2, C3, C4,
            S0, S1, S2, S3, S4,
            CS
        );
        
        matrix_element_5x5 ME15(
            C0, C1, C2, C3, C4,
            T0, T1, T2, T3, T4,
            CT
        );
        
        matrix_element_5x5 ME16(
            D0, D1, D2, D3, D4,
            P0, P1, P2, P3, P4,
            DP
        );
        
        matrix_element_5x5 ME17(
            D0, D1, D2, D3, D4,
            Q0, Q1, Q2, Q3, Q4,
            DQ
        );
        
        matrix_element_5x5 ME18(
            D0, D1, D2, D3, D4,
            R0, R1, R2, R3, R4,
            DR
        );
        
        matrix_element_5x5 ME19(
            D0, D1, D2, D3, D4,
            S0, S1, S2, S3, S4,
            DS
        );
        
        matrix_element_5x5 ME20(
            D0, D1, D2, D3, D4,
            T0, T1, T2, T3, T4,
            DT
        );
        
        matrix_element_5x5 ME21(
            E0, E1, E2, E3, E4,
            P0, P1, P2, P3, P4,
            EP
        );
        
        matrix_element_5x5 ME22(
            E0, E1, E2, E3, E4,
            Q0, Q1, Q2, Q3, Q4,
            EQ
        );
        
        matrix_element_5x5 ME23(
            E0, E1, E2, E3, E4,
            R0, R1, R2, R3, R4,
            ER
        );
        
        matrix_element_5x5 ME24(
            E0, E1, E2, E3, E4,
            S0, S1, S2, S3, S4,
            ES
        );
        
        matrix_element_5x5 ME25(
            E0, E1, E2, E3, E4,
            T0, T1, T2, T3, T4,
            ET
        );
    
endmodule