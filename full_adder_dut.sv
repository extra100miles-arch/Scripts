// -------------------------------------------------
// DUT: 1-bit Full Adder
// -------------------------------------------------
module full_adder_dut (
    input  logic a,
    input  logic b,
    input  logic cin,
    output logic sum,
    output logic carry
);

    assign sum   = a ^ b ^ cin;
    assign carry = (a & b) | (b & cin) | (a & cin);

endmodule
