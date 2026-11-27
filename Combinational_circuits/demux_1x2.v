module demux_1x2(
    input din,
    input sel,
    output y0,
    output y1
);
assign y0 = din & ~sel;
assign y1 = din & sel;
endmodule
