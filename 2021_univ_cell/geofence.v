module geofence ( 
    input clk,
    input reset,
    input [9:0] X,
    input [9:0] Y,
    output reg valid,
    output reg is_inside
);

    // ---------------- State Definition ----------------
    localparam S_IDLE       = 3'd0;
    localparam S_READ       = 3'd1;
    localparam S_SORT_CALC  = 3'd2;
    localparam S_SORT_SWAP  = 3'd3;
    localparam S_JUDGE_CALC = 3'd4;
    localparam S_JUDGE_CHK  = 3'd5;
    reg [2:0] state, next_state;

    // ---------------- Registers ----------------
    reg [9:0] obj_x [0:5];
    reg [9:0] obj_y [0:5];
    reg [9:0] tg_x, tg_y;
    
    // 只用 5 個位置的 index 來紀錄排序結果
    reg [2:0] idx [1:5];
    
    reg [2:0] count;   // 讀取計數器
    reg [2:0] i, j;    // 排序與判斷用的雙迴圈計數器
    reg sign_ref;      // 紀錄第一個外積的符號
    
    // ---------------- 共用的外積運算單元 (Combinational) ----------------
    // 透過 MUX 決定現在要算「誰減誰」
    reg [9:0] ax, ay, bx, by, cx, cy;
    wire signed [11:0] vec1_x = $signed({1'b0, ax}) - $signed({1'b0, cx});
    wire signed [11:0] vec1_y = $signed({1'b0, ay}) - $signed({1'b0, cy});
    wire signed [11:0] vec2_x = $signed({1'b0, bx}) - $signed({1'b0, cx});
    wire signed [11:0] vec2_y = $signed({1'b0, by}) - $signed({1'b0, cy});
    
    // 只有這裡會用到乘法，整個設計只有這兩個乘法器
    wire signed [23:0] cross_result = (vec1_x * vec2_y) - (vec1_y * vec2_x);

    // MUX 控制邏輯
    always @(*) begin
        if (state == S_SORT_CALC || state == S_SORT_SWAP) begin
            // 排序模式：以 obj[0] 為基準點，比較 obj[idx[i]] 和 obj[idx[j]]
            ax = obj_x[idx[i]]; ay = obj_y[idx[i]];
            bx = obj_x[idx[j]]; by = obj_y[idx[j]];
            cx = obj_x[0];      cy = obj_y[0];
        end else begin
            // 判斷模式：以 target (tg) 為基準點，比較 obj[V1] 和 obj[V2]
            // 注意：要處理繞一圈回到 obj[0] 的情況
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
            state <= S_IDLE;
            valid <= 0;
            is_inside <= 0;
            count <= 0;
        end else begin
            case (state)
                S_IDLE: begin
                    valid <= 0;
                    is_inside <= 1; // 預設為 true，只要碰到一個反向就拉 low
                    count <= 0;
                    state <= S_READ;
                    // 初始化 index
                    idx[1] <= 1; idx[2] <= 2; idx[3] <= 3; 
                    idx[4] <= 4; idx[5] <= 5;
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
                    // 等待組合邏輯外積算完
                    state <= S_SORT_SWAP;
                end
                
                S_SORT_SWAP: begin
                    // Bubble Sort: 如果 cross_result < 0 則交換位置
                    if (cross_result < 0) begin
                        idx[i] <= idx[j];
                        idx[j] <= idx[i];
                    end
                    
                    // 迴圈控制
                    if (j == 5) begin
                        if (i == 4) begin
                            state <= S_JUDGE_CALC;
                            i <= 0; // 進入下一個階段
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
                        sign_ref <= (cross_result > 0); // 記錄第一條邊的符號
                    end else begin
                        // 如果符號和第一條邊不同，或者外積為 0，就不在圍籬內
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