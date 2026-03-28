module BitonicSortingNetwork (
    input wire clk, 
    input wire rst_n, 
    input wire start, 
    output reg busy, 
    output reg done, 

    input  [7:0] cmp [7:0], // cmp[i][j] := a[i] <= a[j]
    output reg [2:0] result [7:0]
);
    // start must be a one cycle pulse 
    typedef enum logic [2:0] {
        S_IDLE, 
        S_BI1, 
        S_BI2, 
        S_BI2_MG2, 
        S_BI4, 
        S_BI4_MG4, 
        S_BI4_MG2, 
        S_BI8
    } state_t;
    state_t state, next_state;
    reg do_bi1; reg do_bi2; reg do_bi4; reg do_reset;
    reg do_bi2_mg2; reg do_bi4_mg4; reg do_bi4_mg2;

    // ----------------------------- State Register -----------------------------
    integer i;
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            state <= S_IDLE; 
            for (i = 0; i < 8; i++) result[i] <= i[2:0];
        end else begin
            if (do_reset) begin
                for (i = 0; i < 8; i++) result[i] <= i[2:0];            
            end
            if (do_bi1) begin 
                {result[1], result[0]} <= (cmp[result[0]][result[1]]) ? {result[1], result[0]} : {result[0], result[1]};
                {result[3], result[2]} <= (cmp[result[3]][result[2]]) ? {result[3], result[2]} : {result[2], result[3]};
                {result[5], result[4]} <= (cmp[result[4]][result[5]]) ? {result[5], result[4]} : {result[4], result[5]};
                {result[7], result[6]} <= (cmp[result[7]][result[6]]) ? {result[7], result[6]} : {result[6], result[7]};
            end
            if (do_bi2) begin
                {result[2], result[0]} <= (cmp[result[0]][result[2]]) ? {result[2], result[0]} : {result[0], result[2]};
                {result[3], result[1]} <= (cmp[result[1]][result[3]]) ? {result[3], result[1]} : {result[1], result[3]};
                {result[6], result[4]} <= (cmp[result[6]][result[4]]) ? {result[6], result[4]} : {result[4], result[6]};
                {result[7], result[5]} <= (cmp[result[7]][result[5]]) ? {result[7], result[5]} : {result[5], result[7]};
            end 
            if (do_bi2_mg2) begin
                {result[1], result[0]} <= (cmp[result[0]][result[1]]) ? {result[1], result[0]} : {result[0], result[1]};
                {result[3], result[2]} <= (cmp[result[2]][result[3]]) ? {result[3], result[2]} : {result[2], result[3]};
                {result[5], result[4]} <= (cmp[result[5]][result[4]]) ? {result[5], result[4]} : {result[4], result[5]};
                {result[7], result[6]} <= (cmp[result[7]][result[6]]) ? {result[7], result[6]} : {result[6], result[7]};
            end
            if (do_bi4) begin
                {result[4], result[0]} <= (cmp[result[0]][result[4]]) ? {result[4], result[0]} : {result[0], result[4]};
                {result[5], result[1]} <= (cmp[result[1]][result[5]]) ? {result[5], result[1]} : {result[1], result[5]};
                {result[6], result[2]} <= (cmp[result[2]][result[6]]) ? {result[6], result[2]} : {result[2], result[6]};
                {result[7], result[3]} <= (cmp[result[3]][result[7]]) ? {result[7], result[3]} : {result[3], result[7]};
            end 
            if (do_bi4_mg4) begin
                {result[2], result[0]} <= (cmp[result[0]][result[2]]) ? {result[2], result[0]} : {result[0], result[2]};
                {result[3], result[1]} <= (cmp[result[1]][result[3]]) ? {result[3], result[1]} : {result[1], result[3]};
                {result[6], result[4]} <= (cmp[result[4]][result[6]]) ? {result[6], result[4]} : {result[4], result[6]};
                {result[7], result[5]} <= (cmp[result[5]][result[7]]) ? {result[7], result[5]} : {result[5], result[7]};
            end 
            if (do_bi4_mg2) begin
                {result[1], result[0]} <= (cmp[result[0]][result[1]]) ? {result[1], result[0]} : {result[0], result[1]};
                {result[3], result[2]} <= (cmp[result[2]][result[3]]) ? {result[3], result[2]} : {result[2], result[3]};
                {result[5], result[4]} <= (cmp[result[4]][result[5]]) ? {result[5], result[4]} : {result[4], result[5]};
                {result[7], result[6]} <= (cmp[result[6]][result[7]]) ? {result[7], result[6]} : {result[6], result[7]};
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
    input wire signed [10:0]vec1[1:0], // {vx1, vy1}
    input wire signed [10:0]vec2[1:0], // {vx2, vy2}
    output wire signed [22:0]result
);
    assign result = vec1[0] * vec2[1] - vec1[1] * vec2[0];
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

    typedef enum logic [3:0] {
        S_IDLE, 
        S_READ_TARGET, 
        S_READ_FIRST_VERTEX, 
        S_READ_VERTEX, 
        S_CALC_VECTOR, 
        S_CALC_CROSS, 
        S_HARVEST_CROSS, 
        S_START_SORTER, 
        S_WAIT_SORT, 
        S_JUDGE_INIT1,
        S_JUDGE_INIT2, 
        S_JUDGE_INSIDE_CALC, 
        S_JUDGE_INSIDE_HARVEST
    } state_t;
    state_t state;
    state_t next_state;

    reg [2:0]i; reg [2:0]j; reg [2:0]k;

    reg [9:0]target_x; reg [9:0]target_y;
    reg [9:0]vertex_x[5:0]; reg [9:0]vertex_y[5:0];
    reg signed [10:0]vertex_vector_x[5:1]; reg signed [10:0]vertex_vector_y[5:1]; // P0Pi
    reg signed [10:0]target_vector_x[5:0]; reg signed [10:0]target_vector_y[5:0]; // PPi

    reg signed [10:0]vec1[1:0];
    reg signed [10:0]vec2[1:0];
    reg signed [22:0]cross_result;
    Cross _cross(.vec1(vec1), .vec2(vec2), .result(cross_result));

    reg [7:0]sorter_cmp[7:0]; reg [2:0]sorter_result[7:0];
    reg sorter_rst_n; reg sorter_start; wire sorter_busy; wire sorter_done; 
    BitonicSortingNetwork _sorter(
        .clk(clk), .rst_n(sorter_rst_n), .start(sorter_start), 
        .busy(sorter_busy), .done(sorter_done),
        .cmp(sorter_cmp), .result(sorter_result)
    );
    
    reg sign;

    function [127:0] state_name;
        input state_t s;
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

    // ----------------------------- State Register -----------------------------
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            sorter_cmp[0] <= 8'b11111111;
            sorter_cmp[1] <= 8'b01111111;
            sorter_cmp[2] <= 8'b00111111;
            sorter_cmp[3] <= 8'b00011111;
            sorter_cmp[4] <= 8'b00001111;
            sorter_cmp[5] <= 8'b00000111;
            sorter_cmp[6] <= 8'b00000011;
            sorter_cmp[7] <= 8'b00000001;
            valid <= 0;
            is_inside <= 0;
            state <= S_READ_TARGET;
        end else begin
            if (state == S_IDLE) begin
                sorter_cmp[0] <= 8'b11111111;
                sorter_cmp[1] <= 8'b01111111;
                sorter_cmp[2] <= 8'b00111111;
                sorter_cmp[3] <= 8'b00011111;
                sorter_cmp[4] <= 8'b00001111;
                sorter_cmp[5] <= 8'b00000111;
                sorter_cmp[6] <= 8'b00000011;
                sorter_cmp[7] <= 8'b00000001;
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
                vec1[0] <= vertex_vector_x[i];
                vec1[1] <= vertex_vector_y[i];
                vec2[0] <= vertex_vector_x[j];
                vec2[1] <= vertex_vector_y[j];
                $display("  CROSS input: A=(%0d,%0d), B=(%0d,%0d)",
                    vec1[0], vec1[1], vec2[0], vec2[1]);
            end else if (state == S_HARVEST_CROSS) begin
                sorter_cmp[i][j] <= (cross_result > 0);
                sorter_cmp[j][i] <= ~(cross_result > 0);
                i <= j == 3'd5 ? i + 3'd1 : i;
                j <= j == 3'd5 ? i + 3'd2 : j + 1;
                $display("  CROSS[%0d][%0d] = %0d (sign=%0d)",
                    i, j, cross_result, (cross_result > 0));
            end else if (state == S_START_SORTER) begin
                $display("  SORTER START");
                if (state == SORTER_START) begin
                    $display("===== SORTER CMP DEBUG =====");
                    for (int t = 0; t < 8; t = t + 1) begin
                        $display("lane %0d : cmp = %b", t, sorter_cmp[t]);
                    end
                end
            end else if (state == S_WAIT_SORT) begin 
                $display("  SORTER busy=%0d done=%0d", sorter_busy, sorter_done);
            end else if (state == S_JUDGE_INIT1) begin
                vec1[0] <= target_vector_x[sorter_result[5]];
                vec1[1] <= target_vector_y[sorter_result[5]];
                vec2[0] <= target_vector_x[sorter_result[0]];
                vec2[1] <= target_vector_y[sorter_result[0]];
                $display("  SORT RESULT ORDER:");
                $display("    %0d %0d %0d %0d %0d %0d",
                    sorter_result[0], sorter_result[1], sorter_result[2],
                    sorter_result[3], sorter_result[4], sorter_result[5]);
            end else if (state == S_JUDGE_INIT2) begin
                sign <= (cross_result > 0);
                k <= 0;
                is_inside <= (cross_result != 0);
                $display("  INIT sign(next)=%0d (cross=%0d)", (cross_result > 0), cross_result);
            end else if (state == S_JUDGE_INSIDE_CALC) begin
                vec1[0] <= target_vector_x[sorter_result[k]];
                vec1[1] <= target_vector_y[sorter_result[k]];
                vec2[0] <= target_vector_x[sorter_result[k + 1]];
                vec2[1] <= target_vector_y[sorter_result[k + 1]];
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

