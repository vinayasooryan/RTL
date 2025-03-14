module mux_4_1_dataflow(
    input a,b,c,d,
    input s0,s1,
    output out
    );
     assign out = s1 ? (s0 ? d : c) : (s0 ? b : a);
    
endmodule

