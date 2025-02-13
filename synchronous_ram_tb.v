  module synchronous_ram_tb;
  reg [7:0] data_in;
  reg we, clk;
  reg [2:0] addr;
  wire [7:0] out;
  synchronous_ram r1(data_in, we, clk, addr, out);
  always #5 clk = ~clk;
  initial begin
    clk = 0; we = 0; addr = 3'b000; data_in = 8'h00;
    #10 we = 1; addr = 3'b100; data_in = 8'h11;
    #10 we = 1; addr = 3'b010; data_in = 8'hAC;
    #10 we = 1; addr = 3'b100; data_in = 8'hAB;
    #10 we = 0; addr = 3'b100;
    #10 we = 0; addr = 3'b010;
    #10 $stop;
  end
endmodule
