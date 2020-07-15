module fenPin(
    input inclk,
    output outclk
    );
    
    reg [31:0]timeclk;
    
    assign outclk = timeclk[12];
    
    initial begin
    timeclk = 0;
    end
    
    always@(posedge inclk)begin
    timeclk = timeclk +1;
    end

    
endmodule