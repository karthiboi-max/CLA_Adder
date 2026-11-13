
module tb_carry_lookahead;

reg p0, p1, p2, p3;
reg g0, g1, g2, g3;
reg c0;

wire c1, c2, c3, c4;

carry_lookahead uut (
    .p0(p0), .p1(p1), .p2(p2), .p3(p3),
    .g0(g0), .g1(g1), .g2(g2), .g3(g3),
    .c0(c0),
    .c1(c1), .c2(c2), .c3(c3), .c4(c4)
);

initial begin
    $monitor("Time=%0t | P=%b%b%b%b | G=%b%b%b%b | C0=%b | C1=%b C2=%b C3=%b C4=%b",
             $time, p3,p2,p1,p0, g3,g2,g1,g0,
             c0, c1,c2,c3,c4);

    p0=0; p1=0; p2=0; p3=0;
    g0=0; g1=0; g2=0; g3=0;
    c0=0;
    #10;

    p0=1; p1=1; p2=1; p3=1;
    g0=0; g1=0; g2=0; g3=0;
    c0=1;
    #10;

    p0=1; p1=0; p2=1; p3=0;
    g0=1; g1=0; g2=1; g3=0;
    c0=0;
    #10;

    p0=1; p1=1; p2=0; p3=1;
    g0=0; g1=1; g2=0; g3=1;
    c0=1;
    #10;

    p0=0; p1=1; p2=1; p3=1;
    g0=1; g1=0; g2=0; g3=1;
    c0=0;
    #10;

    $finish;
end

endmodule
