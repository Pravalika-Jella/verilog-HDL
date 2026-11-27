// 2:4 Decoder - Dataflow Modeling
module decoder_2x4(
    input [1:0] a,
    output [3:0] y
);
assign y[0] = ~a[1] & ~a[0];
assign y[1] = ~a[1] &  a[0];
assign y[2] =  a[1] & ~a[0];
assign y[3] =  a[1] &  a[0];
endmodule



// 2:4 Decoder - Behavioral Modeling
module decoder_2x4(
    input [1:0] a,
    output reg [3:0] y
);
always @(*) begin
    y = 4'b0000;
    case(a)
        2'b00: y = 4'b0001;
        2'b01: y = 4'b0010;
        2'b10: y = 4'b0100;
        2'b11: y = 4'b1000;
    endcase
end
endmodule
