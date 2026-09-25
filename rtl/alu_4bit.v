module alu_4bit (
    input  [3:0] A,
    input  [3:0] B,
    input  [2:0] ALU_Sel,
    output reg [3:0] ALU_Out,
    output reg       Carry_Out
);

always @(*) begin
    ALU_Out   = 4'b0000;
    Carry_Out = 1'b0;

    case (ALU_Sel)
        3'b000: {Carry_Out, ALU_Out} = A + B;
        3'b001: {Carry_Out, ALU_Out} = A - B;
        3'b010: ALU_Out = A & B;
        3'b011: ALU_Out = A | B;
        3'b100: ALU_Out = A ^ B;
        3'b101: ALU_Out = ~A;
        3'b110: ALU_Out = A << 1;
        3'b111: ALU_Out = A >> 1;
    endcase
end

endmodule
