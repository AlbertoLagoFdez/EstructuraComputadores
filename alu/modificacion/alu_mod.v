module alu(output wire [3:0] R, output wire zero, c_out, sign, input wire [3:0] A, B, input wire c_in, input wire [1:0] ALUOP, input wire l);
/*
  assign add1 = l | ALUOP[0] | ALUOP[1];
  assign op1_A = (l) | (ALUOP[0] & ALUOP[1]); 
  assign op2_B = (l) | ALUOP[1];
  assign cpl = ((~l) & ALUOP[0]) | (l & ALUOP[1] & ALUOP[0]);
  wire [3:0] OP1, OP2;
  wire [3:0] Outadd1, Outop1_A, Outop2_B, Outcompl1, Outsum4, Outul4;
*/

  assign add1 = l | ALUOP[0] | ALUOP[1];
  assign op1_A = (l) | ((~ALUOP[0]) & ALUOP[1]); 
  assign op2_B = (l) | (ALUOP[1] & (~ALUOP[0]));
  assign cpl = (~l) & (~ALUOP[1]) & (ALUOP[0]);
  wire [3:0] Outadd1, Outop1_A, Outop2_B, Outcompl1, Outsum4, Outul4;
  wire [3:0] OP1, OP2;

operandos operandos1(A, B, add1, op1_A, op2_B, cpl, OP1, OP2);

//sumador y unidad logica

  sum4 sum4c_in(Outsum4, c_out, OP1, OP2, c_in);
  ul ul4ALUOP(Outul4, OP1, OP2, ALUOP);

  mux2_4 mux2_4l(R, Outsum4, Outul4, l);

  assign zero = ~R[3] & ~ R[2] & ~ R[1] & ~ R[0];
  assign sign = R[3];

endmodule