module tb_riscv_sc;
//cpu testbench

reg clk;
reg start;
wire [3:0] out_1;

CompleteCPU riscv_DUT(clk, start, out_1);

initial
    forever #5 clk = ~clk;

initial begin
    // VCD dump setup
    $dumpfile("pipeline_wave.vcd");
    $dumpvars(0, tb_riscv_sc);

    clk = 0;
    start = 0;
    #10 start = 1;

    #3000 $finish;
end

endmodule
