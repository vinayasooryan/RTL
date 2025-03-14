module testbench;
    reg a, b;
    wire sum, carry;

    // Instantiate the DUT (Device Under Test)
    half_adder2 dut (
        .a(a),
        .b(b),
        .sum(sum),
        .carry(carry)
    );

    // Toggle inputs every 10ns
    initial begin
        a = 0; b = 0;
        forever #15 a = ~a;
        forever #25 b = ~b;
    end

    initial begin
        #110; // Run simulation for 100ns
        $stop;
    end
endmodule
