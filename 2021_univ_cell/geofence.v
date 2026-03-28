module BitonicSortingNetwork (
    input  wire clk,
    input  wire rst_n,
    input  wire start,
    output reg  busy,
    output reg  done,

    input  wire [7:0] cmp0,
    input  wire [7:0] cmp1,
    input  wire [7:0] cmp2,
    input  wire [7:0] cmp3,
    input  wire [7:0] cmp4,
    input  wire [7:0] cmp5,
    input  wire [7:0] cmp6,
    input  wire [7:0] cmp7,
    // cmpi[j] := a[i] <= a[j]

    output reg  [2:0] result0,
    output reg  [2:0] result1,
    output reg  [2:0] result2,
    output reg  [2:0] result3,
    output reg  [2:0] result4,
    output reg  [2:0] result5,
    output reg  [2:0] result6,
    output reg  [2:0] result7
); 
    // start must be a one cycle pulse 
    parameter S_IDLE = 3'd0, 
        S_BI1 = 3'd1, 
        S_BI2 = 3'd2, 
        S_BI2_MG2 = 3'd3, 
        S_BI4 = 3'd4, 
        S_BI4_MG4 = 3'd5, 
        S_BI4_MG2 = 3'd6, 
        S_BI8 = 3'd7;
    reg [2:0]state;
    reg [2:0]next_state;
    reg do_bi1; reg do_bi2; reg do_bi4; reg do_reset;
    reg do_bi2_mg2; reg do_bi4_mg4; reg do_bi4_mg2;
    

    function [2:0] get_result;
        input [2:0] idx;
        begin
            case (idx)
                3'd0: get_result = result0;
                3'd1: get_result = result1;
                3'd2: get_result = result2;
                3'd3: get_result = result3;
                3'd4: get_result = result4;
                3'd5: get_result = result5;
                3'd6: get_result = result6;
                default: get_result = result7;
            endcase
        end
    endfunction

    function get_cmp_bit;
        input [2:0] row;
        input [2:0] col;
        reg [7:0] row_bits;
        begin
            case (row)
                3'd0: row_bits = cmp0;
                3'd1: row_bits = cmp1;
                3'd2: row_bits = cmp2;
                3'd3: row_bits = cmp3;
                3'd4: row_bits = cmp4;
                3'd5: row_bits = cmp5;
                3'd6: row_bits = cmp6;
                default: row_bits = cmp7;
            endcase

            case (col)
                3'd0: get_cmp_bit = row_bits[0];
                3'd1: get_cmp_bit = row_bits[1];
                3'd2: get_cmp_bit = row_bits[2];
                3'd3: get_cmp_bit = row_bits[3];
                3'd4: get_cmp_bit = row_bits[4];
                3'd5: get_cmp_bit = row_bits[5];
                3'd6: get_cmp_bit = row_bits[6];
                default: get_cmp_bit = row_bits[7];
            endcase
        end
    endfunction

    // ----------------------------- State Register -----------------------------
    integer i;
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            state   <= S_IDLE;
            result0 <= 3'd0;
            result1 <= 3'd1;
            result2 <= 3'd2;
            result3 <= 3'd3;
            result4 <= 3'd4;
            result5 <= 3'd5;
            result6 <= 3'd6;
            result7 <= 3'd7;
        end else begin
            if (do_reset) begin
                result0 <= 3'd0;
                result1 <= 3'd1;
                result2 <= 3'd2;
                result3 <= 3'd3;
                result4 <= 3'd4;
                result5 <= 3'd5;
                result6 <= 3'd6;
                result7 <= 3'd7;
            end
            if (do_bi1) begin 
                {result[1], result[0]} <= (get_cmp_bit(get_result(3'd0), get_result(3'd1))) ? {result[1], result[0]} : {result[0], result[1]};
                {result[3], result[2]} <= (get_cmp_bit(get_result(3'd3), get_result(3'd2))) ? {result[3], result[2]} : {result[2], result[3]};
                {result[5], result[4]} <= (get_cmp_bit(get_result(3'd4), get_result(3'd5))) ? {result[5], result[4]} : {result[4], result[5]};
                {result[7], result[6]} <= (get_cmp_bit(get_result(3'd7), get_result(3'd6))) ? {result[7], result[6]} : {result[6], result[7]};
            end
            if (do_bi2) begin
                {result[2], result[0]} <= (get_cmp_bit(get_result(3'd0), get_result(3'd2))) ? {result[2], result[0]} : {result[0], result[2]};
                {result[3], result[1]} <= (get_cmp_bit(get_result(3'd1), get_result(3'd3))) ? {result[3], result[1]} : {result[1], result[3]};
                {result[6], result[4]} <= (get_cmp_bit(get_result(3'd6), get_result(3'd4))) ? {result[6], result[4]} : {result[4], result[6]};
                {result[7], result[5]} <= (get_cmp_bit(get_result(3'd7), get_result(3'd5))) ? {result[7], result[5]} : {result[5], result[7]};
            end 
            if (do_bi2_mg2) begin
                {result[1], result[0]} <= (get_cmp_bit(get_result(3'd0), get_result(3'd1))) ? {result[1], result[0]} : {result[0], result[1]};
                {result[3], result[2]} <= (get_cmp_bit(get_result(3'd2), get_result(3'd3))) ? {result[3], result[2]} : {result[2], result[3]};
                {result[5], result[4]} <= (get_cmp_bit(get_result(3'd5), get_result(3'd4))) ? {result[5], result[4]} : {result[4], result[5]};
                {result[7], result[6]} <= (get_cmp_bit(get_result(3'd7), get_result(3'd6))) ? {result[7], result[6]} : {result[6], result[7]};
            end
            if (do_bi4) begin
                {result[4], result[0]} <= (get_cmp_bit(get_result(3'd0), get_result(3'd4))) ? {result[4], result[0]} : {result[0], result[4]};
                {result[5], result[1]} <= (get_cmp_bit(get_result(3'd1), get_result(3'd5))) ? {result[5], result[1]} : {result[1], result[5]};
                {result[6], result[2]} <= (get_cmp_bit(get_result(3'd2), get_result(3'd6))) ? {result[6], result[2]} : {result[2], result[6]};
                {result[7], result[3]} <= (get_cmp_bit(get_result(3'd3), get_result(3'd7))) ? {result[7], result[3]} : {result[3], result[7]};
            end 
            if (do_bi4_mg4) begin
                {result[2], result[0]} <= (get_cmp_bit(get_result(3'd0), get_result(3'd2))) ? {result[2], result[0]} : {result[0], result[2]};
                {result[3], result[1]} <= (get_cmp_bit(get_result(3'd1), get_result(3'd3))) ? {result[3], result[1]} : {result[1], result[3]};
                {result[6], result[4]} <= (get_cmp_bit(get_result(3'd4), get_result(3'd6))) ? {result[6], result[4]} : {result[4], result[6]};
                {result[7], result[5]} <= (get_cmp_bit(get_result(3'd5), get_result(3'd7))) ? {result[7], result[5]} : {result[5], result[7]};
            end 
            if (do_bi4_mg2) begin
                {result[1], result[0]} <= (get_cmp_bit(get_result(3'd0), get_result(3'd1))) ? {result[1], result[0]} : {result[0], result[1]};
                {result[3], result[2]} <= (get_cmp_bit(get_result(3'd2), get_result(3'd3))) ? {result[3], result[2]} : {result[2], result[3]};
                {result[5], result[4]} <= (get_cmp_bit(get_result(3'd4), get_result(3'd5))) ? {result[5], result[4]} : {result[4], result[5]};
                {result[7], result[6]} <= (get_cmp_bit(get_result(3'd6), get_result(3'd7))) ? {result[7], result[6]} : {result[6], result[7]};
            end
            state <= next_state;
        end
    end


    // ---------------------------- Next State Logic ----------------------------
    always @(*) begin
        next_state = state;
        case (state)
            S_IDLE      : if (start) next_state = S_BI1;
            S_BI1       : next_state = S_BI2;
            S_BI2       : next_state = S_BI2_MG2;
            S_BI2_MG2   : next_state = S_BI4;
            S_BI4       : next_state = S_BI4_MG4;
            S_BI4_MG4   : next_state = S_BI4_MG2;
            S_BI4_MG2   : next_state = S_BI8;
            S_BI8       : next_state = S_IDLE;
        endcase
    end


    // ------------------------------ Output Logic ------------------------------
    always @(*) begin
        busy = (state != S_IDLE);
        done = (state != S_IDLE && next_state == S_IDLE);
        do_reset     = 0;
        do_bi1       = 0;
        do_bi2       = 0;
        do_bi2_mg2   = 0;
        do_bi4       = 0;
        do_bi4_mg4   = 0;
        do_bi4_mg2   = 0;
        case (state)
            S_IDLE:      if (start) do_reset = 1;
            S_BI1:       do_bi1 = 1;
            S_BI2:       do_bi2 = 1;
            S_BI2_MG2:   do_bi2_mg2 = 1;
            S_BI4:       do_bi4 = 1;
            S_BI4_MG4:   do_bi4_mg4 = 1;
            S_BI4_MG2:   do_bi4_mg2 = 1;
        endcase
    end
endmodule

module Cross (
    input  signed [10:0] vec1_x,
    input  signed [10:0] vec1_y,
    input  signed [10:0] vec2_x,
    input  signed [10:0] vec2_y,
    output signed [22:0] result
);
    assign result = vec1_x * vec2_y - vec1_y * vec2_x;
endmodule

module geofence ( clk,reset,X,Y,valid,is_inside);
    input clk;
    input reset;
    input [9:0] X;
    input [9:0] Y;
    output valid;
    output is_inside;
    reg valid;
    reg is_inside;

    parameter S_IDLE = 4'd0, 
        S_READ_TARGET = 4'd1, 
        S_READ_FIRST_VERTEX = 4'd2, 
        S_READ_VERTEX = 4'd3, 
        S_CALC_VECTOR = 4'd4, 
        S_CALC_CROSS = 4'd5, 
        S_HARVEST_CROSS = 4'd6, 
        S_START_SORTER = 4'd7, 
        S_WAIT_SORT = 4'd8, 
        S_JUDGE_INIT1 = 4'd9,
        S_JUDGE_INIT2 = 4'd10, 
        S_JUDGE_INSIDE_CALC = 4'd11, 
        S_JUDGE_INSIDE_HARVEST = 4'd12;
    reg [3:0]state;
    reg [3:0]next_state;

    reg [2:0]i; reg [2:0]j; reg [2:0]k;

    reg [9:0]target_x; reg [9:0]target_y;
    reg [9:0]vertex_x[5:0]; reg [9:0]vertex_y[5:0];
    reg signed [10:0]vertex_vector_x[5:1]; reg signed [10:0]vertex_vector_y[5:1]; // P0Pi
    reg signed [10:0]target_vector_x[5:0]; reg signed [10:0]target_vector_y[5:0]; // PPi

    reg  signed [10:0] vec1_x, vec1_y;
    reg  signed [10:0] vec2_x, vec2_y;
    wire signed [22:0] cross_result;
    Cross _cross(
        .vec1_x(vec1_x),
        .vec1_y(vec1_y),
        .vec2_x(vec2_x),
        .vec2_y(vec2_y),
        .result(cross_result)
    );

    reg  [7:0] sorter_cmp0, sorter_cmp1, sorter_cmp2, sorter_cmp3;
    reg  [7:0] sorter_cmp4, sorter_cmp5, sorter_cmp6, sorter_cmp7;

    wire [2:0] sorter_result0, sorter_result1, sorter_result2, sorter_result3;
    wire [2:0] sorter_result4, sorter_result5, sorter_result6, sorter_result7;

    reg  sorter_rst_n;
    reg  sorter_start;
    wire sorter_busy;
    wire sorter_done;

    BitonicSortingNetwork _sorter(
        .clk(clk),
        .rst_n(sorter_rst_n),
        .start(sorter_start),
        .busy(sorter_busy),
        .done(sorter_done),

        .cmp0(sorter_cmp0),
        .cmp1(sorter_cmp1),
        .cmp2(sorter_cmp2),
        .cmp3(sorter_cmp3),
        .cmp4(sorter_cmp4),
        .cmp5(sorter_cmp5),
        .cmp6(sorter_cmp6),
        .cmp7(sorter_cmp7),

        .result0(sorter_result0),
        .result1(sorter_result1),
        .result2(sorter_result2),
        .result3(sorter_result3),
        .result4(sorter_result4),
        .result5(sorter_result5),
        .result6(sorter_result6),
        .result7(sorter_result7)
    );
    
    reg sign;

    function [2:0] get_sorter_result;
        input [2:0] idx;
        begin
            case (idx)
                3'd0: get_sorter_result = sorter_result0;
                3'd1: get_sorter_result = sorter_result1;
                3'd2: get_sorter_result = sorter_result2;
                3'd3: get_sorter_result = sorter_result3;
                3'd4: get_sorter_result = sorter_result4;
                3'd5: get_sorter_result = sorter_result5;
                3'd6: get_sorter_result = sorter_result6;
                default: get_sorter_result = sorter_result7;
            endcase
        end
    endfunction
    
    function [127:0] state_name;
        input reg[3:0] s;
        begin
            case (s)
                S_IDLE: state_name = "S_IDLE";
                S_READ_TARGET: state_name = "S_READ_TARGET";
                S_READ_FIRST_VERTEX: state_name = "S_READ_FIRST_VERTEX";
                S_READ_VERTEX: state_name = "S_READ_VERTEX";
                S_CALC_VECTOR: state_name = "S_CALC_VECTOR";
                S_CALC_CROSS: state_name = "S_CALC_CROSS";
                S_HARVEST_CROSS: state_name = "S_HARVEST_CROSS";
                S_START_SORTER: state_name = "S_START_SORTER";
                S_WAIT_SORT: state_name = "S_WAIT_SORT";
                S_JUDGE_INIT1: state_name = "S_JUDGE_INIT1";
                S_JUDGE_INIT2: state_name = "S_JUDGE_INIT2";
                S_JUDGE_INSIDE_CALC: state_name = "S_JUDGE_INSIDE_CALC";
                S_JUDGE_INSIDE_HARVEST: state_name = "S_JUDGE_INSIDE_HARVEST";
                default: state_name = "UNKNOWN";
            endcase
        end
    endfunction

    task set_sorter_cmp_bit;
        input [2:0] row;
        input [2:0] col;
        input       val;
        begin
            case (row)
                3'd0: sorter_cmp0[col] <= val;
                3'd1: sorter_cmp1[col] <= val;
                3'd2: sorter_cmp2[col] <= val;
                3'd3: sorter_cmp3[col] <= val;
                3'd4: sorter_cmp4[col] <= val;
                3'd5: sorter_cmp5[col] <= val;
                3'd6: sorter_cmp6[col] <= val;
                3'd7: sorter_cmp7[col] <= val;
            endcase
        end
    endtask

    integer t;
    // ----------------------------- State Register -----------------------------
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            sorter_cmp0 <= 8'b11111111;
            sorter_cmp1 <= 8'b11111110;
            sorter_cmp2 <= 8'b11111100;
            sorter_cmp3 <= 8'b11111000;
            sorter_cmp4 <= 8'b11110000;
            sorter_cmp5 <= 8'b11100000;
            sorter_cmp6 <= 8'b11000000;
            sorter_cmp7 <= 8'b10000000;
            valid <= 0;
            is_inside <= 0;
            state <= S_READ_TARGET;
        end else begin
            if (state == S_IDLE) begin
                sorter_cmp0 <= 8'b11111111;
                sorter_cmp1 <= 8'b11111110;
                sorter_cmp2 <= 8'b11111100;
                sorter_cmp3 <= 8'b11111000;
                sorter_cmp4 <= 8'b11110000;
                sorter_cmp5 <= 8'b11100000;
                sorter_cmp6 <= 8'b11000000;
                sorter_cmp7 <= 8'b10000000;
                valid <= 0;
            end else if (state == S_READ_TARGET) begin
                target_x <= X;
                target_y <= Y;
                $display("  Read TARGET: (%0d, %0d)", X, Y);
            end else if (state == S_READ_FIRST_VERTEX) begin
                vertex_x[0] <= X;
                vertex_y[0] <= Y;
                i <= 3'd1;
                $display("  Vertex[0]: (%0d, %0d)", X, Y);
            end else if (state == S_READ_VERTEX) begin
                vertex_x[i] <= X;
                vertex_y[i] <= Y;
                vertex_vector_x[i] <= $signed({1'b0, X}) - $signed({1'b0, vertex_x[0]});
                vertex_vector_y[i] <= $signed({1'b0, Y}) - $signed({1'b0, vertex_y[0]});
                i <= i + 3'd1;
                k <= 3'd0;
                $display("  Vertex[%0d]: (%0d, %0d) | vec=(%0d,%0d)",
                    i, X, Y,
                    $signed({1'b0, X}) - $signed({1'b0, vertex_x[0]}),
                    $signed({1'b0, Y}) - $signed({1'b0, vertex_y[0]}));
            end else if (state == S_CALC_VECTOR) begin
                target_vector_x[k] <= $signed({1'b0, vertex_x[k]}) - $signed({1'b0, target_x});
                target_vector_y[k] <= $signed({1'b0, vertex_y[k]}) - $signed({1'b0, target_y});
                k <= k + 3'd1;
                i <= 3'd1;
                j <= 3'd2;
            end else if (state == S_CALC_CROSS) begin
                vec1_x <= vertex_vector_x[i];
                vec1_y <= vertex_vector_y[i];
                vec2_x <= vertex_vector_x[j];
                vec2_y <= vertex_vector_y[j];
                $display("  CROSS input: A=(%0d,%0d), B=(%0d,%0d)",
                    vec1_x, vec1_y, vec2_x, vec2_y);
            end else if (state == S_HARVEST_CROSS) begin
                set_sorter_cmp_bit(i, j, (cross_result > 0));
                set_sorter_cmp_bit(j, i, ~(cross_result > 0));
                i <= j == 3'd5 ? i + 3'd1 : i;
                j <= j == 3'd5 ? i + 3'd2 : j + 1;
                $display("  CROSS[%0d][%0d] = %0d (sign=%0d)",
                    i, j, cross_result, (cross_result > 0));
            end else if (state == S_START_SORTER) begin
                $display("  SORTER START");
                for (t = 0; t < 8; t = t + 1) begin
                    case (t)
                        0: $display("lane %0d : cmp = %b", t, sorter_cmp0);
                        1: $display("lane %0d : cmp = %b", t, sorter_cmp1);
                        2: $display("lane %0d : cmp = %b", t, sorter_cmp2);
                        3: $display("lane %0d : cmp = %b", t, sorter_cmp3);
                        4: $display("lane %0d : cmp = %b", t, sorter_cmp4);
                        5: $display("lane %0d : cmp = %b", t, sorter_cmp5);
                        6: $display("lane %0d : cmp = %b", t, sorter_cmp6);
                        7: $display("lane %0d : cmp = %b", t, sorter_cmp7);
                    endcase
                end
            end else if (state == S_WAIT_SORT) begin 
                $display("  SORTER busy=%0d done=%0d", sorter_busy, sorter_done);
            end else if (state == S_JUDGE_INIT1) begin
                vec1_x <= target_vector_x[sorter_result[5]];
                vec1_y <= target_vector_y[sorter_result[5]];
                vec2_x <= target_vector_x[sorter_result[0]];
                vec2_y <= target_vector_y[sorter_result[0]];
                $display("  SORT RESULT ORDER:");
                $display("    %0d %0d %0d %0d %0d %0d",
                    sorter_result0, sorter_result1, sorter_result2,
                    sorter_result3, sorter_result4, sorter_result5);
            end else if (state == S_JUDGE_INIT2) begin
                sign <= (cross_result > 0);
                k <= 0;
                is_inside <= (cross_result != 0);
                $display("  INIT sign(next)=%0d (cross=%0d)", (cross_result > 0), cross_result);
            end else if (state == S_JUDGE_INSIDE_CALC) begin
                vec1_x <= target_vector_x[get_sorter_result(k)];
                vec1_y <= target_vector_y[get_sorter_result(k)];
                vec2_x <= target_vector_x[get_sorter_result(k + 3'd1)];
                vec2_y <= target_vector_y[get_sorter_result(k + 3'd1)];
                $display("  EDGE k=%0d: A=(%0d,%0d) B=(%0d,%0d)",
                    k,
                    target_vector_x[sorter_result[k]],
                    target_vector_y[sorter_result[k]],
                    target_vector_x[sorter_result[k+1]],
                    target_vector_y[sorter_result[k+1]]);
            end else if (state == S_JUDGE_INSIDE_HARVEST) begin
                is_inside <= is_inside && (cross_result != 0) && ((cross_result > 0) == sign);
                k <= k + 1;
                valid <= k == 3'd4;
                $display("  CHECK k=%0d: cross=%0d sign_ok=%0d zero_ok=%0d -> inside=%0d",
                    k,
                    cross_result,
                    ((cross_result > 0) == sign),
                    (cross_result != 0),
                    is_inside);
            end
            state <= next_state;
            $display("\n[T=%0t] STATE=%s -> NEXT=%s | i=%0d j=%0d k=%0d | valid=%0d inside=%0d",
                $time, state_name(state), state_name(next_state), i, j, k, valid, is_inside);
        end
        if (valid) begin
            $display(">>> RESULT: is_inside = %0d <<<", is_inside);
        end
    end
    // ---------------------------- Next State Logic ----------------------------
    always @(*) begin
        next_state = state;
        case (state)
            S_IDLE: next_state = S_READ_TARGET;
            S_READ_TARGET: next_state = S_READ_FIRST_VERTEX;
            S_READ_FIRST_VERTEX: next_state = S_READ_VERTEX;
            S_READ_VERTEX: if (i == 3'd5) next_state = S_CALC_VECTOR;
            S_CALC_VECTOR: if (k == 3'd5) next_state = S_CALC_CROSS;
            S_CALC_CROSS: next_state = S_HARVEST_CROSS;
            S_HARVEST_CROSS: next_state = (i == 3'd4 && j == 3'd5) ? S_START_SORTER : S_CALC_CROSS;
            S_START_SORTER: next_state = S_WAIT_SORT;
            S_WAIT_SORT: if (sorter_done) next_state = S_JUDGE_INIT1;
            S_JUDGE_INIT1: next_state = S_JUDGE_INIT2;
            S_JUDGE_INIT2: next_state = S_JUDGE_INSIDE_CALC;
            S_JUDGE_INSIDE_CALC: next_state = S_JUDGE_INSIDE_HARVEST;
            S_JUDGE_INSIDE_HARVEST: next_state = (k == 3'd4) ? S_IDLE : S_JUDGE_INSIDE_CALC; 
            default: next_state = S_IDLE;
        endcase
    end
    // ------------------------------ Output Logic ------------------------------
    always @(*) begin
        sorter_start = 0;
        sorter_rst_n = ~reset;
        case (state)
            S_START_SORTER: sorter_start = 1;  
        endcase
    end
endmodule

