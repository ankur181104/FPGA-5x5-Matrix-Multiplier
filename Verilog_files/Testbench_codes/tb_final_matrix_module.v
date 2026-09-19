`timescale 1ns / 1ps

module tb_final_matrix_module;

    reg clk, rst;
    reg A, B;
    wire data_out;
    wire done;

    integer i;

    reg [99:0] A_stream;
    reg [99:0] B_stream;

    initial clk = 0;
    always #5 clk = ~clk;

    final_matrix_module uut (
        .clk(clk),
        .rst(rst),
        .A(A),
        .B(B),
        .data_out(data_out),
        .done(done)
    );

    initial begin
        A_stream = 100'b0000000100100011010001010110011110001001101010111100110111101111000001011010111100110110100111001110;
        B_stream = 100'b1101001010010110101101001110000111110111100000111100010110100000111101101001001111100101100001001101;

        rst = 1;
        A   = 0;
        B   = 0;
        repeat(10) @(posedge clk);
        rst = 0;
        @(posedge clk);

        for (i = 99; i >= 0; i = i - 1) begin
            @(posedge clk);
            A = A_stream[i];
            B = B_stream[i];
        end

        A = 0;
        B = 0;

        repeat(650) @(posedge clk);
        $finish;
    end

endmodule