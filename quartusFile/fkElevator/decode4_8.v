`timescale 10ns/1ns
module decode4_8 (data_out,data_in) ;
input [3:0] data_in;
output [7:0] data_out;
reg [7:0] data_out;
 
always @(data_in)
begin
    case (data_in )
    4'b0001: data_out=8'b00000001;
    4'b0010: data_out=8'b00000010;
    4'b0011: data_out=8'b00000100;
    4'b0100: data_out=8'b00001000;
    4'b0101: data_out=8'b00010000;
    4'b0110: data_out=8'b00100000;
    4'b0111: data_out=8'b01000000;
    4'b1000: data_out=8'b10000000;
    default: data_out=8'b00000000;
    endcase
end
 
endmodule