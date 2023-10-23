`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.10.2023 19:00:10
// Design Name: 
// Module Name: D_Flipflop
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module D_Flipflop(
    input clk,
    input clr,
    input D,
    output reg Q,
    output reg Qbar
    );
    always @ (posedge clk, negedge clr)
    if (clr==0) begin
    Q<=0;
    Qbar<=1;
    end
    else begin
    Q<=D;
    Qbar=~D;
    end
    
endmodule
