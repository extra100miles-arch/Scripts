// -------------------------------------------------
// Testbench for Full Adder
// -------------------------------------------------
module full_adder_tb;

    logic a;
    logic b;
    logic cin;
    logic sum;
    logic carry;

    // DUT instantiation
    full_adder_dut dut (
        .a     (a),
        .b     (b),
        .cin   (cin),
        .sum   (sum),
        .carry (carry)
    );

    initial begin
        $display("TIME | a b cin | sum carry");
        $monitor("%4t | %0b %0b  %0b  |  %0b    %0b",
                  $time, a, b, cin, sum, carry);

        // Apply all input combinations
        a=0; b=0; cin=0; #10;
        a=0; b=0; cin=1; #10;
        a=0; b=1; cin=0; #10;
        a=0; b=1; cin=1; #10;
        a=1; b=0; cin=0; #10;
        a=1; b=0; cin=1; #10;
        a=1; b=1; cin=0; #10;
        a=1; b=1; cin=1; #10;

        $finish;
    end

endmodule
