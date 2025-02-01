// // Code your design here

module dff(input clk, output reg q, output qbar, output y);
  // Feedback: d is driven by qbar
  wire d;
  assign d = qbar;
   initial begin
  q = 0; // Initialize q to 0
end
  

  always @(posedge clk) begin 
    q <= d;  // Update q on the rising edge of the clock
  end

  assign qbar = ~q;  // qbar is the complement of q
  assign y = q & clk;  // y is the AND of q and clk
endmodule


// module dff(input d, clk, output q, qbar, y);
//   reg q;
//   always@(posedge clk) begin 
//    // d<=qbar;
//     q<=d;
//   end
//   assign y= q & clk;
// //   assign d = qbar;
//   assign qbar=~q;
//   assign d = qbar;
// endmodule
