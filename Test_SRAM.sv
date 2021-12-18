module Test_SRAM; 
  reg  WE, RD, clk; 
  reg [7:0] dataIn; 
  reg [2:0] Addr;
  wire [7:0] dataOut;
    
  SRAM UUT (.dataIn(dataIn), .dataOut(dataOut), .Addr(Addr), .WE(WE), .RD(RD), .clk(clk)); 
    
  task print_io;
    $display("dataIn, dataOut, Addr, WE, RD"); 
    $display("%d|%d|%d|%d|%d", dataIn, dataOut, Addr, WE, RD);
  endtask
  always #5 clk = ~clk;
  initial begin
 
  dataIn  = 8'h0;

  Addr  = 3'h0;

  WE  = 1'b0;

  RD  = 1'b0;

  clk  = 1'b0;

  $display("Specific interesting tests.");

  @(negedge clk);
  dataIn =8'b11111111;
  Addr = 0;
  WE = 1;

  @(posedge clk)print_io();

  @(negedge clk);
  Addr = 0;
  WE = 0;
  RD=1;
  @(posedge clk)print_io();
  $dumpfile("sram_test.vcd");
  $dumpvars(0, UUT);
  $finish;
  end
endmodule