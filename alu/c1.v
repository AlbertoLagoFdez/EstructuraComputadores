module c1(output wire out, input wire a, b, input wire [1:0] S);
  input wire c_and, c_or, c_xor, a_not;
  assign c_and = a and b;
  assign c_or = a or b;
  assign c_xor = a xor b;
  assign a_not = not a;
  mux4_1 multiplexor1(out , c_and, c_or, c_xor, a_not, S);
endmodule