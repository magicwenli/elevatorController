module pulse2level(
	input [7:0] reset,
	input [7:0] signalIn,
    input clk,
	output reg [7:0] signalOut
	);

reg [7:0] saver;

always @ (posedge clk) begin
    if(signalIn[0]) saver[0] = 1'b1;
    if(reset[0]) saver[0] = 1'b0;

    if(signalIn[1]) saver[1] = 1'b1;
    if(reset[1]) saver[1] = 1'b0;

    if(signalIn[2]) saver[2] = 1'b1;
    if(reset[2]) saver[2] = 1'b0;

    if(signalIn[3]) saver[3] = 1'b1;
    if(reset[3]) saver[3] = 1'b0;

    if(signalIn[4]) saver[4] = 1'b1;
    if(reset[4]) saver[4] = 1'b0;

    if(signalIn[5]) saver[5] = 1'b1;
    if(reset[5]) saver[5] = 1'b0;

    if(signalIn[6]) saver[6] = 1'b1;
    if(reset[6]) saver[6] = 1'b0;

    if(signalIn[7]) saver[7] = 1'b1;
    if(reset[7]) saver[7] = 1'b0;

    signalOut <= saver;
end

endmodule