module ul(output wire[3:0] Out, input wire[3:0] A, input wire[3:0] B, input wire [1:0] S);

cl cl0(out[0], A[0], B[0], S);
cl cl1(out[1], A[1], B[1], S);
cl cl2(out[2], A[2], B[2], S);
cl cl3(out[3], A[3], B[3], S);

endmodule