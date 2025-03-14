

module full_subtractor(
input a,b,c,
output diff,borrow
  );
 assign diff = a^b^c;
 assign borrow =(~a&b)|c &(~(a^b));
 
 endmodule
