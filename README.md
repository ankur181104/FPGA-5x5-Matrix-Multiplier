# FPGA-5x5-Matrix-Multiplier
Gate level verilog implementation of 4-bit 5x5 Matrix multiplier for FPGA deployment by structural approach. From half adder to Matrix Multiplier - this project is my first hands-on verilog HDL project.

# Overview

This project explores the implementation of matrix multiplication using structural approach rather than relying entirely on high-level arithmetic operators. The design is being developed and verified using Xilinx Vivado for FPGA implementation.

# Architecture

The arithmetic datapath is constructed progressively:

Half Adder -->> Full Adder -->> 4-bit Ripple Carry Adder (RCA) -->> 8-bit and 16-bit adders -->> 4-bit multiplier -->> One element computation -->> Matrix Multiplication

The lower-level arithmetic blocks are used as building blocks for higher-level modules.

# Module Wise Description

## Half Adder
A simple half adder that will add two bits producing 1 carry and 1 sum bit.
