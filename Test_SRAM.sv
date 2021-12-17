<<<<<<< HEAD

`timescale 1ns / 1ps
module Test_SRAM;
 // Inputs
 reg [7:0] dataIn;
 reg [7:0] Addr;
 reg CS;
 reg WE;
 reg RD;
 reg Clk;

 // Outputs
 wire [7:0] dataOut;
endmodule;
=======
module Test_SRAM; 
  reg  WE, RD, Clk; 
  reg [7:0] dataIn; 
  reg [2:0] Addr;
  wire [7:0] dataOut;
    
  SRAM UUT (.dataIn(dataIn), .dataOut(dataOut), .Addr(Addr), .WE(WE), .RD(RD), .clk(Clk)); 
    
  task print_io;
    $display("dataIn, dataOut, Addr, WE, RD"); 
    $display("%d|%d|%d|%d|%d", dataIn, dataOut, Addr, WE, RD);
  endtask
  always #5 Clk = ~Clk;
  initial begin
 
  dataIn  = 8'h0;

  Addr  = 3'h0;

  WE  = 1'b0;

  RD  = 1'b0;

  Clk  = 1'b0;

  $display("Specific interesting tests.");

  @(negedge Clk);
  dataIn =8'b11111111;
  Addr = 0;
  WE = 1;

  @(posedge Clk)print_io();

  @(negedge Clk);
  Addr = 0;
  WE = 0;
  RD=1;
  @(posedge Clk)print_io();
  $dumpfile("sram_test.vcd");
  $dumpvars(0, UUT);
  $finish;
  end
endmodule
  
>>>>>>> Added Analysis
