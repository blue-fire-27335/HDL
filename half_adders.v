module half_adder(
  input a,input b,
  output s,output c);
  assign s=a^b;
  assign c=a&b;
endmodule
/* OUTPUT
a=0 b=0 s=0 c=0
a=0 b=1 s=1 c=0
a=1 b=0 s=1 c=0
a=1 b=1 s=0 c=1 */
