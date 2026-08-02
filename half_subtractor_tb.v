module tb_half_subtractor();
  reg a,b;
  wire d,bw;
  half_subtractor dut(
    .a(a),.b(b),.d(d),.bw(bw)
  );
  initial begin 
    $monitor("a=%b b=%b difference=%b borrow=%b",a,b,d,bw);
    a=0; b=0; #10
    a=0; b=1; #10
    a=1; b=0; #10
    a=1; b=1; #10
    $finish;
  end 
endmodule
/*a=0 b=0 difference=0 borrow=0
a=0 b=1 difference=1 borrow=1
a=1 b=0 difference=1 borrow=0
a=1 b=1 difference=0 borrow=0
testbench.sv:15: $finish called at 40 (1s)*/
