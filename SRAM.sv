module SRAM( dataIn, dataOut, Addr, WE, RD, clk);
// parameters for the width 

parameter DAT   = 4;

parameter DPTH  = 4;

input   wire [DAT-1:0]  dataIn;

output reg [DAT-1:0]  dataOut;

input   wire [$clog2(DAT)-1:0]  Addr;

input logic WE, RD, clk;

//internal variables

reg [DAT-1:0] SRAM [DPTH-1:0];


always @ (posedge clk)

begin

  if (WE == 1'b1 && RD == 1'b0) begin

   SRAM [Addr] = dataIn;

  end

  else if (RD == 1'b1 && WE == 1'b0) begin

   dataOut = SRAM [Addr]; 

  end

end

endmodule