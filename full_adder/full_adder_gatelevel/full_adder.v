module full_adder(
  input a,b,c,
  output sum,carry
  );

  wire w1,w2,w3;
  
  xor x1(w1,a,b);
  and a1(w2,a,b);
  xor x2(sum,w1,c);
  and a2(w3,w1,c);
  or o1(carry,w3,w2);
  
endmodule
