module microc_tb;
//declaracion de señales

output wire [5:0] t_Opcode;
output wire t_zero;
reg clk, reset, t_s_inc, t_s_inm, t_we, t_wez;
reg [2:0] t_ALUOP;

microc Microcontrolador(t_Opcode, t_zero, clk, reset, t_s_inc, t_s_inm, t_we, t_wez, t_ALUOP);

always
begin
  clk = 1'b1;
  #40;
  clk = 1'b0;
  #40;  
end

initial
begin
  $dumpfile("microc.vcd");
  $dumpvars;

  reset = 1'b1;
  #5;
  reset = 1'b0;
  #35;
end

initial
begin
  #15;

  //PC = 0
  t_s_inc = 1'b1;
  t_s_inm = 1'b1;
  t_we = 1'b1;
  t_wez = 1'b0;
  t_ALUOP = 3'b000;
  #80;

  //PC = 1
  t_s_inc = 1'b1;
  t_s_inm = 1'b1;
  t_we = 1'b1;
  t_wez = 1'b0;
  t_ALUOP = 3'b000;
  #80;

  //PC = 2
  t_s_inc = 1'b1;
  t_s_inm = 1'b1;
  t_we = 1'b1;
  t_wez = 1'b1;
  t_ALUOP = 3'b000;
  #80;

  //PC = 3
  t_s_inc = 1'b1;
  t_s_inm = 1'b1;
  t_we = 1'b1;
  t_wez = 1'b0;
  t_ALUOP = 3'b000;
  #80;

  //PC = 4
  t_s_inc = 1'b1;
  t_s_inm = 1'b0;
  t_we = 1'b1;
  t_wez = 1'b1;
  t_ALUOP = 3'b100;
  #80;

//PC = 5
  t_s_inc = 1'b0;
  t_s_inm = 1'b0;
  t_we = 1'b0;
  t_wez = 1'b0;
  t_ALUOP = 3'b000;
  #80;

//PC = 7
  t_s_inc = 1'b1;
  t_s_inm = 1'b0;
  t_we = 1'b1;
  t_wez = 1'b0;
  t_ALUOP = 3'b010;
  #80;
//PC = 8
  t_s_inc = 1'b1;
  t_s_inm = 1'b1;
  t_we = 1'b1;
  t_wez = 1'b0;
  t_ALUOP = 3'b011;
  #80;
//PC = 9
  t_s_inc = 1'b0;
  t_s_inm = 1'b0;
  t_we = 1'b0;
  t_wez = 1'b0;
  t_ALUOP = 3'b000;
  #80;

//PC = 4
  t_s_inc = 1'b1;
  t_s_inm = 1'b0;
  t_we = 1'b1;
  t_wez = 1'b0;
  t_ALUOP = 3'b100;
  #80;

//PC = 5
  t_s_inc = 1'b1;
  t_s_inm = 1'b0;
  t_we = 1'b0;
  t_wez = 1'b0;
  t_ALUOP = 3'b000;
  #80;

//PC = 6
  t_s_inc = 1'b1;
  t_s_inm = 1'b1;
  t_we = 1'b1;
  t_wez = 1'b0;
  t_ALUOP = 3'b010;
  #80;

//PC = 7
  t_s_inc = 1'b1;
  t_s_inm = 1'b0;
  t_we = 1'b1;
  t_wez = 1'b0;
  t_ALUOP = 3'b010;
  #80;

//PC = 08
  t_s_inc = 1'b1;
  t_s_inm = 1'b1;
  t_we = 1'b1;
  t_wez = 1'b1;
  t_ALUOP = 3'b011;
  #80;

//PC = 09
  t_s_inc = 1'b1;
  t_s_inm = 1'b0;
  t_we = 1'b0;
  t_wez = 1'b0;
  t_ALUOP = 3'b000;
  #80;

//PC = 010
  t_s_inc = 1'b1;
  t_s_inm = 1'b0;
  t_we = 1'b1;
  t_wez = 1'b1;
  t_ALUOP = 3'b110;
  #80;

//PC = 011
  t_s_inc = 1'b0;
  t_s_inm = 1'b0;
  t_we = 1'b0;
  t_wez = 1'b0;
  t_ALUOP = 3'b000;
  #80;

//PC = 011
  t_s_inc = 1'b0;
  t_s_inm = 1'b0;
  t_we = 1'b0;
  t_wez = 1'b0;
  t_ALUOP = 3'b000;
  #80;

//PC = 011
  t_s_inc = 1'b0;
  t_s_inm = 1'b0;
  t_we = 1'b0;
  t_wez = 1'b0;
  t_ALUOP = 3'b000;


$finish;
end


endmodule