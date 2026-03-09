`timescale 1ns/1ps
module tb_mux4x1;

  reg[31:0]a;
  reg[31:0]b;
  reg[31:0]c;
  reg[31:0]d;
  reg[1:0]key;
  wire[31:0]saida;

  mux_4x1 uut(.Out(saida), .A(a), .B(b), .C(c), .D(d), .chave(key));

  initial begin
	a = 32'hAAAAAAAA;//mais enxuto apresentar o numero em hexadecimal
	b = 32'hBBBBBBBB;
	c = 32'hCCCCCCCC;
	d = 32'hDDDDDDDD;
	#10;

	$monitor($time,"a = %h | b = %h | c = %h | d = %h | key = %b | saida = %h", a, b, c, d, key, saida);
	key = 2'b00;
	#10;
	key = 2'b01;
	#10;
	key = 2'b10;
	#10;
	key = 2'b11;
	#10;
	$stop;

  end
endmodule
