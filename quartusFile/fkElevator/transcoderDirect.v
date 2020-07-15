module transcoderDirect(
	input F1,
        input F0,
	input en,
	output reg [6:0] led_out
	);

always @(*)
begin
if(!en)
led_out=7'b0000000;
else
begin
	case({F1,F0})
		2'b00: led_out = 7'b0000001; //stay
		2'b01: led_out = 7'b0011100; //up
		2'b10: led_out = 7'b1100010; //down
	        default: led_out = 7'b0000001;//stay
	endcase
end
end
endmodule