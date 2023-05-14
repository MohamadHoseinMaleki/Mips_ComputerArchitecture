
//by mohamdd hossein malki:

// Project Name:  ALU_cir


module ALU_Test;



// Inputs
	reg [15:0] input1;
	reg [15:0] input2;
	reg [2:0] opCode;

// Outputs
	wire [15:0] outputALU;
	wire zeroOutput;



// Instantiate the Unit Under Test
	ALU uut (
		.input1(input1), 
		.input2(input2), 
		.opCode(opCode), 
		.outputALU(outputALU), 
		.zeroOutput(zeroOutput));




	initial begin
// Initialize Inputs
		input1 = 0;
		input2 = 0;
		opCode = 0;

 //100 ns wating
		#100;
		input1 = 16'b0000000000000111;
		input2 = 16'b0000000000000111;
		opCode = 000;
		#100;
		input1 = 16'b0000000010100111;
		input2 = 16'b0000000000001111;
		opCode = 001;
		#100;
		input1 = 16'b0000000000010111;
		input2 = 16'b0000000000001110;
		opCode = 010;
		#100;
		input1 = 16'b0100001010100111;
		input2 = 16'b1000011000001111;
		opCode = 011;
		#100;
		input1 = 16'b0100001010100111;
		input2 = 16'b1001011000001111;
		opCode = 100;
		#100;
		input1 = 16'b0100001010100101;
		input2 = 16'b0000011000001111;
		opCode = 101;
		#100;
		input1 = 16'b0100001010100100;
		input2 = 16'b0000011111111110;
		opCode = 110;
		#100;
		input1 = 16'b0101010101010101;
		input2 = 16'b1010101010101010;
		opCode = 111;
		#100;
	end
      
endmodule

