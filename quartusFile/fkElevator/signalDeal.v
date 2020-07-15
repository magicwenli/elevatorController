module signalDeal(
    input [6:0] upButton,
    input [7:1] downButton,
    input [7:0] stairChooser,
    input rst_n,
    output reg [7:0] signal
);
// 综合各个输入信号

always @(*)
begin
	if(rst_n)
	begin
	signal <= 8'b00000001;
	end
	else
	begin
		signal <= ({1'b0,upButton}|stairChooser)|{downButton,1'b0};
	end
end
endmodule