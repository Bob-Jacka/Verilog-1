module simple_script;
    parameter on = 1, off = 0, red_tick = 350, ambar_ticks = 10, green_tick = 200;
    
    initial red = off;
    initial amber = off;
    initial green = off;
    
    always begin
        red = on;
        light(red, red_ticks);
        green = on;
        light(green, green_ticks);
        amber = on;
        light(amber, amber_ticks);
    end
    
    task light;
    output color;
    input [31:0] tics;
    begin
        repeat (tics) @ (posedge clock);
        color = off;
    end
    endtask
    
    always begin
        #100 clock = 0;
        #100 clock = 1;
    end
endmodule
