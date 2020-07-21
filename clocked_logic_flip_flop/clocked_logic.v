`timescale 1ns / 1ps

module clocked_logic(
    input i_Clk,
    output o_LED_1,
    input o_btn_C
    );
    
    reg r_LED_1 = 1'b0;
    reg r_Switch_1 = 1'b0;
    
    always @(posedge i_Clk)
    begin
        r_Switch_1 <= o_btn_C;
        
        if (o_btn_C == 1'b0 && r_Switch_1 == 1'b1)
        begin 
            r_LED_1 <= ~r_LED_1;
        end
    end
    
    assign o_LED_1 = r_LED_1;
    
endmodule