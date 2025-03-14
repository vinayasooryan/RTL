

module mux_2_1_behavioral_tb;
reg [1:0]i;
reg sel;
wire y;

//instantiate the mux module
mux_2_1_behavioral dut(
.i(i),
.sel(sel),
.y(y)
);

//stimulus block
initial begin
//test cases
sel=0; #10;
sel=1; #10;

end
initial begin
#20 $stop;
end
  
endmodule
