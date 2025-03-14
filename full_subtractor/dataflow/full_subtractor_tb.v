


module full_subtractor_tb;
reg a,b,c;
wire diff,borrow;

full_subtractor dut(
.a(a),
.b(b),
.c(c),
.diff(diff),
.borrow(borrow)
);
initial begin
a=0; b=0; c=0; #10;
a=0; b=0; c=1; #10;
a=0; b=1; c=0; #10;
a=0; b=1; c=1; #10;
a=1; b=0; c=0; #10;
a=1; b=0; c=1; #10;
a=1; b=1; c=0; #10;
a=1; b=1; c=1; #10;
end
initial begin
#100 $stop;
end

endmodule
