```verilog
`timescale 1ns/1ps

module tb_alu_4bit;

    reg  [3:0] A;
    reg  [3:0] B;
    reg  [2:0] ALU_Sel;
    wire [3:0] ALU_Out;
    wire       Carry_Out;

    alu_4bit uut (
        .A(A),
        .B(B),
        .ALU_Sel(ALU_Sel),
        .ALU_Out(ALU_Out),
        .Carry_Out(Carry_Out)
    );

    initial begin

        A = 4'b0101;
        B = 4'b0011;

        ALU_Sel = 3'b000;
        #10;

        ALU_Sel = 3'b001;
        #10;

        ALU_Sel = 3'b010;
        #10;

        ALU_Sel = 3'b011;
        #10;

        ALU_Sel = 3'b100;
        #10;

        ALU_Sel = 3'b101;
        #10;

        ALU_Sel = 3'b110;
        #10;

        ALU_Sel = 3'b111;
        #10;

        A = 4'b1111;
        B = 4'b0001;

        ALU_Sel = 3'b000;
        #10;

        $finish;
    end

    initial begin
        $monitor("Time=%0t | A=%b | B=%b | Sel=%b | Out=%b | Carry=%b",
                 $time, A, B, ALU_Sel, ALU_Out, Carry_Out);
    end

endmodule
```

