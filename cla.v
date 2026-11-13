
module carry_lookahead (
    input p0, p1, p2, p3,
    input g0, g1, g2, g3,
    input c0,
    output c1, c2, c3, c4
);

assign c1 = g0 | (p0 & c0);

assign c2 = g1 |
            (p1 & g0) |
            (p1 & p0 & c0);

assign c3 = g2 |
            (p2 & g1) |
            (p2 & p1 & g0) |
            (p2 & p1 & p0 & c0);

assign c4 = g3 |
            (p3 & g2) |
            (p3 & p2 & g1) |
            (p3 & p2 & p1 & g0) |
            (p3 & p2 & p1 & p0 & c0);

endmodule
