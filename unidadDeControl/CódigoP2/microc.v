module microc(output wire [5:0] Opcode, output wire zero, input wire clk, reset, s_inc, s_inm, we, wez, input wire [2:0] ALUOp);
//Microcontrolador sin memoria de datos de un solo ciclo
  wire [9:0] outPC, outMUX1, outSUM;
  wire [3:0] outMUX2;
  wire [7:0] outMUX3, RD1, RD2;
  wire [15:0] outMEM;

  registro #(10) PC(outPC, clk, reset, outMUX1);
  memprog MEM(outMEM, clk, outPC);

  wire [3:0] RA1, RA2, WA3;
  wire [7:0] inm;
  wire [9:0] dir_salto;
  wire [7:0] WD3;
  wire zALU, zSIG;

  assign RA1 = outMEM[11:8];
  assign RA2 = outMEM[7:4];
  assign WA3 = outMEM[3:0];
  assign inm = outMEM[11:4]; 
  
  assign dir_salto = outMEM[9:0]; 
  
  assign Opcode = outMEM[15:10];
  
  sum SUM(outSUM, 10'b0000000001, outPC);
   
  mux2 #(10) MUX1(outMUX1, dir_salto, outSUM, s_inc);

  regfile BancoRegistros(RD1, RD2, clk, we, outMUX2, RA2, WA3, WD3);

  mux2 #(4) MUX2(outMUX2, RA1, WA3, s_inm);

  mux2 #(8) MUX3(outMUX3, RD2, inm, s_inm);

  alu ALU(WD3, zALU, RD1, outMUX3, ALUOp);

  ffd FFZ(clk, reset, zALU, wez, zSIG);

  assign zero = zSIG;

endmodule