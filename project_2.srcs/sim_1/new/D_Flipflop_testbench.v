`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.10.2023 19:10:41
// Design Name: 
// Module Name: D_Flipflop_testbench
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


module D_Flipflop_testbench(

    );
    reg D,clr,clk;
    wire Q,Qbar;
    D_Flipflop U0(D,clk,clr,Q,Qbar);
    always #100 clk=~clk;
    
    initial begin 
    D=1'b0;
    clk=1'b0;
    clr=1'b1;
    #100;
    clr=1'b0;
    #100;
    clr=1'b1;
    
    forever #50 D=~D;
    end
endmodule
