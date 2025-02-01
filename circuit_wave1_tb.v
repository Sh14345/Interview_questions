module tb;
  wire q, qbar, y;
  reg clk;

  // Instantiate the D flip-flop
  dff dut(.clk(clk), .q(q), .qbar(qbar), .y(y));

  // Clock generation
  always #5 clk = ~clk;

  // Testbench stimulus
  initial begin
    clk = 0;  // Initialize clock

    #100 $finish;  // End simulation after 100 time units
  end
 
  initial begin
    $monitor($time, " q = %0b, qbar = %0b, y = %0b", q, qbar, y);
  end
  initial begin
    $dumpfile("waveform.vcd");
    $dumpvars(1,tb);
  end
  
endmodule



// module tb;
//   wire q,qbar, y;
//   reg clk,d;
  
//   dff dut( .d(d),.clk(clk), 
//           .q(q),.qbar(qbar), .y(y));
  
//   initial begin 
//     clk = 0;
//     #10 d = 1;
//     #5 d=0;
// //     #15 d=1;
// //     #5 d=0;
// //     #20 d=1;
// //     #5 d=0;
//     #100 $finish;
//   end
//   initial
//    begin
//      $monitor($time,"q= %0b, qbar=%0b,y = %0b",q,qbar,y); 
//    end
//  always begin #5 clk=~clk;
//   end
// //    initial begin
// //     // Dump waveform data to a file
// //     $dumpfile("waveform.vcd");  // Specify the waveform file name
// //     $dumpvars(1, tb);           // Dump all variables in the testbench 
// //   end
// endmodule
