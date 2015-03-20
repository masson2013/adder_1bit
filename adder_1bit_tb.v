`timescale 1 ns / 1 ps

module adder_1bit_tb();

reg         carryin  ;
reg         input1   ;
reg         input2   ;
wire        sum      ;
wire        carryout ;

initial begin
  $dumpfile("adder_1bit_tb.vcd");
  $dumpvars(0, adder_1bit_tb);
  #1000 $finish;
end

//  0 0 0 | 0 0
//  0 0 1 | 0 1
//  0 1 0 | 0 1
//  0 1 1 | 1 0
//  1 0 0 | 0 1
//  1 0 1 | 1 0
//  1 1 0 | 1 0
//  1 1 1 | 1 1

initial begin
        input1 = 1'b0;
  #100  input1 = 1'b1;
  #100  input1 = 1'b0;
  #100  input1 = 1'b1;
  #100  input1 = 1'b0;
  #100  input1 = 1'b1;
  #100  input1 = 1'b0;
  #100  input1 = 1'b1;
end

initial begin
        input2 = 1'b0;
  #100  input2 = 1'b0;
  #100  input2 = 1'b1;
  #100  input2 = 1'b1;
  #100  input2 = 1'b0;
  #100  input2 = 1'b0;
  #100  input2 = 1'b1;
  #100  input2 = 1'b1;
end

initial begin
        carryin = 1'b0;
  #100  carryin = 1'b0;
  #100  carryin = 1'b0;
  #100  carryin = 1'b0;
  #100  carryin = 1'b1;
  #100  carryin = 1'b1;
  #100  carryin = 1'b1;
  #100  carryin = 1'b1;
end


adder_8bits dut(
  .carryin  (carryin ),
  .input1   (input1  ),
  .input2   (input2  ),
  .sum      (sum     ),
  .carryout (carryout)
);

endmodule
