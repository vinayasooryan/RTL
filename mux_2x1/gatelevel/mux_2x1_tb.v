

module mux_2_1_gatelevel_tb;
reg d1,d2,s;// Inputs are 'reg' because they are driven by testbench
wire y;// Output is 'wire' since it is driven by DUT
//Instantiate the DUT
mux_2_1_gatelevel dut(   //Pass the testbench signals to the DUT ports.
         .d1(d1),
         .d2(d2),
         .s(s),
         .y(y)
         );
    initial begin
    d1=0; d2=0; s=0; #10;
    d1=1; d2=0; s=0; #10;
    d1=1; d2=0; s=1; #10;
    d1=1; d2=1; s=1; #10;
    end
endmodule
