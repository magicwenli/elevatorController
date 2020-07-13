module FSM(
	input [3:0] current,
	input [7:0] signal,
	output reg F1,
    output reg F0
	);
	
reg currentF1;
reg currentF0;

initial begin
currentF1=1;
currentF0=0;
end

always @(*)
begin
    case(current)
        4'b0001: if(|signal[7:1]) begin F1 <=1; F0<=0; end   // floor 1
                    else begin F1 <=0; F0<=0; end
        4'b0010: if({currentF1,currentF0}==2'b10) begin
                        if(|signal[7:2]) begin F1 <=1; F0<=0; end   // floor 2
                        else begin 
                        if(|signal[0]) begin F1 <=0; F0<=1; end
                        else begin F1 <=0; F0<=0; end 
                        end
                    end
                 else begin
                        if(|signal[0]) begin F1 <=0; F0<=1; end
                        else begin 
                        if(|signal[7:2]) begin F1 <=1; F0<=0; end
                        else begin F1 <=0; F0<=0; end 
                        end
                    end
        
        4'b0011: if({currentF1,currentF0}==2'b10) begin
                        if(|signal[7:3]) begin F1 <=1; F0<=0; end   // floor 3
                        else begin 
                        if(|signal[1:0]) begin F1 <=0; F0<=1; end
                        else begin F1 <=0; F0<=0; end 
                        end
                    end
                 else begin
                        if(|signal[1:0]) begin F1 <=0; F0<=1; end
                        else begin 
                        if(|signal[7:3]) begin F1 <=1; F0<=0; end
                        else begin F1 <=0; F0<=0; end 
                        end
                    end
        4'b0100: if({currentF1,currentF0}==2'b10) begin
                        if(|signal[7:4]) begin F1 <=1; F0<=0; end   // floor 4
                        else begin 
                        if(|signal[2:0]) begin F1 <=0; F0<=1; end
                        else begin F1 <=0; F0<=0; end 
                        end
                    end
                 else begin
                        if(|signal[2:0]) begin F1 <=0; F0<=1; end
                        else begin 
                        if(|signal[7:4]) begin F1 <=1; F0<=0; end
                        else begin F1 <=0; F0<=0; end 
                        end
                    end
        4'b0101: if({currentF1,currentF0}==2'b10) begin
                        if(|signal[7:5]) begin F1 <=1; F0<=0; end   // floor 5
                        else begin 
                        if(|signal[3:0]) begin F1 <=0; F0<=1; end
                        else begin F1 <=0; F0<=0; end 
                        end
                    end
                 else begin
                        if(|signal[3:0]) begin F1 <=0; F0<=1; end
                        else begin 
                        if(|signal[7:5]) begin F1 <=1; F0<=0; end
                        else begin F1 <=0; F0<=0; end 
                        end
                    end
        4'b0110: if({currentF1,currentF0}==2'b10) begin
                        if(|signal[7:6]) begin F1 <=1; F0<=0; end   // floor 6
                        else begin 
                        if(|signal[4:0]) begin F1 <=0; F0<=1; end
                        else begin F1 <=0; F0<=0; end 
                        end
                    end
                 else begin
                        if(|signal[4:0]) begin F1 <=0; F0<=1; end
                        else begin 
                        if(|signal[7:6]) begin F1 <=1; F0<=0; end
                        else begin F1 <=0; F0<=0; end 
                        end
                    end
        4'b0111: if({currentF1,currentF0}==2'b10) begin
                        if(|signal[7]) begin F1 <=1; F0<=0; end      // floor 7
                        else begin 
                        if(|signal[5:0]) begin F1 <=0; F0<=1; end
                        else begin F1 <=0; F0<=0; end 
                        end
                    end
                 else begin
                        if(|signal[5:0]) begin F1 <=0; F0<=1; end
                        else begin 
                        if(|signal[7]) begin F1 <=1; F0<=0; end
                        else begin F1 <=0; F0<=0; end 
                        end
                    end
        4'b1000: if(|signal[6:0]) begin F1 <=0; F0<=1; end           // floor 8
                    else begin F1 <=0; F0<=0; end
        default: if(|signal[7:1]) begin F1 <=1; F0<=0; end           // floor 1
                    else begin F1 <=0; F0<=0; end
    endcase

    currentF0 <= F0;
    currentF1 <= F1;

end

endmodule