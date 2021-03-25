module div_by_4(
  input      clk_in,
  input      reset_n,
  output reg clk_out
);

reg clk_out_a;


always @(posedge clk_in or negedge reset_n)
  begin
    if(!reset_n)
      begin
       clk_out_a <= 1'b0; 
      end 
    else
      begin
       clk_out_a <= (~clk_out || ~ clk_out_a);
      end
  end


always @(posedge clk_in or negedge reset_n)
  begin
    if(!reset_n)
      begin
       clk_out <= 1'b0; 
      end 
    else
      begin
       clk_out <= clk_out_a; 
      end
  end


endmodule
