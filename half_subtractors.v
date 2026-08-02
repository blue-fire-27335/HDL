module half_subtractor(
  input a,input b,
  output d,output bw);
  assign d=a^b;
  assign bw=~(a)&b;
endmodule
