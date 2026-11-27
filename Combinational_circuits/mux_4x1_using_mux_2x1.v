module mux_4x1(
    input [3:0] d,
    input [1:0] sel,
    output y
);
wire [1:0] w;
mux_2x1 m1(d[0], d[1], sel[0], w[0]);
mux_2x1 m2(d[2], d[3], sel[0], w[1]);
mux_2x1 m3(w[0], w[1], sel[1], y);
endmodule
