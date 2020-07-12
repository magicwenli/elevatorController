module translater(value,outled,en); 
input [3:0]value;
input en;
output reg [6:0]outled;
//output reg sec=1;
always @(*) 
begin 
if(!en)
    outled=7'b0000001;
else
    case(value) 
        4'b0000:outled=7'b1111110;
        4'b0001:outled=7'b0110000;
        4'b0010:outled=7'b1101101;
        4'b0011:outled=7'b1111001;
        4'b0100:outled=7'b0110011;
        4'b0101:outled=7'b1011011;
        4'b0110:outled=7'b1011111;
        4'b0111:outled=7'b1110000;
        4'b1000:outled=7'b1111111;
        4'b1001:outled=7'b1111011;
        default:;
    endcase
end 
 
endmodule