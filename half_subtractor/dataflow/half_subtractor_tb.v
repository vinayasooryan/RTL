module half_subtractor_tb;
reg a,b;
wire diff,borrow;

half_subtractor dut(
.a(a),
.b(b),
.diff(diff),
.borrow(borrow)
);
initial begin
a=0;b=0; #10;
a=0;b=1; #10;
a=1;b=0; #10;
a=1;b=1; #10;
end
initial begin
#50 $stop;
end
endmodule
