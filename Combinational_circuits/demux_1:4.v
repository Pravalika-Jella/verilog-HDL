// 1:4 DEMUX - Dataflow Modeling
module demux_1x4(
    input din,
    input [1:0] sel,
    output [3:0] y
);
assign y[0] = din & ~sel[1] & ~sel[0];
assign y[1] = din & ~sel[1] & sel[0];
assign y[2] = din & sel[1] & ~sel[0];
assign y[3] = din & sel[1] & sel[0];
endmodule


// 1:4 DEMUX - Behavioral Modeling
module demux_1x4(
    input din,
    input [1:0] sel,
    output reg [3:0] y
);
always @(*) begin
    y = 4'b0000;
    case(sel)
        2'b00: y[0] = din;
        2'b01: y[1] = din;
        2'b10: y[2] = din;
        2'b11: y[3] = din;
    endcase
end
endmodule
