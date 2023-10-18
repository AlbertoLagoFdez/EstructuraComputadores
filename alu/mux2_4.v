//error
module mux2_4(output wire [3:0] Out, input wire [3:0] A, input wire [3:0] B, input wire s);
  always @(A or B or s) begin
    case (s)
    1'b0 Out = A;
    1'b1 Out = B;
    endcase
  end
endmodule