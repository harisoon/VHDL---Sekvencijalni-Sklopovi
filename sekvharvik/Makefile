MODELSRCS = top.vhd 
TESTBENCH = top_tb

all: analyze testbench run

analyze:
	ghdl -a $(MODELSRCS)
	
testbench:	
	ghdl -a $(TESTBENCH).vhd  
	ghdl -e $(TESTBENCH)

run:
	ghdl -r $(TESTBENCH) --vcd=top.vcd
	

clean:
	rm *.cf *.vcd
	
simulate:
	gtkwave top.vcd --rcfile=gtkwave.ini -a vcd_autosave.sav


	
