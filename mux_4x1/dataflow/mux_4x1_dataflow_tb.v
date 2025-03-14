

`timescale 1ns/1ps

module mux_4_1_dataflow_tb;
wire  out;
reg  a;
reg  b;
reg  c;
reg  d;
reg s0, s1;

gate dut(
.out(out),
 .a(a), 
 .b(b), 
 .c(c), 
 .d(d), 
 .s0(s0), 
 .s1(s1)
 );
 
initial begin
 s0=0;
forever 
#10 s0=~s0;
end
initial begin
 s1=0;
forever 
#20 s1=~s1;
end
initial begin
 a=1;b=0;c=0;d=0; #10;
 a=0;b=1;c=0;d=0; #10;
 a=0;b=0;c=1;d=0; #10;
 a=0;b=0;c=0;d=1; #10;
 a=0;b=0;c=0;d=0; #10;

 
 end 
 
 initial begin
 #100 $finish;
 end
endmodule
