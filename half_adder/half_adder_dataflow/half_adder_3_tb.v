module half_adder3_tb;
reg a,b;
wire sum,carry;

half_adder3 dut(
.a(a),
.b(b),
.sum(sum),
.carry(carry)
);

initial begin
a=0,b=0;
forever #10 a=~a;
forever #20 b=~b;
end

initial begin
#130;
$stop;
end




    );
endmodule
