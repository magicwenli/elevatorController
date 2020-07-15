`timescale 1ns / 1ps
module counter(
    input clk,
    input SW0,
    input SW1,
    output reg [3:0] reset,
    output reg [3:0] sl_reg
);


initial begin
sl_reg = 0;
reset = 0;
end

always @(posedge clk)begin
   case({SW1,SW0})
   2'b01: begin sl_reg=sl_reg-1; reset=sl_reg; end
   2'b10: begin sl_reg=sl_reg+1; reset=sl_reg; end
   default: begin reset = sl_reg; end
   endcase
end

endmodule