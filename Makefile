# -g2012 selects the 2012 version of iVerilog

IVERILOG=iverilog -Wall -g2012 -y ./ -I ./
VVP=vvp
VIVADO=vivado -mode batch -source

# Look up .PHONY rules for Makefiles
.PHONY: clean submission remove_solutions
test_sram: Test_SRAM.sv SRAM.sv
	${IVERILOG} $^ -o test_sram.bin && ${VVP} test_sram.bin
analyze_sram_system: SRAM.sv analysis.tcl 
	${VIVADO} analysis.tcl

# Call this to clean up all your generated files
clean:
	rm -f *.bin *.vcd vivado*.log vivado*.jou vivado*.str

# Call this to generate your submission zip file.
submission:
	zip submission.zip Makefile *.sv README.md docs/* xilinx/*.xpr *.xdc
