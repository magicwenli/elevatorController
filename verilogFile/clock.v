module clock(
    input show,
    input clk,
    input pause,
    input rst,
    output reg sm_bit, 
    output reg[6:0]sm_seg
    );
    
    reg [3:0]timesec0;
    
    initial begin
    sm_bit=1;
    sm_seg=1;
    timesec0=0;
    end
    
    always @(posedge clk) begin
    if(pause) begin
    if(timesec0==9)
    timesec0=0;
    else
    timesec0=timesec0+1;  
    end
    if(~pause) begin
    timesec0=0;
    end
    end
    
    always@(posedge show)
    begin
    case(timesec0)
            0:sm_seg= 7'b1111110;                     //显示0
            1:sm_seg= 7'b0110000;                     //显示1
            2:sm_seg= 7'b1101101;                     //显示2
            3:sm_seg= 7'b1111001;                     //显示3
            4:sm_seg= 7'b0110011;                     //显示4
            5:sm_seg= 7'b1011011;                     //显示5
            6:sm_seg= 7'b1011111;                     //显示6
            7:sm_seg= 7'b1110000;                     //显示7
            8:sm_seg= 7'b1111111;                     //显示8
            9:sm_seg= 7'b1111011;                     //显示9
            default:
            sm_seg= 7'b0000000;                        //不显示
    endcase
    end
    
endmodule