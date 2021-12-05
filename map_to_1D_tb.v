`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/05/2021 01:04:23 PM
// Design Name: 
// Module Name: map_to_1D_tb
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


module map_to_1D_tb();
    reg [7:0] x, y, width;
    wire [13:0] out;
    integer f;
    map_to_1D u0(x,y, width, out);
    
    initial begin
        f = $fopen("map_to_1D_tb.txt","w+");
     end
    
    initial begin
    width = 64;
     
    x <= 1; y<= 2;#10;
    if ( out != (x*width) + y) begin 
        $fwrite(f, "x = %3d, y = %3d", x,y); 
        $fwrite(f, "FAIL: expected %3d, got %3d",(x*width) + y, out );
    end
    x <= 45; y<= 63;#10;
    if ( out != (x*width) + y) begin 
        $fwrite(f, "x = %3d, y = %3d", x,y);
        $fwrite(f, "FAIL: expected %3d, got %3d",(x*width) + y, out );
    end
    x <= 20; y<= 64;#10;
    if ( out != (x*width) + y) begin 
        $fwrite(f, "x = %3d, y = %3d", x,y);
        $fwrite(f, "FAIL: expected %3d, got %3d",(x*width) + y, out );
    end
    end
    
    initial begin
        $fclose(f);  
    end
endmodule
