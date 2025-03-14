
module mux_2_1_gatelevel(
input d1,d2,
input s,
output y
);
wire w1,w2,w3;
and a1(w1,d2,s);
not n1(w2,s);
and a2(w3,d1,w2);
or or1(y,w1,w3);

endmodule
