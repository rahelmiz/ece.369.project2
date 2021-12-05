`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/05/2021 12:54:47 PM
// Design Name: 
// Module Name: map_to_1D
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


module map_to_1D( x,y, width, pos1D );
    input [7:0] x,y, width; //x,y can be at most 64, so need 7 bits to represent
    output reg [13:0]  pos1D ; //max output is (64 * 64) + 64, so need 13 bits to represent
    //'wire' and 'reg' are in unsigned-format by default. 
    always @(*) begin 
        pos1D = x*width + y;
    end
endmodule
