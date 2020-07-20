`timescale 1ns / 1ps

module sw_led(
    // Buttons
    input btnC,
    input btnU,
    input btnL,
    input btnR,
    input btnD,
    // Led outputs
    output [15:0]led
    );
    
    genvar i;
    for (i = 0; i < 4; i = i + 1) begin
        assign led[0  + i] = btnU | btnC;
        assign led[4  + i] = btnL | btnC;
        assign led[8  + i] = btnR | btnC;
        assign led[12 + i] = btnD | btnC;
    end
endmodule
