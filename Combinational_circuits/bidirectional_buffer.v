module bidirectional_buff(input c,inout a,b);
bufif1 b1(a,b,c);
bufif0 b2(b,a,c);
endmodule
