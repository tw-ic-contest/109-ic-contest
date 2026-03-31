module geofence (clk, reset, X, Y, valid, is_inside);
    input clk;
    input reset;
    input [9:0] X;
    input [9:0] Y;
    output valid;
    output is_inside;
    reg valid;
    reg is_inside; 
    // is_inside default is 1, set to 0 once the sign mismatch

    // ---------------- State Definition ----------------
    localparam S_IDLE = 3'd0;
    localparam S_READ = 3'd1;
    localparam S_SORT_CALC = 3'd2;
    localparam S_SORT_SWAP = 3'd3;
    localparam S_JUDGE_CALC = 3'd4;
    localparam S_JUDGE_CHK = 3'd5;
    reg [2:0] state, next_state;

    // ---------------- Registers ----------------
    reg [9:0] obj_x [0:5];
    reg [9:0] obj_y [0:5];
    reg [9:0] tg_x, tg_y;
    reg [2:0] idx [1:5]; // record sorted result
    reg [2:0] count;
    reg [2:0] i, j; 
    reg sign_ref;
    
    // ---------------- Shared Cross Modules ----------------
    reg [9:0] ax, ay, bx, by, cx, cy;
    wire signed [11:0] vec1_x = $signed({1'b0, ax}) - $signed({1'b0, cx});
    wire signed [11:0] vec1_y = $signed({1'b0, ay}) - $signed({1'b0, cy});
    wire signed [11:0] vec2_x = $signed({1'b0, bx}) - $signed({1'b0, cx});
    wire signed [11:0] vec2_y = $signed({1'b0, by}) - $signed({1'b0, cy});
    wire signed [23:0] cross_result = (vec1_x * vec2_y) - (vec1_y * vec2_x);
    always @(*) begin
        if (state == S_SORT_CALC || state == S_SORT_SWAP) begin
            // sort mode
            // \rhvec{P_0 P_{sorted_idx[i}} \times \rhvec{P_0 P_{sorted_idx[j]}}
            ax = obj_x[idx[i]]; ay = obj_y[idx[i]];
            bx = obj_x[idx[j]]; by = obj_y[idx[j]];
            cx = obj_x[0];      cy = obj_y[0];
        end else begin
            // judge mode
            // \rhvec{PP_k} \times \rhvec{PP_{k+1}}
            // additionally consider the case for k=5, calculate \rhvec{PP_5} \times \rhvec{PP_0} instad
            ax = (i == 0) ? obj_x[0] : obj_x[idx[i]]; 
            ay = (i == 0) ? obj_y[0] : obj_y[idx[i]];            
            bx = (i == 5) ? obj_x[0] : obj_x[idx[i+1]]; 
            by = (i == 5) ? obj_y[0] : obj_y[idx[i+1]];
            cx = tg_x; cy = tg_y;
        end
    end

    // ---------------- Sequential Logic ----------------
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            state <= S_READ;    
            valid <= 0;
            is_inside <= 1;
            count <= 0;
            idx[1] <= 1; idx[2] <= 2; idx[3] <= 3; idx[4] <= 4; idx[5] <= 5;
        end else begin
            case (state)
                S_IDLE: begin
                    valid <= 0;
                    is_inside <= 1;
                    count <= 0;
                    state <= S_READ;
                    idx[1] <= 1; idx[2] <= 2; idx[3] <= 3; idx[4] <= 4; idx[5] <= 5;
                end
                
                S_READ: begin
                    if (count == 0) begin
                        tg_x <= X; tg_y <= Y;
                    end else begin
                        obj_x[count-1] <= X; 
                        obj_y[count-1] <= Y;
                    end
                    
                    if (count == 6) begin
                        state <= S_SORT_CALC;
                        i <= 1; j <= 2;
                    end else begin
                        count <= count + 1;
                    end
                end
                
                S_SORT_CALC: begin
                    state <= S_SORT_SWAP;
                end
                
                S_SORT_SWAP: begin
                    // bubble sort
                    if (cross_result < 0) begin
                        idx[i] <= idx[j];
                        idx[j] <= idx[i];
                    end
                    
                    if (j == 5) begin
                        if (i == 4) begin
                            state <= S_JUDGE_CALC;
                            i <= 0;
                        end else begin
                            i <= i + 1;
                            j <= i + 2;
                            state <= S_SORT_CALC;
                        end
                    end else begin
                        j <= j + 1;
                        state <= S_SORT_CALC;
                    end
                end
                
                S_JUDGE_CALC: begin
                    state <= S_JUDGE_CHK;
                end
                
                S_JUDGE_CHK: begin
                    if (i == 0) begin
                        sign_ref <= (cross_result > 0);
                    end else begin
                        if ((cross_result > 0) != sign_ref || cross_result == 0) begin
                            is_inside <= 0;
                        end
                    end
                    
                    if (i == 5) begin
                        valid <= 1;
                        state <= S_IDLE;
                    end else begin
                        i <= i + 1;
                        state <= S_JUDGE_CALC;
                    end
                end
            endcase
        end
    end
endmodule