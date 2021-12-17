
<<<<<<< HEAD
module SRAM( dataIn, dataOut, Addr, WE, RD, Clk);
=======
module SRAM( dataIn, dataOut, Addr, WE, RD, clk);
>>>>>>> Added Analysis
// parameters for the width 

parameter ADR   = 8;

parameter DAT   = 8;

parameter DPTH  = 8;


<<<<<<< HEAD
//ports

input   [DAT-1:0]  dataIn;

output reg [DAT-1:0]  dataOut;

input   [ADR-1:0]  Addr;

input WE, RD, Clk;

      

//internal variables


reg [DAT-1:0] SRAM [DPTH-1:0];


always @ (posedge Clk)
=======
input   wire [DAT-1:0]  dataIn;

output reg [DAT-1:0]  dataOut;

input   wire [$clog2(ADR)-1:0]  Addr;

input logic WE, RD, clk;

//internal variables

reg [DAT-1:0] SRAM [DPTH-1:0];


always @ (posedge clk)
>>>>>>> Added Analysis

begin

  if (WE == 1'b1 && RD == 1'b0) begin

   SRAM [Addr] = dataIn;

  end

  else if (RD == 1'b1 && WE == 1'b0) begin

   dataOut = SRAM [Addr]; 

  end

end

endmodule