module tb_div_by_4();

 reg  clk_in ;
 reg  reset_n;
 wire clk_out;

  div_by_4 div_by_4_i(
    .clk_in   (clk_in  ),
    .reset_n  (reset_n ),
    .clk_out  (clk_out )
  );

 always
   begin
     #10 clk_in = ~clk_in;
   end

  initial 
    begin
    clk_in   = 1'b0; 
    reset_n  = 1'b0;
    #10;
    reset_n  = 1'b1;
    #20000;
    $finish();
    end

endmodule
