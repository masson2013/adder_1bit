`timescale 1 ns / 1 ps

module adder_1bit(
  input   wire        carryin ,
  input   wire        input1  ,
  input   wire        input2  ,
  output  wire        sum     ,
  output  wire        carryout
);

wire out1;
wire out2;
wire out3;

assign out1     = input2 ^ input1 ;
assign out2     = input1 & input2 ;
assign out3     = carryin & out1  ;
assign sum      = carryin ^ out1  ;
assign carryout = out2 | out3     ;

endmodule



// adder_1bit u0 (
// .carryin (1'b0),
// .input1  (A0  ),
// .input2  (B0  ),
// .sum     (sum0),
// .carryout(C0  )
// )

// adder_1bit u1 (
// .carryin (C0  ),
// .input1  (A1  ),
// .input2  (B1  ),
// .sum     (sum1),
// .carryout(C1  )
// )




