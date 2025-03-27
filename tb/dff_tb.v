module dff_tb();
reg clk=1,d;
wire q;
      
d_ff D1(clk,d,q);

initial
begin
  d=0;
#10 d=1;
#10 d=0;
#10 d=1;
#20 $finish;
end

always #5 clk = ~clk;
endmodule
