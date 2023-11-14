module operandos( input wire[3:0] A, B, input wire add1, op1_A, op2_B, cppl, output wire [3:0] OP1, OP2);

  wire [3:0] Outadd1, Outop1_A, Outop2_B, Outcompl1, Outsum4, Outul4;
    //OP1
  mux2_4 mux2_4add1(Outadd1, 4'b0000, 4'b0001, add1);
  mux2_4 mux2_4op1_A(OP1, Outadd1, A, op1_A);


//OP2
  mux2_4 mux2_4op2_B(Outop2_B, A, B, op2_B);
  compl1 compl1cpl(OP2, Outop2_B, cpl);
     
endmodule