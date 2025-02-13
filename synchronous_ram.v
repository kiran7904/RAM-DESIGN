module synchronous_ram(
  input [7:0]data_in,
  input we,clk,
  input [2:0]addr,
  output reg[7:0]out
);
  reg [7:0] mem [7:0];
  always@(posedge clk)begin
    if(we)
      mem[addr]<=data_in;
    out<=mem[addr];  
  end
endmodule
