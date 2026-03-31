/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : U-2022.12
// Date      : Sun Mar 29 22:31:18 2026
/////////////////////////////////////////////////////////////


module geofence_DW01_sub_4 ( A, B, CI, DIFF, CO );
  input [11:0] A;
  input [11:0] B;
  output [11:0] DIFF;
  input CI;
  output CO;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13;
  wire   [12:0] carry;

  ADDFXL U2_8 ( .A(A[8]), .B(n5), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8]) );
  ADDFXL U2_6 ( .A(A[6]), .B(n7), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6]) );
  ADDFXL U2_4 ( .A(A[4]), .B(n9), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4]) );
  ADDFXL U2_2 ( .A(A[2]), .B(n11), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2])
         );
  ADDFX2 U2_1 ( .A(A[1]), .B(n12), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  ADDFXL U2_9 ( .A(A[9]), .B(n4), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  ADDFXL U2_7 ( .A(A[7]), .B(n6), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7]) );
  ADDFXL U2_5 ( .A(A[5]), .B(n8), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5]) );
  ADDFXL U2_3 ( .A(A[3]), .B(n10), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3])
         );
  CLKINVX1 U1 ( .A(n13), .Y(n2) );
  CLKINVX1 U2 ( .A(A[0]), .Y(n3) );
  CLKINVX1 U3 ( .A(B[1]), .Y(n12) );
  NAND2X1 U4 ( .A(n2), .B(n3), .Y(carry[1]) );
  XNOR2X1 U5 ( .A(n13), .B(A[0]), .Y(DIFF[0]) );
  CLKINVX1 U6 ( .A(B[0]), .Y(n13) );
  CLKINVX1 U7 ( .A(B[3]), .Y(n10) );
  CLKINVX1 U8 ( .A(B[2]), .Y(n11) );
  CLKINVX1 U9 ( .A(B[5]), .Y(n8) );
  CLKINVX1 U10 ( .A(B[4]), .Y(n9) );
  CLKINVX1 U11 ( .A(B[7]), .Y(n6) );
  CLKINVX1 U12 ( .A(B[6]), .Y(n7) );
  CLKINVX1 U13 ( .A(B[9]), .Y(n4) );
  CLKINVX1 U14 ( .A(B[8]), .Y(n5) );
  CLKBUFX3 U15 ( .A(DIFF[10]), .Y(DIFF[11]) );
  CLKINVX1 U16 ( .A(carry[10]), .Y(DIFF[10]) );
endmodule


module geofence_DW01_sub_3 ( A, B, CI, DIFF, CO );
  input [11:0] A;
  input [11:0] B;
  output [11:0] DIFF;
  input CI;
  output CO;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13;
  wire   [12:0] carry;

  ADDFXL U2_8 ( .A(A[8]), .B(n5), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8]) );
  ADDFXL U2_6 ( .A(A[6]), .B(n7), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6]) );
  ADDFXL U2_4 ( .A(A[4]), .B(n9), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4]) );
  ADDFXL U2_2 ( .A(A[2]), .B(n11), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2])
         );
  ADDFX2 U2_1 ( .A(A[1]), .B(n12), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  ADDFXL U2_9 ( .A(A[9]), .B(n4), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  ADDFXL U2_7 ( .A(A[7]), .B(n6), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7]) );
  ADDFXL U2_5 ( .A(A[5]), .B(n8), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5]) );
  ADDFXL U2_3 ( .A(A[3]), .B(n10), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3])
         );
  CLKINVX1 U1 ( .A(n13), .Y(n2) );
  CLKINVX1 U2 ( .A(A[0]), .Y(n3) );
  CLKINVX1 U3 ( .A(B[1]), .Y(n12) );
  NAND2X1 U4 ( .A(n2), .B(n3), .Y(carry[1]) );
  XNOR2X1 U5 ( .A(n13), .B(A[0]), .Y(DIFF[0]) );
  CLKINVX1 U6 ( .A(B[0]), .Y(n13) );
  CLKINVX1 U7 ( .A(B[3]), .Y(n10) );
  CLKINVX1 U8 ( .A(B[2]), .Y(n11) );
  CLKINVX1 U9 ( .A(B[5]), .Y(n8) );
  CLKINVX1 U10 ( .A(B[4]), .Y(n9) );
  CLKINVX1 U11 ( .A(B[7]), .Y(n6) );
  CLKINVX1 U12 ( .A(B[6]), .Y(n7) );
  CLKINVX1 U13 ( .A(B[9]), .Y(n4) );
  CLKINVX1 U14 ( .A(B[8]), .Y(n5) );
  CLKBUFX3 U15 ( .A(DIFF[10]), .Y(DIFF[11]) );
  CLKINVX1 U16 ( .A(carry[10]), .Y(DIFF[10]) );
endmodule


module geofence_DW01_sub_2 ( A, B, CI, DIFF, CO );
  input [11:0] A;
  input [11:0] B;
  output [11:0] DIFF;
  input CI;
  output CO;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13;
  wire   [12:0] carry;

  ADDFX2 U2_9 ( .A(A[9]), .B(n4), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  ADDFX2 U2_8 ( .A(A[8]), .B(n5), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8]) );
  ADDFX2 U2_7 ( .A(A[7]), .B(n6), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7]) );
  ADDFX2 U2_6 ( .A(A[6]), .B(n7), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6]) );
  ADDFX2 U2_5 ( .A(A[5]), .B(n8), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5]) );
  ADDFX2 U2_4 ( .A(A[4]), .B(n9), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4]) );
  ADDFX2 U2_2 ( .A(A[2]), .B(n11), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2])
         );
  ADDFX2 U2_3 ( .A(A[3]), .B(n10), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3])
         );
  ADDFX2 U2_1 ( .A(A[1]), .B(n12), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  CLKINVX1 U1 ( .A(n13), .Y(n2) );
  CLKINVX1 U2 ( .A(A[0]), .Y(n3) );
  CLKINVX1 U3 ( .A(B[1]), .Y(n12) );
  NAND2X1 U4 ( .A(n2), .B(n3), .Y(carry[1]) );
  XNOR2X1 U5 ( .A(n13), .B(A[0]), .Y(DIFF[0]) );
  CLKINVX1 U6 ( .A(B[0]), .Y(n13) );
  CLKINVX1 U7 ( .A(B[3]), .Y(n10) );
  CLKINVX1 U8 ( .A(B[2]), .Y(n11) );
  CLKINVX1 U9 ( .A(B[4]), .Y(n9) );
  CLKINVX1 U10 ( .A(B[5]), .Y(n8) );
  CLKINVX1 U11 ( .A(B[6]), .Y(n7) );
  CLKINVX1 U12 ( .A(B[7]), .Y(n6) );
  CLKINVX1 U13 ( .A(B[8]), .Y(n5) );
  CLKINVX1 U14 ( .A(B[9]), .Y(n4) );
  CLKBUFX3 U15 ( .A(DIFF[10]), .Y(DIFF[11]) );
  INVX3 U16 ( .A(carry[10]), .Y(DIFF[10]) );
endmodule


module geofence_DW01_sub_1 ( A, B, CI, DIFF, CO );
  input [11:0] A;
  input [11:0] B;
  output [11:0] DIFF;
  input CI;
  output CO;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13;
  wire   [12:0] carry;

  ADDFX2 U2_9 ( .A(A[9]), .B(n4), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  ADDFX2 U2_8 ( .A(A[8]), .B(n5), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8]) );
  ADDFX2 U2_7 ( .A(A[7]), .B(n6), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7]) );
  ADDFX2 U2_6 ( .A(A[6]), .B(n7), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6]) );
  ADDFX2 U2_5 ( .A(A[5]), .B(n8), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5]) );
  ADDFX2 U2_4 ( .A(A[4]), .B(n9), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4]) );
  ADDFX2 U2_2 ( .A(A[2]), .B(n11), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2])
         );
  ADDFX2 U2_3 ( .A(A[3]), .B(n10), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3])
         );
  ADDFX2 U2_1 ( .A(A[1]), .B(n12), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  CLKINVX1 U1 ( .A(n13), .Y(n2) );
  CLKINVX1 U2 ( .A(A[0]), .Y(n3) );
  CLKINVX1 U3 ( .A(B[1]), .Y(n12) );
  NAND2X1 U4 ( .A(n2), .B(n3), .Y(carry[1]) );
  XNOR2X1 U5 ( .A(n13), .B(A[0]), .Y(DIFF[0]) );
  CLKINVX1 U6 ( .A(B[0]), .Y(n13) );
  CLKINVX1 U7 ( .A(B[3]), .Y(n10) );
  CLKINVX1 U8 ( .A(B[2]), .Y(n11) );
  CLKINVX1 U9 ( .A(B[4]), .Y(n9) );
  CLKINVX1 U10 ( .A(B[5]), .Y(n8) );
  CLKINVX1 U11 ( .A(B[6]), .Y(n7) );
  CLKINVX1 U12 ( .A(B[7]), .Y(n6) );
  CLKINVX1 U13 ( .A(B[8]), .Y(n5) );
  CLKINVX1 U14 ( .A(B[9]), .Y(n4) );
  CLKBUFX3 U15 ( .A(DIFF[10]), .Y(DIFF[11]) );
  INVX3 U16 ( .A(carry[10]), .Y(DIFF[10]) );
endmodule


module geofence_DW_mult_tc_1 ( a, b, product );
  input [11:0] a;
  input [11:0] b;
  output [23:0] product;
  wire   n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17,
         n18, n19, n20, n21, n22, n23, n24, n25, n27, n28, n29, n30, n31, n33,
         n34, n35, n36, n37, n38, n39, n41, n42, n43, n44, n45, n46, n47, n48,
         n49, n50, n51, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63,
         n64, n65, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78,
         n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92,
         n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n106, n107, n108, n109, n110, n111, n112, n113, n114, n115, n116,
         n117, n118, n119, n120, n121, n122, n123, n124, n125, n126, n127,
         n128, n129, n130, n131, n132, n133, n134, n135, n136, n137, n138,
         n139, n140, n141, n142, n143, n144, n145, n146, n147, n148, n149,
         n150, n151, n152, n153, n154, n155, n156, n157, n158, n159, n160,
         n161, n162, n163, n164, n165, n166, n167, n168, n169, n170, n171,
         n173, n174, n175, n176, n177, n178, n179, n180, n181, n182, n184,
         n185, n186, n187, n188, n189, n190, n191, n192, n193, n194, n378,
         n379, n380, n381, n382, n383, n384, n385, n386, n387, n388, n389,
         n390, n391, n392, n393, n394, n395, n396, n397, n398, n399, n400,
         n401, n402, n403, n404, n405, n406, n407, n408, n409, n410, n411,
         n412, n413, n414, n415, n416, n417, n418, n419, n420, n421, n422,
         n423, n424, n425, n426, n427, n428, n429, n430, n431, n432, n433,
         n434, n435, n436, n437, n438, n439, n440, n441, n442, n443, n444,
         n445, n446, n447, n448, n449, n450, n451, n452, n453, n454, n455,
         n456, n457, n458, n459, n460, n461, n462, n463, n464, n465, n466,
         n467, n468, n469, n470, n471, n472, n473, n474, n475, n476, n477,
         n478, n479, n480, n481, n482, n483, n484, n485, n486;

  ADDFXL U4 ( .A(n25), .B(n123), .CI(n4), .CO(n3), .S(product[22]) );
  ADDFXL U5 ( .A(n27), .B(n123), .CI(n5), .CO(n4), .S(product[21]) );
  ADDFXL U6 ( .A(n29), .B(n28), .CI(n6), .CO(n5), .S(product[20]) );
  ADDFXL U7 ( .A(n30), .B(n34), .CI(n7), .CO(n6), .S(product[19]) );
  ADDFXL U8 ( .A(n37), .B(n35), .CI(n8), .CO(n7), .S(product[18]) );
  ADDFXL U9 ( .A(n38), .B(n42), .CI(n9), .CO(n8), .S(product[17]) );
  ADDFXL U10 ( .A(n43), .B(n47), .CI(n10), .CO(n9), .S(product[16]) );
  ADDFXL U11 ( .A(n48), .B(n54), .CI(n11), .CO(n10), .S(product[15]) );
  ADDFXL U12 ( .A(n55), .B(n60), .CI(n12), .CO(n11), .S(product[14]) );
  ADDFXL U13 ( .A(n61), .B(n68), .CI(n13), .CO(n12), .S(product[13]) );
  ADDFXL U14 ( .A(n69), .B(n76), .CI(n14), .CO(n13), .S(product[12]) );
  ADDFXL U15 ( .A(n77), .B(n84), .CI(n15), .CO(n14), .S(product[11]) );
  ADDFXL U16 ( .A(n85), .B(n90), .CI(n16), .CO(n15), .S(product[10]) );
  ADDFXL U17 ( .A(n91), .B(n97), .CI(n17), .CO(n16), .S(product[9]) );
  ADDFXL U18 ( .A(n98), .B(n102), .CI(n18), .CO(n17), .S(product[8]) );
  ADDFXL U19 ( .A(n103), .B(n107), .CI(n19), .CO(n18), .S(product[7]) );
  ADDFXL U20 ( .A(n109), .B(n108), .CI(n20), .CO(n19), .S(product[6]) );
  ADDFXL U21 ( .A(n110), .B(n113), .CI(n21), .CO(n20), .S(product[5]) );
  ADDFXL U22 ( .A(n114), .B(n115), .CI(n22), .CO(n21), .S(product[4]) );
  ADDFXL U23 ( .A(n116), .B(n121), .CI(n23), .CO(n22), .S(product[3]) );
  ADDFXL U24 ( .A(n193), .B(n182), .CI(n24), .CO(n23), .S(product[2]) );
  ADDHXL U25 ( .A(n122), .B(n194), .CO(n24), .S(product[1]) );
  ADDFXL U27 ( .A(n31), .B(n135), .CI(n124), .CO(n27), .S(n28) );
  ADDFXL U28 ( .A(n390), .B(n125), .CI(n33), .CO(n29), .S(n30) );
  CMPR42X1 U30 ( .A(n147), .B(n136), .C(n39), .D(n126), .ICI(n36), .S(n35), 
        .ICO(n33), .CO(n34) );
  CMPR42X1 U31 ( .A(n137), .B(n127), .C(n392), .D(n44), .ICI(n41), .S(n38), 
        .ICO(n36), .CO(n37) );
  CMPR42X1 U33 ( .A(n148), .B(n138), .C(n45), .D(n49), .ICI(n46), .S(n43), 
        .ICO(n41), .CO(n42) );
  ADDFXL U34 ( .A(n51), .B(n158), .CI(n128), .CO(n44), .S(n45) );
  CMPR42X1 U35 ( .A(n395), .B(n56), .C(n57), .D(n50), .ICI(n53), .S(n48), 
        .ICO(n46), .CO(n47) );
  ADDFXL U36 ( .A(n139), .B(n129), .CI(n149), .CO(n49), .S(n50) );
  CMPR42X1 U38 ( .A(n150), .B(n140), .C(n58), .D(n63), .ICI(n59), .S(n55), 
        .ICO(n53), .CO(n54) );
  CMPR42X1 U39 ( .A(n170), .B(n130), .C(n65), .D(n159), .ICI(n62), .S(n58), 
        .ICO(n56), .CO(n57) );
  CMPR42X1 U40 ( .A(n393), .B(n70), .C(n71), .D(n64), .ICI(n67), .S(n61), 
        .ICO(n59), .CO(n60) );
  CMPR42X1 U41 ( .A(n141), .B(n171), .C(n160), .D(n131), .ICI(n73), .S(n64), 
        .ICO(n62), .CO(n63) );
  CMPR42X1 U43 ( .A(n81), .B(n74), .C(n79), .D(n72), .ICI(n75), .S(n69), .ICO(
        n67), .CO(n68) );
  CMPR42X1 U44 ( .A(n161), .B(n132), .C(n151), .D(n142), .ICI(n78), .S(n72), 
        .ICO(n70), .CO(n71) );
  CMPR42X1 U47 ( .A(n162), .B(n82), .C(n87), .D(n80), .ICI(n83), .S(n77), 
        .ICO(n75), .CO(n76) );
  CMPR42X1 U48 ( .A(n184), .B(n143), .C(n173), .D(n152), .ICI(n86), .S(n80), 
        .ICO(n78), .CO(n79) );
  ADDHXL U49 ( .A(n133), .B(n117), .CO(n81), .S(n82) );
  CMPR42X1 U50 ( .A(n163), .B(n94), .C(n88), .D(n92), .ICI(n89), .S(n85), 
        .ICO(n83), .CO(n84) );
  CMPR42X1 U51 ( .A(n134), .B(n153), .C(n185), .D(n174), .ICI(n144), .S(n88), 
        .ICO(n86), .CO(n87) );
  CMPR42X1 U52 ( .A(n186), .B(n95), .C(n96), .D(n99), .ICI(n93), .S(n91), 
        .ICO(n89), .CO(n90) );
  ADDFXL U53 ( .A(n154), .B(n164), .CI(n175), .CO(n92), .S(n93) );
  ADDHXL U54 ( .A(n145), .B(n118), .CO(n94), .S(n95) );
  CMPR42X1 U55 ( .A(n176), .B(n155), .C(n104), .D(n101), .ICI(n100), .S(n98), 
        .ICO(n96), .CO(n97) );
  ADDFXL U56 ( .A(n165), .B(n146), .CI(n187), .CO(n99), .S(n100) );
  CMPR42X1 U57 ( .A(n188), .B(n166), .C(n177), .D(n106), .ICI(n105), .S(n103), 
        .ICO(n101), .CO(n102) );
  ADDHXL U58 ( .A(n156), .B(n119), .CO(n104), .S(n105) );
  CMPR42X1 U59 ( .A(n157), .B(n189), .C(n178), .D(n167), .ICI(n111), .S(n108), 
        .ICO(n106), .CO(n107) );
  ADDFXL U60 ( .A(n179), .B(n190), .CI(n112), .CO(n109), .S(n110) );
  ADDHXL U61 ( .A(n168), .B(n120), .CO(n111), .S(n112) );
  ADDFXL U62 ( .A(n191), .B(n169), .CI(n180), .CO(n113), .S(n114) );
  ADDHXL U63 ( .A(n192), .B(n181), .CO(n115), .S(n116) );
  CLKBUFX3 U281 ( .A(n423), .Y(n387) );
  CLKINVX1 U282 ( .A(n65), .Y(n393) );
  CLKINVX1 U283 ( .A(n51), .Y(n395) );
  OR2X1 U284 ( .A(n387), .B(n424), .Y(n123) );
  INVX3 U285 ( .A(a[1]), .Y(n398) );
  CLKINVX1 U286 ( .A(n388), .Y(n400) );
  NAND2X2 U287 ( .A(a[1]), .B(n399), .Y(n407) );
  INVX3 U288 ( .A(a[0]), .Y(n399) );
  NOR2X1 U289 ( .A(n387), .B(n475), .Y(n132) );
  NOR2X1 U290 ( .A(n387), .B(n476), .Y(n131) );
  NOR3X1 U291 ( .A(n387), .B(n378), .C(n388), .Y(n117) );
  NOR2X1 U292 ( .A(n387), .B(n474), .Y(n133) );
  CLKBUFX3 U293 ( .A(n389), .Y(n378) );
  CLKINVX1 U294 ( .A(a[11]), .Y(n389) );
  NOR2X1 U295 ( .A(n387), .B(n477), .Y(n130) );
  NOR2X1 U296 ( .A(n387), .B(n480), .Y(n127) );
  CLKINVX1 U297 ( .A(n39), .Y(n392) );
  NOR2X1 U298 ( .A(n387), .B(n478), .Y(n129) );
  NOR2X1 U299 ( .A(n387), .B(n481), .Y(n126) );
  NOR2X1 U300 ( .A(n387), .B(n425), .Y(n124) );
  NOR2X1 U301 ( .A(n387), .B(n424), .Y(n25) );
  CLKBUFX3 U302 ( .A(n404), .Y(n379) );
  NAND2X1 U303 ( .A(n380), .B(n483), .Y(n404) );
  CLKBUFX3 U304 ( .A(n416), .Y(n381) );
  NAND2X1 U305 ( .A(n382), .B(n484), .Y(n416) );
  INVX3 U306 ( .A(a[3]), .Y(n397) );
  INVX3 U307 ( .A(a[5]), .Y(n396) );
  CLKBUFX3 U308 ( .A(n405), .Y(n380) );
  XNOR2X1 U309 ( .A(a[2]), .B(a[1]), .Y(n405) );
  CLKBUFX3 U310 ( .A(b[0]), .Y(n388) );
  CLKBUFX3 U311 ( .A(n413), .Y(n382) );
  XNOR2X1 U312 ( .A(a[4]), .B(a[3]), .Y(n413) );
  CLKBUFX3 U313 ( .A(n410), .Y(n383) );
  NAND2X1 U314 ( .A(n384), .B(n485), .Y(n410) );
  INVX3 U315 ( .A(a[7]), .Y(n394) );
  CLKBUFX3 U316 ( .A(n422), .Y(n385) );
  NAND2X1 U317 ( .A(n386), .B(n486), .Y(n422) );
  INVX3 U318 ( .A(a[9]), .Y(n391) );
  CLKBUFX3 U319 ( .A(n411), .Y(n384) );
  XNOR2X1 U320 ( .A(a[6]), .B(a[5]), .Y(n411) );
  CLKBUFX3 U321 ( .A(n419), .Y(n386) );
  XNOR2X1 U322 ( .A(a[8]), .B(a[7]), .Y(n419) );
  XNOR2X1 U323 ( .A(a[10]), .B(a[9]), .Y(n423) );
  NOR2X1 U324 ( .A(n387), .B(n479), .Y(n128) );
  NOR2X1 U325 ( .A(n387), .B(n482), .Y(n125) );
  CLKINVX1 U326 ( .A(n31), .Y(n390) );
  CLKINVX1 U327 ( .A(n3), .Y(product[23]) );
  NOR2X1 U328 ( .A(n399), .B(n400), .Y(product[0]) );
  XOR2X1 U329 ( .A(n401), .B(n402), .Y(n74) );
  NAND2BX1 U330 ( .AN(n401), .B(n402), .Y(n73) );
  OA22X1 U331 ( .A0(n403), .A1(n379), .B0(n380), .B1(n406), .Y(n402) );
  OAI2BB1X1 U332 ( .A0N(n399), .A1N(n407), .B0(n408), .Y(n401) );
  OAI22XL U333 ( .A0(n409), .A1(n383), .B0(n384), .B1(n412), .Y(n65) );
  OAI22XL U334 ( .A0(n382), .A1(n414), .B0(n415), .B1(n381), .Y(n51) );
  OAI22XL U335 ( .A0(n384), .A1(n417), .B0(n418), .B1(n383), .Y(n39) );
  OAI22XL U336 ( .A0(n386), .A1(n420), .B0(n421), .B1(n385), .Y(n31) );
  OAI22XL U337 ( .A0(n388), .A1(n407), .B0(n426), .B1(n399), .Y(n194) );
  OAI22XL U338 ( .A0(n426), .A1(n407), .B0(n427), .B1(n399), .Y(n193) );
  XOR2X1 U339 ( .A(b[1]), .B(n398), .Y(n426) );
  OAI22XL U340 ( .A0(n427), .A1(n407), .B0(n428), .B1(n399), .Y(n192) );
  XOR2X1 U341 ( .A(b[2]), .B(n398), .Y(n427) );
  OAI22XL U342 ( .A0(n428), .A1(n407), .B0(n429), .B1(n399), .Y(n191) );
  XOR2X1 U343 ( .A(b[3]), .B(n398), .Y(n428) );
  OAI22XL U344 ( .A0(n429), .A1(n407), .B0(n430), .B1(n399), .Y(n190) );
  XOR2X1 U345 ( .A(b[4]), .B(n398), .Y(n429) );
  OAI22XL U346 ( .A0(n430), .A1(n407), .B0(n431), .B1(n399), .Y(n189) );
  XOR2X1 U347 ( .A(b[5]), .B(n398), .Y(n430) );
  OAI22XL U348 ( .A0(n431), .A1(n407), .B0(n432), .B1(n399), .Y(n188) );
  XOR2X1 U349 ( .A(b[6]), .B(n398), .Y(n431) );
  OAI22XL U350 ( .A0(n432), .A1(n407), .B0(n433), .B1(n399), .Y(n187) );
  XOR2X1 U351 ( .A(b[7]), .B(n398), .Y(n432) );
  OAI22XL U352 ( .A0(n433), .A1(n407), .B0(n434), .B1(n399), .Y(n186) );
  XOR2X1 U353 ( .A(b[8]), .B(n398), .Y(n433) );
  OAI22XL U354 ( .A0(n434), .A1(n407), .B0(n435), .B1(n399), .Y(n185) );
  XOR2X1 U355 ( .A(b[9]), .B(n398), .Y(n434) );
  OAI2BB2XL U356 ( .B0(n435), .B1(n407), .A0N(n408), .A1N(a[0]), .Y(n184) );
  XOR2X1 U357 ( .A(b[11]), .B(a[1]), .Y(n408) );
  XOR2X1 U358 ( .A(b[10]), .B(n398), .Y(n435) );
  NOR2X1 U359 ( .A(n380), .B(n400), .Y(n182) );
  OAI22XL U360 ( .A0(n436), .A1(n379), .B0(n380), .B1(n437), .Y(n181) );
  XOR2X1 U361 ( .A(n397), .B(n388), .Y(n436) );
  OAI22XL U362 ( .A0(n437), .A1(n379), .B0(n380), .B1(n438), .Y(n180) );
  XOR2X1 U363 ( .A(b[1]), .B(n397), .Y(n437) );
  OAI22XL U364 ( .A0(n438), .A1(n379), .B0(n380), .B1(n439), .Y(n179) );
  XOR2X1 U365 ( .A(b[2]), .B(n397), .Y(n438) );
  OAI22XL U366 ( .A0(n439), .A1(n379), .B0(n380), .B1(n440), .Y(n178) );
  XOR2X1 U367 ( .A(b[3]), .B(n397), .Y(n439) );
  OAI22XL U368 ( .A0(n440), .A1(n379), .B0(n380), .B1(n441), .Y(n177) );
  XOR2X1 U369 ( .A(b[4]), .B(n397), .Y(n440) );
  OAI22XL U370 ( .A0(n441), .A1(n379), .B0(n380), .B1(n442), .Y(n176) );
  XOR2X1 U371 ( .A(b[5]), .B(n397), .Y(n441) );
  OAI22XL U372 ( .A0(n442), .A1(n379), .B0(n380), .B1(n443), .Y(n175) );
  XOR2X1 U373 ( .A(b[6]), .B(n397), .Y(n442) );
  OAI22XL U374 ( .A0(n443), .A1(n379), .B0(n380), .B1(n444), .Y(n174) );
  XOR2X1 U375 ( .A(b[7]), .B(n397), .Y(n443) );
  OAI22XL U376 ( .A0(n444), .A1(n379), .B0(n380), .B1(n403), .Y(n173) );
  XOR2X1 U377 ( .A(b[9]), .B(n397), .Y(n403) );
  XOR2X1 U378 ( .A(b[8]), .B(n397), .Y(n444) );
  OAI22XL U379 ( .A0(n406), .A1(n379), .B0(n380), .B1(n445), .Y(n171) );
  XOR2X1 U380 ( .A(b[10]), .B(n397), .Y(n406) );
  AO21X1 U381 ( .A0(n379), .A1(n380), .B0(n445), .Y(n170) );
  XOR2X1 U382 ( .A(b[11]), .B(n397), .Y(n445) );
  NOR2X1 U383 ( .A(n382), .B(n400), .Y(n169) );
  OAI22XL U384 ( .A0(n446), .A1(n381), .B0(n382), .B1(n447), .Y(n168) );
  XOR2X1 U385 ( .A(n396), .B(n388), .Y(n446) );
  OAI22XL U386 ( .A0(n447), .A1(n381), .B0(n382), .B1(n448), .Y(n167) );
  XOR2X1 U387 ( .A(b[1]), .B(n396), .Y(n447) );
  OAI22XL U388 ( .A0(n448), .A1(n381), .B0(n382), .B1(n449), .Y(n166) );
  XOR2X1 U389 ( .A(b[2]), .B(n396), .Y(n448) );
  OAI22XL U390 ( .A0(n449), .A1(n381), .B0(n382), .B1(n450), .Y(n165) );
  XOR2X1 U391 ( .A(b[3]), .B(n396), .Y(n449) );
  OAI22XL U392 ( .A0(n450), .A1(n381), .B0(n382), .B1(n451), .Y(n164) );
  XOR2X1 U393 ( .A(b[4]), .B(n396), .Y(n450) );
  OAI22XL U394 ( .A0(n451), .A1(n381), .B0(n382), .B1(n452), .Y(n163) );
  XOR2X1 U395 ( .A(b[5]), .B(n396), .Y(n451) );
  OAI22XL U396 ( .A0(n452), .A1(n381), .B0(n382), .B1(n453), .Y(n162) );
  XOR2X1 U397 ( .A(b[6]), .B(n396), .Y(n452) );
  OAI22XL U398 ( .A0(n453), .A1(n381), .B0(n382), .B1(n454), .Y(n161) );
  XOR2X1 U399 ( .A(b[7]), .B(n396), .Y(n453) );
  OAI22XL U400 ( .A0(n454), .A1(n381), .B0(n382), .B1(n455), .Y(n160) );
  XOR2X1 U401 ( .A(b[8]), .B(n396), .Y(n454) );
  OAI22XL U402 ( .A0(n455), .A1(n381), .B0(n382), .B1(n415), .Y(n159) );
  XOR2X1 U403 ( .A(b[10]), .B(n396), .Y(n415) );
  XOR2X1 U404 ( .A(b[9]), .B(n396), .Y(n455) );
  AO21X1 U405 ( .A0(n381), .A1(n382), .B0(n414), .Y(n158) );
  XOR2X1 U406 ( .A(b[11]), .B(n396), .Y(n414) );
  NOR2X1 U407 ( .A(n384), .B(n400), .Y(n157) );
  OAI22XL U408 ( .A0(n456), .A1(n383), .B0(n384), .B1(n457), .Y(n156) );
  XOR2X1 U409 ( .A(n394), .B(n388), .Y(n456) );
  OAI22XL U410 ( .A0(n457), .A1(n383), .B0(n384), .B1(n458), .Y(n155) );
  XOR2X1 U411 ( .A(b[1]), .B(n394), .Y(n457) );
  OAI22XL U412 ( .A0(n458), .A1(n383), .B0(n384), .B1(n459), .Y(n154) );
  XOR2X1 U413 ( .A(b[2]), .B(n394), .Y(n458) );
  OAI22XL U414 ( .A0(n459), .A1(n383), .B0(n384), .B1(n460), .Y(n153) );
  XOR2X1 U415 ( .A(b[3]), .B(n394), .Y(n459) );
  OAI22XL U416 ( .A0(n460), .A1(n383), .B0(n384), .B1(n461), .Y(n152) );
  XOR2X1 U417 ( .A(b[4]), .B(n394), .Y(n460) );
  OAI22XL U418 ( .A0(n461), .A1(n383), .B0(n384), .B1(n409), .Y(n151) );
  XOR2X1 U419 ( .A(b[6]), .B(n394), .Y(n409) );
  XOR2X1 U420 ( .A(b[5]), .B(n394), .Y(n461) );
  OAI22XL U421 ( .A0(n412), .A1(n383), .B0(n384), .B1(n462), .Y(n150) );
  XOR2X1 U422 ( .A(b[7]), .B(n394), .Y(n412) );
  OAI22XL U423 ( .A0(n462), .A1(n383), .B0(n384), .B1(n463), .Y(n149) );
  XOR2X1 U424 ( .A(b[8]), .B(n394), .Y(n462) );
  OAI22XL U425 ( .A0(n463), .A1(n383), .B0(n384), .B1(n418), .Y(n148) );
  XOR2X1 U426 ( .A(b[10]), .B(n394), .Y(n418) );
  XOR2X1 U427 ( .A(b[9]), .B(n394), .Y(n463) );
  AO21X1 U428 ( .A0(n383), .A1(n384), .B0(n417), .Y(n147) );
  XOR2X1 U429 ( .A(b[11]), .B(n394), .Y(n417) );
  NOR2X1 U430 ( .A(n386), .B(n400), .Y(n146) );
  OAI22XL U431 ( .A0(n464), .A1(n385), .B0(n386), .B1(n465), .Y(n145) );
  XOR2X1 U432 ( .A(n391), .B(n388), .Y(n464) );
  OAI22XL U433 ( .A0(n465), .A1(n385), .B0(n386), .B1(n466), .Y(n144) );
  XOR2X1 U434 ( .A(b[1]), .B(n391), .Y(n465) );
  OAI22XL U435 ( .A0(n466), .A1(n385), .B0(n386), .B1(n467), .Y(n143) );
  XOR2X1 U436 ( .A(b[2]), .B(n391), .Y(n466) );
  OAI22XL U437 ( .A0(n467), .A1(n385), .B0(n386), .B1(n468), .Y(n142) );
  XOR2X1 U438 ( .A(b[3]), .B(n391), .Y(n467) );
  OAI22XL U439 ( .A0(n468), .A1(n385), .B0(n386), .B1(n469), .Y(n141) );
  XOR2X1 U440 ( .A(b[4]), .B(n391), .Y(n468) );
  OAI22XL U441 ( .A0(n469), .A1(n385), .B0(n386), .B1(n470), .Y(n140) );
  XOR2X1 U442 ( .A(b[5]), .B(n391), .Y(n469) );
  OAI22XL U443 ( .A0(n470), .A1(n385), .B0(n386), .B1(n471), .Y(n139) );
  XOR2X1 U444 ( .A(b[6]), .B(n391), .Y(n470) );
  OAI22XL U445 ( .A0(n471), .A1(n385), .B0(n386), .B1(n472), .Y(n138) );
  XOR2X1 U446 ( .A(b[7]), .B(n391), .Y(n471) );
  OAI22XL U447 ( .A0(n472), .A1(n385), .B0(n386), .B1(n473), .Y(n137) );
  XOR2X1 U448 ( .A(b[8]), .B(n391), .Y(n472) );
  OAI22XL U449 ( .A0(n473), .A1(n385), .B0(n386), .B1(n421), .Y(n136) );
  XOR2X1 U450 ( .A(b[10]), .B(n391), .Y(n421) );
  XOR2X1 U451 ( .A(b[9]), .B(n391), .Y(n473) );
  AO21X1 U452 ( .A0(n385), .A1(n386), .B0(n420), .Y(n135) );
  XOR2X1 U453 ( .A(b[11]), .B(n391), .Y(n420) );
  NOR2X1 U454 ( .A(n387), .B(n400), .Y(n134) );
  XOR2X1 U455 ( .A(b[1]), .B(n378), .Y(n474) );
  XOR2X1 U456 ( .A(b[2]), .B(n378), .Y(n475) );
  XOR2X1 U457 ( .A(b[3]), .B(n378), .Y(n476) );
  XOR2X1 U458 ( .A(b[4]), .B(n378), .Y(n477) );
  XOR2X1 U459 ( .A(b[5]), .B(n378), .Y(n478) );
  XOR2X1 U460 ( .A(b[6]), .B(n378), .Y(n479) );
  XOR2X1 U461 ( .A(b[7]), .B(n378), .Y(n480) );
  XOR2X1 U462 ( .A(b[8]), .B(n378), .Y(n481) );
  XOR2X1 U463 ( .A(b[10]), .B(n378), .Y(n425) );
  XOR2X1 U464 ( .A(b[9]), .B(n378), .Y(n482) );
  XOR2X1 U465 ( .A(b[11]), .B(n378), .Y(n424) );
  OAI21XL U466 ( .A0(n388), .A1(n398), .B0(n407), .Y(n122) );
  OAI32X1 U467 ( .A0(n397), .A1(n388), .A2(n380), .B0(n397), .B1(n379), .Y(
        n121) );
  XOR2X1 U468 ( .A(a[3]), .B(a[2]), .Y(n483) );
  OAI32X1 U469 ( .A0(n396), .A1(n388), .A2(n382), .B0(n396), .B1(n381), .Y(
        n120) );
  XOR2X1 U470 ( .A(a[5]), .B(a[4]), .Y(n484) );
  OAI32X1 U471 ( .A0(n394), .A1(n388), .A2(n384), .B0(n394), .B1(n383), .Y(
        n119) );
  XOR2X1 U472 ( .A(a[7]), .B(a[6]), .Y(n485) );
  OAI32X1 U473 ( .A0(n391), .A1(n388), .A2(n386), .B0(n391), .B1(n385), .Y(
        n118) );
  XOR2X1 U474 ( .A(a[9]), .B(a[8]), .Y(n486) );
endmodule


module geofence_DW_mult_tc_0 ( a, b, product );
  input [11:0] a;
  input [11:0] b;
  output [23:0] product;
  wire   n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17,
         n18, n19, n20, n21, n22, n23, n24, n25, n27, n28, n29, n30, n31, n33,
         n34, n35, n36, n37, n38, n39, n41, n42, n43, n44, n45, n46, n47, n48,
         n49, n50, n51, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63,
         n64, n65, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78,
         n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92,
         n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n106, n107, n108, n109, n110, n111, n112, n113, n114, n115, n116,
         n117, n118, n119, n120, n121, n122, n123, n124, n125, n126, n127,
         n128, n129, n130, n131, n132, n133, n134, n135, n136, n137, n138,
         n139, n140, n141, n142, n143, n144, n145, n146, n147, n148, n149,
         n150, n151, n152, n153, n154, n155, n156, n157, n158, n159, n160,
         n161, n162, n163, n164, n165, n166, n167, n168, n169, n170, n171,
         n173, n174, n175, n176, n177, n178, n179, n180, n181, n182, n184,
         n185, n186, n187, n188, n189, n190, n191, n192, n193, n194, n378,
         n379, n380, n381, n382, n383, n384, n385, n386, n387, n388, n389,
         n390, n391, n392, n393, n394, n395, n396, n397, n398, n399, n400,
         n401, n402, n403, n404, n405, n406, n407, n408, n409, n410, n411,
         n412, n413, n414, n415, n416, n417, n418, n419, n420, n421, n422,
         n423, n424, n425, n426, n427, n428, n429, n430, n431, n432, n433,
         n434, n435, n436, n437, n438, n439, n440, n441, n442, n443, n444,
         n445, n446, n447, n448, n449, n450, n451, n452, n453, n454, n455,
         n456, n457, n458, n459, n460, n461, n462, n463, n464, n465, n466,
         n467, n468, n469, n470, n471, n472, n473, n474, n475, n476, n477,
         n478, n479, n480, n481, n482, n483, n484, n485, n486;

  ADDFXL U4 ( .A(n25), .B(n123), .CI(n4), .CO(n3), .S(product[22]) );
  ADDFXL U5 ( .A(n27), .B(n123), .CI(n5), .CO(n4), .S(product[21]) );
  ADDFXL U6 ( .A(n29), .B(n28), .CI(n6), .CO(n5), .S(product[20]) );
  ADDFXL U7 ( .A(n30), .B(n34), .CI(n7), .CO(n6), .S(product[19]) );
  ADDFXL U8 ( .A(n37), .B(n35), .CI(n8), .CO(n7), .S(product[18]) );
  ADDFXL U9 ( .A(n38), .B(n42), .CI(n9), .CO(n8), .S(product[17]) );
  ADDFXL U10 ( .A(n43), .B(n47), .CI(n10), .CO(n9), .S(product[16]) );
  ADDFXL U11 ( .A(n48), .B(n54), .CI(n11), .CO(n10), .S(product[15]) );
  ADDFXL U12 ( .A(n55), .B(n60), .CI(n12), .CO(n11), .S(product[14]) );
  ADDFXL U13 ( .A(n61), .B(n68), .CI(n13), .CO(n12), .S(product[13]) );
  ADDFXL U14 ( .A(n69), .B(n76), .CI(n14), .CO(n13), .S(product[12]) );
  ADDFXL U15 ( .A(n77), .B(n84), .CI(n15), .CO(n14), .S(product[11]) );
  ADDFXL U16 ( .A(n85), .B(n90), .CI(n16), .CO(n15), .S(product[10]) );
  ADDFXL U17 ( .A(n91), .B(n97), .CI(n17), .CO(n16), .S(product[9]) );
  ADDFXL U18 ( .A(n98), .B(n102), .CI(n18), .CO(n17), .S(product[8]) );
  ADDFXL U19 ( .A(n103), .B(n107), .CI(n19), .CO(n18), .S(product[7]) );
  ADDFXL U20 ( .A(n109), .B(n108), .CI(n20), .CO(n19), .S(product[6]) );
  ADDFXL U21 ( .A(n110), .B(n113), .CI(n21), .CO(n20), .S(product[5]) );
  ADDFXL U22 ( .A(n114), .B(n115), .CI(n22), .CO(n21), .S(product[4]) );
  ADDFXL U23 ( .A(n116), .B(n121), .CI(n23), .CO(n22), .S(product[3]) );
  ADDFXL U24 ( .A(n193), .B(n182), .CI(n24), .CO(n23), .S(product[2]) );
  ADDHXL U25 ( .A(n122), .B(n194), .CO(n24), .S(product[1]) );
  ADDFXL U27 ( .A(n31), .B(n135), .CI(n124), .CO(n27), .S(n28) );
  ADDFXL U28 ( .A(n390), .B(n125), .CI(n33), .CO(n29), .S(n30) );
  CMPR42X1 U30 ( .A(n147), .B(n136), .C(n39), .D(n126), .ICI(n36), .S(n35), 
        .ICO(n33), .CO(n34) );
  CMPR42X1 U31 ( .A(n137), .B(n127), .C(n392), .D(n44), .ICI(n41), .S(n38), 
        .ICO(n36), .CO(n37) );
  CMPR42X1 U33 ( .A(n148), .B(n138), .C(n45), .D(n49), .ICI(n46), .S(n43), 
        .ICO(n41), .CO(n42) );
  ADDFXL U34 ( .A(n51), .B(n158), .CI(n128), .CO(n44), .S(n45) );
  CMPR42X1 U35 ( .A(n395), .B(n56), .C(n57), .D(n50), .ICI(n53), .S(n48), 
        .ICO(n46), .CO(n47) );
  ADDFXL U36 ( .A(n139), .B(n129), .CI(n149), .CO(n49), .S(n50) );
  CMPR42X1 U38 ( .A(n150), .B(n140), .C(n58), .D(n63), .ICI(n59), .S(n55), 
        .ICO(n53), .CO(n54) );
  CMPR42X1 U39 ( .A(n170), .B(n130), .C(n65), .D(n159), .ICI(n62), .S(n58), 
        .ICO(n56), .CO(n57) );
  CMPR42X1 U40 ( .A(n393), .B(n70), .C(n71), .D(n64), .ICI(n67), .S(n61), 
        .ICO(n59), .CO(n60) );
  CMPR42X1 U41 ( .A(n141), .B(n171), .C(n160), .D(n131), .ICI(n73), .S(n64), 
        .ICO(n62), .CO(n63) );
  CMPR42X1 U43 ( .A(n81), .B(n74), .C(n79), .D(n72), .ICI(n75), .S(n69), .ICO(
        n67), .CO(n68) );
  CMPR42X1 U44 ( .A(n161), .B(n132), .C(n151), .D(n142), .ICI(n78), .S(n72), 
        .ICO(n70), .CO(n71) );
  CMPR42X1 U47 ( .A(n162), .B(n82), .C(n87), .D(n80), .ICI(n83), .S(n77), 
        .ICO(n75), .CO(n76) );
  CMPR42X1 U48 ( .A(n184), .B(n143), .C(n173), .D(n152), .ICI(n86), .S(n80), 
        .ICO(n78), .CO(n79) );
  ADDHXL U49 ( .A(n133), .B(n117), .CO(n81), .S(n82) );
  CMPR42X1 U50 ( .A(n163), .B(n94), .C(n88), .D(n92), .ICI(n89), .S(n85), 
        .ICO(n83), .CO(n84) );
  CMPR42X1 U51 ( .A(n134), .B(n153), .C(n185), .D(n174), .ICI(n144), .S(n88), 
        .ICO(n86), .CO(n87) );
  CMPR42X1 U52 ( .A(n186), .B(n95), .C(n96), .D(n99), .ICI(n93), .S(n91), 
        .ICO(n89), .CO(n90) );
  ADDFXL U53 ( .A(n154), .B(n164), .CI(n175), .CO(n92), .S(n93) );
  ADDHXL U54 ( .A(n145), .B(n118), .CO(n94), .S(n95) );
  CMPR42X1 U55 ( .A(n176), .B(n155), .C(n104), .D(n101), .ICI(n100), .S(n98), 
        .ICO(n96), .CO(n97) );
  ADDFXL U56 ( .A(n165), .B(n146), .CI(n187), .CO(n99), .S(n100) );
  CMPR42X1 U57 ( .A(n188), .B(n166), .C(n177), .D(n106), .ICI(n105), .S(n103), 
        .ICO(n101), .CO(n102) );
  ADDHXL U58 ( .A(n156), .B(n119), .CO(n104), .S(n105) );
  CMPR42X1 U59 ( .A(n157), .B(n189), .C(n178), .D(n167), .ICI(n111), .S(n108), 
        .ICO(n106), .CO(n107) );
  ADDFXL U60 ( .A(n179), .B(n190), .CI(n112), .CO(n109), .S(n110) );
  ADDHXL U61 ( .A(n168), .B(n120), .CO(n111), .S(n112) );
  ADDFXL U62 ( .A(n191), .B(n169), .CI(n180), .CO(n113), .S(n114) );
  ADDHXL U63 ( .A(n192), .B(n181), .CO(n115), .S(n116) );
  CLKBUFX3 U281 ( .A(n423), .Y(n387) );
  CLKINVX1 U282 ( .A(n65), .Y(n393) );
  CLKINVX1 U283 ( .A(n51), .Y(n395) );
  OR2X1 U284 ( .A(n387), .B(n424), .Y(n123) );
  INVX3 U285 ( .A(a[1]), .Y(n398) );
  CLKINVX1 U286 ( .A(n388), .Y(n400) );
  NAND2X2 U287 ( .A(a[1]), .B(n399), .Y(n407) );
  INVX3 U288 ( .A(a[0]), .Y(n399) );
  NOR2X1 U289 ( .A(n387), .B(n475), .Y(n132) );
  NOR2X1 U290 ( .A(n387), .B(n476), .Y(n131) );
  NOR3X1 U291 ( .A(n387), .B(n378), .C(n388), .Y(n117) );
  NOR2X1 U292 ( .A(n387), .B(n474), .Y(n133) );
  CLKBUFX3 U293 ( .A(n389), .Y(n378) );
  CLKINVX1 U294 ( .A(a[11]), .Y(n389) );
  NOR2X1 U295 ( .A(n387), .B(n477), .Y(n130) );
  NOR2X1 U296 ( .A(n387), .B(n480), .Y(n127) );
  CLKINVX1 U297 ( .A(n39), .Y(n392) );
  NOR2X1 U298 ( .A(n387), .B(n478), .Y(n129) );
  NOR2X1 U299 ( .A(n387), .B(n481), .Y(n126) );
  NOR2X1 U300 ( .A(n387), .B(n425), .Y(n124) );
  NOR2X1 U301 ( .A(n387), .B(n424), .Y(n25) );
  CLKBUFX3 U302 ( .A(n404), .Y(n379) );
  NAND2X1 U303 ( .A(n380), .B(n483), .Y(n404) );
  CLKBUFX3 U304 ( .A(n416), .Y(n381) );
  NAND2X1 U305 ( .A(n382), .B(n484), .Y(n416) );
  INVX3 U306 ( .A(a[3]), .Y(n397) );
  INVX3 U307 ( .A(a[5]), .Y(n396) );
  CLKBUFX3 U308 ( .A(n405), .Y(n380) );
  XNOR2X1 U309 ( .A(a[2]), .B(a[1]), .Y(n405) );
  CLKBUFX3 U310 ( .A(b[0]), .Y(n388) );
  CLKBUFX3 U311 ( .A(n413), .Y(n382) );
  XNOR2X1 U312 ( .A(a[4]), .B(a[3]), .Y(n413) );
  CLKBUFX3 U313 ( .A(n410), .Y(n383) );
  NAND2X1 U314 ( .A(n384), .B(n485), .Y(n410) );
  INVX3 U315 ( .A(a[7]), .Y(n394) );
  CLKBUFX3 U316 ( .A(n422), .Y(n385) );
  NAND2X1 U317 ( .A(n386), .B(n486), .Y(n422) );
  INVX3 U318 ( .A(a[9]), .Y(n391) );
  CLKBUFX3 U319 ( .A(n411), .Y(n384) );
  XNOR2X1 U320 ( .A(a[6]), .B(a[5]), .Y(n411) );
  CLKBUFX3 U321 ( .A(n419), .Y(n386) );
  XNOR2X1 U322 ( .A(a[8]), .B(a[7]), .Y(n419) );
  XNOR2X1 U323 ( .A(a[10]), .B(a[9]), .Y(n423) );
  NOR2X1 U324 ( .A(n387), .B(n479), .Y(n128) );
  NOR2X1 U325 ( .A(n387), .B(n482), .Y(n125) );
  CLKINVX1 U326 ( .A(n31), .Y(n390) );
  CLKINVX1 U327 ( .A(n3), .Y(product[23]) );
  NOR2X1 U328 ( .A(n399), .B(n400), .Y(product[0]) );
  XOR2X1 U329 ( .A(n401), .B(n402), .Y(n74) );
  NAND2BX1 U330 ( .AN(n401), .B(n402), .Y(n73) );
  OA22X1 U331 ( .A0(n403), .A1(n379), .B0(n380), .B1(n406), .Y(n402) );
  OAI2BB1X1 U332 ( .A0N(n399), .A1N(n407), .B0(n408), .Y(n401) );
  OAI22XL U333 ( .A0(n409), .A1(n383), .B0(n384), .B1(n412), .Y(n65) );
  OAI22XL U334 ( .A0(n382), .A1(n414), .B0(n415), .B1(n381), .Y(n51) );
  OAI22XL U335 ( .A0(n384), .A1(n417), .B0(n418), .B1(n383), .Y(n39) );
  OAI22XL U336 ( .A0(n386), .A1(n420), .B0(n421), .B1(n385), .Y(n31) );
  OAI22XL U337 ( .A0(n388), .A1(n407), .B0(n426), .B1(n399), .Y(n194) );
  OAI22XL U338 ( .A0(n426), .A1(n407), .B0(n427), .B1(n399), .Y(n193) );
  XOR2X1 U339 ( .A(b[1]), .B(n398), .Y(n426) );
  OAI22XL U340 ( .A0(n427), .A1(n407), .B0(n428), .B1(n399), .Y(n192) );
  XOR2X1 U341 ( .A(b[2]), .B(n398), .Y(n427) );
  OAI22XL U342 ( .A0(n428), .A1(n407), .B0(n429), .B1(n399), .Y(n191) );
  XOR2X1 U343 ( .A(b[3]), .B(n398), .Y(n428) );
  OAI22XL U344 ( .A0(n429), .A1(n407), .B0(n430), .B1(n399), .Y(n190) );
  XOR2X1 U345 ( .A(b[4]), .B(n398), .Y(n429) );
  OAI22XL U346 ( .A0(n430), .A1(n407), .B0(n431), .B1(n399), .Y(n189) );
  XOR2X1 U347 ( .A(b[5]), .B(n398), .Y(n430) );
  OAI22XL U348 ( .A0(n431), .A1(n407), .B0(n432), .B1(n399), .Y(n188) );
  XOR2X1 U349 ( .A(b[6]), .B(n398), .Y(n431) );
  OAI22XL U350 ( .A0(n432), .A1(n407), .B0(n433), .B1(n399), .Y(n187) );
  XOR2X1 U351 ( .A(b[7]), .B(n398), .Y(n432) );
  OAI22XL U352 ( .A0(n433), .A1(n407), .B0(n434), .B1(n399), .Y(n186) );
  XOR2X1 U353 ( .A(b[8]), .B(n398), .Y(n433) );
  OAI22XL U354 ( .A0(n434), .A1(n407), .B0(n435), .B1(n399), .Y(n185) );
  XOR2X1 U355 ( .A(b[9]), .B(n398), .Y(n434) );
  OAI2BB2XL U356 ( .B0(n435), .B1(n407), .A0N(n408), .A1N(a[0]), .Y(n184) );
  XOR2X1 U357 ( .A(b[11]), .B(a[1]), .Y(n408) );
  XOR2X1 U358 ( .A(b[10]), .B(n398), .Y(n435) );
  NOR2X1 U359 ( .A(n380), .B(n400), .Y(n182) );
  OAI22XL U360 ( .A0(n436), .A1(n379), .B0(n380), .B1(n437), .Y(n181) );
  XOR2X1 U361 ( .A(n397), .B(n388), .Y(n436) );
  OAI22XL U362 ( .A0(n437), .A1(n379), .B0(n380), .B1(n438), .Y(n180) );
  XOR2X1 U363 ( .A(b[1]), .B(n397), .Y(n437) );
  OAI22XL U364 ( .A0(n438), .A1(n379), .B0(n380), .B1(n439), .Y(n179) );
  XOR2X1 U365 ( .A(b[2]), .B(n397), .Y(n438) );
  OAI22XL U366 ( .A0(n439), .A1(n379), .B0(n380), .B1(n440), .Y(n178) );
  XOR2X1 U367 ( .A(b[3]), .B(n397), .Y(n439) );
  OAI22XL U368 ( .A0(n440), .A1(n379), .B0(n380), .B1(n441), .Y(n177) );
  XOR2X1 U369 ( .A(b[4]), .B(n397), .Y(n440) );
  OAI22XL U370 ( .A0(n441), .A1(n379), .B0(n380), .B1(n442), .Y(n176) );
  XOR2X1 U371 ( .A(b[5]), .B(n397), .Y(n441) );
  OAI22XL U372 ( .A0(n442), .A1(n379), .B0(n380), .B1(n443), .Y(n175) );
  XOR2X1 U373 ( .A(b[6]), .B(n397), .Y(n442) );
  OAI22XL U374 ( .A0(n443), .A1(n379), .B0(n380), .B1(n444), .Y(n174) );
  XOR2X1 U375 ( .A(b[7]), .B(n397), .Y(n443) );
  OAI22XL U376 ( .A0(n444), .A1(n379), .B0(n380), .B1(n403), .Y(n173) );
  XOR2X1 U377 ( .A(b[9]), .B(n397), .Y(n403) );
  XOR2X1 U378 ( .A(b[8]), .B(n397), .Y(n444) );
  OAI22XL U379 ( .A0(n406), .A1(n379), .B0(n380), .B1(n445), .Y(n171) );
  XOR2X1 U380 ( .A(b[10]), .B(n397), .Y(n406) );
  AO21X1 U381 ( .A0(n379), .A1(n380), .B0(n445), .Y(n170) );
  XOR2X1 U382 ( .A(b[11]), .B(n397), .Y(n445) );
  NOR2X1 U383 ( .A(n382), .B(n400), .Y(n169) );
  OAI22XL U384 ( .A0(n446), .A1(n381), .B0(n382), .B1(n447), .Y(n168) );
  XOR2X1 U385 ( .A(n396), .B(n388), .Y(n446) );
  OAI22XL U386 ( .A0(n447), .A1(n381), .B0(n382), .B1(n448), .Y(n167) );
  XOR2X1 U387 ( .A(b[1]), .B(n396), .Y(n447) );
  OAI22XL U388 ( .A0(n448), .A1(n381), .B0(n382), .B1(n449), .Y(n166) );
  XOR2X1 U389 ( .A(b[2]), .B(n396), .Y(n448) );
  OAI22XL U390 ( .A0(n449), .A1(n381), .B0(n382), .B1(n450), .Y(n165) );
  XOR2X1 U391 ( .A(b[3]), .B(n396), .Y(n449) );
  OAI22XL U392 ( .A0(n450), .A1(n381), .B0(n382), .B1(n451), .Y(n164) );
  XOR2X1 U393 ( .A(b[4]), .B(n396), .Y(n450) );
  OAI22XL U394 ( .A0(n451), .A1(n381), .B0(n382), .B1(n452), .Y(n163) );
  XOR2X1 U395 ( .A(b[5]), .B(n396), .Y(n451) );
  OAI22XL U396 ( .A0(n452), .A1(n381), .B0(n382), .B1(n453), .Y(n162) );
  XOR2X1 U397 ( .A(b[6]), .B(n396), .Y(n452) );
  OAI22XL U398 ( .A0(n453), .A1(n381), .B0(n382), .B1(n454), .Y(n161) );
  XOR2X1 U399 ( .A(b[7]), .B(n396), .Y(n453) );
  OAI22XL U400 ( .A0(n454), .A1(n381), .B0(n382), .B1(n455), .Y(n160) );
  XOR2X1 U401 ( .A(b[8]), .B(n396), .Y(n454) );
  OAI22XL U402 ( .A0(n455), .A1(n381), .B0(n382), .B1(n415), .Y(n159) );
  XOR2X1 U403 ( .A(b[10]), .B(n396), .Y(n415) );
  XOR2X1 U404 ( .A(b[9]), .B(n396), .Y(n455) );
  AO21X1 U405 ( .A0(n381), .A1(n382), .B0(n414), .Y(n158) );
  XOR2X1 U406 ( .A(b[11]), .B(n396), .Y(n414) );
  NOR2X1 U407 ( .A(n384), .B(n400), .Y(n157) );
  OAI22XL U408 ( .A0(n456), .A1(n383), .B0(n384), .B1(n457), .Y(n156) );
  XOR2X1 U409 ( .A(n394), .B(n388), .Y(n456) );
  OAI22XL U410 ( .A0(n457), .A1(n383), .B0(n384), .B1(n458), .Y(n155) );
  XOR2X1 U411 ( .A(b[1]), .B(n394), .Y(n457) );
  OAI22XL U412 ( .A0(n458), .A1(n383), .B0(n384), .B1(n459), .Y(n154) );
  XOR2X1 U413 ( .A(b[2]), .B(n394), .Y(n458) );
  OAI22XL U414 ( .A0(n459), .A1(n383), .B0(n384), .B1(n460), .Y(n153) );
  XOR2X1 U415 ( .A(b[3]), .B(n394), .Y(n459) );
  OAI22XL U416 ( .A0(n460), .A1(n383), .B0(n384), .B1(n461), .Y(n152) );
  XOR2X1 U417 ( .A(b[4]), .B(n394), .Y(n460) );
  OAI22XL U418 ( .A0(n461), .A1(n383), .B0(n384), .B1(n409), .Y(n151) );
  XOR2X1 U419 ( .A(b[6]), .B(n394), .Y(n409) );
  XOR2X1 U420 ( .A(b[5]), .B(n394), .Y(n461) );
  OAI22XL U421 ( .A0(n412), .A1(n383), .B0(n384), .B1(n462), .Y(n150) );
  XOR2X1 U422 ( .A(b[7]), .B(n394), .Y(n412) );
  OAI22XL U423 ( .A0(n462), .A1(n383), .B0(n384), .B1(n463), .Y(n149) );
  XOR2X1 U424 ( .A(b[8]), .B(n394), .Y(n462) );
  OAI22XL U425 ( .A0(n463), .A1(n383), .B0(n384), .B1(n418), .Y(n148) );
  XOR2X1 U426 ( .A(b[10]), .B(n394), .Y(n418) );
  XOR2X1 U427 ( .A(b[9]), .B(n394), .Y(n463) );
  AO21X1 U428 ( .A0(n383), .A1(n384), .B0(n417), .Y(n147) );
  XOR2X1 U429 ( .A(b[11]), .B(n394), .Y(n417) );
  NOR2X1 U430 ( .A(n386), .B(n400), .Y(n146) );
  OAI22XL U431 ( .A0(n464), .A1(n385), .B0(n386), .B1(n465), .Y(n145) );
  XOR2X1 U432 ( .A(n391), .B(n388), .Y(n464) );
  OAI22XL U433 ( .A0(n465), .A1(n385), .B0(n386), .B1(n466), .Y(n144) );
  XOR2X1 U434 ( .A(b[1]), .B(n391), .Y(n465) );
  OAI22XL U435 ( .A0(n466), .A1(n385), .B0(n386), .B1(n467), .Y(n143) );
  XOR2X1 U436 ( .A(b[2]), .B(n391), .Y(n466) );
  OAI22XL U437 ( .A0(n467), .A1(n385), .B0(n386), .B1(n468), .Y(n142) );
  XOR2X1 U438 ( .A(b[3]), .B(n391), .Y(n467) );
  OAI22XL U439 ( .A0(n468), .A1(n385), .B0(n386), .B1(n469), .Y(n141) );
  XOR2X1 U440 ( .A(b[4]), .B(n391), .Y(n468) );
  OAI22XL U441 ( .A0(n469), .A1(n385), .B0(n386), .B1(n470), .Y(n140) );
  XOR2X1 U442 ( .A(b[5]), .B(n391), .Y(n469) );
  OAI22XL U443 ( .A0(n470), .A1(n385), .B0(n386), .B1(n471), .Y(n139) );
  XOR2X1 U444 ( .A(b[6]), .B(n391), .Y(n470) );
  OAI22XL U445 ( .A0(n471), .A1(n385), .B0(n386), .B1(n472), .Y(n138) );
  XOR2X1 U446 ( .A(b[7]), .B(n391), .Y(n471) );
  OAI22XL U447 ( .A0(n472), .A1(n385), .B0(n386), .B1(n473), .Y(n137) );
  XOR2X1 U448 ( .A(b[8]), .B(n391), .Y(n472) );
  OAI22XL U449 ( .A0(n473), .A1(n385), .B0(n386), .B1(n421), .Y(n136) );
  XOR2X1 U450 ( .A(b[10]), .B(n391), .Y(n421) );
  XOR2X1 U451 ( .A(b[9]), .B(n391), .Y(n473) );
  AO21X1 U452 ( .A0(n385), .A1(n386), .B0(n420), .Y(n135) );
  XOR2X1 U453 ( .A(b[11]), .B(n391), .Y(n420) );
  NOR2X1 U454 ( .A(n387), .B(n400), .Y(n134) );
  XOR2X1 U455 ( .A(b[1]), .B(n378), .Y(n474) );
  XOR2X1 U456 ( .A(b[2]), .B(n378), .Y(n475) );
  XOR2X1 U457 ( .A(b[3]), .B(n378), .Y(n476) );
  XOR2X1 U458 ( .A(b[4]), .B(n378), .Y(n477) );
  XOR2X1 U459 ( .A(b[5]), .B(n378), .Y(n478) );
  XOR2X1 U460 ( .A(b[6]), .B(n378), .Y(n479) );
  XOR2X1 U461 ( .A(b[7]), .B(n378), .Y(n480) );
  XOR2X1 U462 ( .A(b[8]), .B(n378), .Y(n481) );
  XOR2X1 U463 ( .A(b[10]), .B(n378), .Y(n425) );
  XOR2X1 U464 ( .A(b[9]), .B(n378), .Y(n482) );
  XOR2X1 U465 ( .A(b[11]), .B(n378), .Y(n424) );
  OAI21XL U466 ( .A0(n388), .A1(n398), .B0(n407), .Y(n122) );
  OAI32X1 U467 ( .A0(n397), .A1(n388), .A2(n380), .B0(n397), .B1(n379), .Y(
        n121) );
  XOR2X1 U468 ( .A(a[3]), .B(a[2]), .Y(n483) );
  OAI32X1 U469 ( .A0(n396), .A1(n388), .A2(n382), .B0(n396), .B1(n381), .Y(
        n120) );
  XOR2X1 U470 ( .A(a[5]), .B(a[4]), .Y(n484) );
  OAI32X1 U471 ( .A0(n394), .A1(n388), .A2(n384), .B0(n394), .B1(n383), .Y(
        n119) );
  XOR2X1 U472 ( .A(a[7]), .B(a[6]), .Y(n485) );
  OAI32X1 U473 ( .A0(n391), .A1(n388), .A2(n386), .B0(n391), .B1(n385), .Y(
        n118) );
  XOR2X1 U474 ( .A(a[9]), .B(a[8]), .Y(n486) );
endmodule


module geofence_DW01_sub_0 ( A, B, CI, DIFF, CO );
  input [23:0] A;
  input [23:0] B;
  output [23:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25;
  wire   [24:0] carry;

  ADDFXL U2_1 ( .A(A[1]), .B(n24), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  ADDFXL U2_2 ( .A(A[2]), .B(n23), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2])
         );
  ADDFXL U2_3 ( .A(A[3]), .B(n22), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3])
         );
  ADDFXL U2_19 ( .A(A[19]), .B(n6), .CI(carry[19]), .CO(carry[20]), .S(
        DIFF[19]) );
  ADDFXL U2_20 ( .A(A[20]), .B(n5), .CI(carry[20]), .CO(carry[21]), .S(
        DIFF[20]) );
  ADDFXL U2_22 ( .A(A[22]), .B(n3), .CI(carry[22]), .CO(carry[23]), .S(
        DIFF[22]) );
  XOR3X1 U2_23 ( .A(A[23]), .B(n2), .C(carry[23]), .Y(DIFF[23]) );
  ADDFXL U2_4 ( .A(A[4]), .B(n21), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4])
         );
  ADDFXL U2_5 ( .A(A[5]), .B(n20), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5])
         );
  ADDFXL U2_6 ( .A(A[6]), .B(n19), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6])
         );
  ADDFXL U2_7 ( .A(A[7]), .B(n18), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7])
         );
  ADDFXL U2_8 ( .A(A[8]), .B(n17), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8])
         );
  ADDFXL U2_9 ( .A(A[9]), .B(n16), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  ADDFXL U2_10 ( .A(A[10]), .B(n15), .CI(carry[10]), .CO(carry[11]), .S(
        DIFF[10]) );
  ADDFXL U2_11 ( .A(A[11]), .B(n14), .CI(carry[11]), .CO(carry[12]), .S(
        DIFF[11]) );
  ADDFXL U2_12 ( .A(A[12]), .B(n13), .CI(carry[12]), .CO(carry[13]), .S(
        DIFF[12]) );
  ADDFXL U2_14 ( .A(A[14]), .B(n11), .CI(carry[14]), .CO(carry[15]), .S(
        DIFF[14]) );
  ADDFXL U2_15 ( .A(A[15]), .B(n10), .CI(carry[15]), .CO(carry[16]), .S(
        DIFF[15]) );
  ADDFXL U2_16 ( .A(A[16]), .B(n9), .CI(carry[16]), .CO(carry[17]), .S(
        DIFF[16]) );
  ADDFXL U2_17 ( .A(A[17]), .B(n8), .CI(carry[17]), .CO(carry[18]), .S(
        DIFF[17]) );
  ADDFXL U2_18 ( .A(A[18]), .B(n7), .CI(carry[18]), .CO(carry[19]), .S(
        DIFF[18]) );
  ADDFXL U2_21 ( .A(A[21]), .B(n4), .CI(carry[21]), .CO(carry[22]), .S(
        DIFF[21]) );
  ADDFXL U2_13 ( .A(A[13]), .B(n12), .CI(carry[13]), .CO(carry[14]), .S(
        DIFF[13]) );
  CLKINVX1 U1 ( .A(B[13]), .Y(n12) );
  CLKINVX1 U2 ( .A(B[21]), .Y(n4) );
  CLKINVX1 U3 ( .A(B[18]), .Y(n7) );
  CLKINVX1 U4 ( .A(B[17]), .Y(n8) );
  CLKINVX1 U5 ( .A(B[16]), .Y(n9) );
  CLKINVX1 U6 ( .A(B[15]), .Y(n10) );
  CLKINVX1 U7 ( .A(B[14]), .Y(n11) );
  CLKINVX1 U8 ( .A(B[12]), .Y(n13) );
  CLKINVX1 U9 ( .A(B[11]), .Y(n14) );
  CLKINVX1 U10 ( .A(B[10]), .Y(n15) );
  CLKINVX1 U11 ( .A(B[9]), .Y(n16) );
  CLKINVX1 U12 ( .A(B[8]), .Y(n17) );
  CLKINVX1 U13 ( .A(B[7]), .Y(n18) );
  CLKINVX1 U14 ( .A(B[6]), .Y(n19) );
  CLKINVX1 U15 ( .A(B[5]), .Y(n20) );
  CLKINVX1 U16 ( .A(B[4]), .Y(n21) );
  XNOR2X1 U17 ( .A(n25), .B(A[0]), .Y(DIFF[0]) );
  CLKINVX1 U18 ( .A(B[23]), .Y(n2) );
  CLKINVX1 U19 ( .A(B[22]), .Y(n3) );
  CLKINVX1 U20 ( .A(B[20]), .Y(n5) );
  CLKINVX1 U21 ( .A(B[19]), .Y(n6) );
  CLKINVX1 U22 ( .A(B[3]), .Y(n22) );
  CLKINVX1 U23 ( .A(B[2]), .Y(n23) );
  NAND2X1 U24 ( .A(B[0]), .B(n1), .Y(carry[1]) );
  CLKINVX1 U25 ( .A(B[1]), .Y(n24) );
  CLKINVX1 U26 ( .A(A[0]), .Y(n1) );
  CLKINVX1 U27 ( .A(B[0]), .Y(n25) );
endmodule


module geofence ( clk, reset, X, Y, valid, is_inside );
  input [9:0] X;
  input [9:0] Y;
  input clk, reset;
  output valid, is_inside;
  wire   \idx[1][2] , \idx[1][1] , \idx[1][0] , \idx[2][2] , \idx[2][1] ,
         \idx[2][0] , \idx[3][2] , \idx[3][1] , \idx[3][0] , \idx[4][2] ,
         \idx[4][1] , \idx[4][0] , \idx[5][2] , \idx[5][1] , \idx[5][0] ,
         \obj_x[0][9] , \obj_x[0][8] , \obj_x[0][7] , \obj_x[0][6] ,
         \obj_x[0][5] , \obj_x[0][4] , \obj_x[0][3] , \obj_x[0][2] ,
         \obj_x[0][1] , \obj_x[0][0] , \obj_x[2][9] , \obj_x[2][8] ,
         \obj_x[2][7] , \obj_x[2][6] , \obj_x[2][5] , \obj_x[2][4] ,
         \obj_x[2][3] , \obj_x[2][2] , \obj_x[2][1] , \obj_x[2][0] ,
         \obj_x[3][9] , \obj_x[3][8] , \obj_x[3][7] , \obj_x[3][6] ,
         \obj_x[3][5] , \obj_x[3][4] , \obj_x[3][3] , \obj_x[3][2] ,
         \obj_x[3][1] , \obj_x[3][0] , \obj_x[4][9] , \obj_x[4][8] ,
         \obj_x[4][7] , \obj_x[4][6] , \obj_x[4][5] , \obj_x[4][4] ,
         \obj_x[4][3] , \obj_x[4][2] , \obj_x[4][1] , \obj_x[4][0] ,
         \obj_x[5][9] , \obj_x[5][8] , \obj_x[5][7] , \obj_x[5][6] ,
         \obj_x[5][5] , \obj_x[5][4] , \obj_x[5][3] , \obj_x[5][2] ,
         \obj_x[5][1] , \obj_x[5][0] , \obj_y[0][9] , \obj_y[0][8] ,
         \obj_y[0][7] , \obj_y[0][6] , \obj_y[0][5] , \obj_y[0][4] ,
         \obj_y[0][3] , \obj_y[0][2] , \obj_y[0][1] , \obj_y[0][0] ,
         \obj_y[2][9] , \obj_y[2][8] , \obj_y[2][7] , \obj_y[2][6] ,
         \obj_y[2][5] , \obj_y[2][4] , \obj_y[2][3] , \obj_y[2][2] ,
         \obj_y[2][1] , \obj_y[2][0] , \obj_y[3][9] , \obj_y[3][8] ,
         \obj_y[3][7] , \obj_y[3][6] , \obj_y[3][5] , \obj_y[3][4] ,
         \obj_y[3][3] , \obj_y[3][2] , \obj_y[3][1] , \obj_y[3][0] ,
         \obj_y[4][9] , \obj_y[4][8] , \obj_y[4][7] , \obj_y[4][6] ,
         \obj_y[4][5] , \obj_y[4][4] , \obj_y[4][3] , \obj_y[4][2] ,
         \obj_y[4][1] , \obj_y[4][0] , \obj_y[5][9] , \obj_y[5][8] ,
         \obj_y[5][7] , \obj_y[5][6] , \obj_y[5][5] , \obj_y[5][4] ,
         \obj_y[5][3] , \obj_y[5][2] , \obj_y[5][1] , \obj_y[5][0] , N326,
         N327, N328, N371, N372, N373, N450, N458, N459, N460, N471, N472,
         N473, N543, N558, N560, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n42, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n105,
         n106, n107, n108, n109, n110, n111, n112, n113, n114, n125, n126,
         n127, n128, n129, n130, n131, n132, n133, n134, n187, n188, n189,
         n202, n203, n204, n211, n233, n234, n235, n236, n237, n238, n239,
         n240, n241, n242, n243, n244, n245, n246, n247, n248, n249, n250,
         n251, n252, n253, n254, n255, n256, n257, n258, n259, n260, n261,
         n262, n263, n264, n265, n266, n267, n268, n269, n270, n271, n272,
         n273, n274, n275, n276, n277, n278, n279, n280, n281, n282, n283,
         n284, n285, n286, n287, n288, n289, n290, n291, n292, n293, n294,
         n295, n296, n297, n298, n299, n300, n301, n302, n303, n304, n305,
         n306, n307, n308, n309, n310, n311, n313, n314, n315, n316, n317,
         n318, n319, n320, n321, n322, n323, n324, n325, n326, n328, n329,
         n330, n331, n332, n333, n334, n335, n336, n337, n338, n339, n340,
         n341, n342, n343, n344, n345, n346, n347, n348, n349, n350, n351,
         n352, n353, n354, n355, n356, n357, n358, n359, n360, n361, n362,
         n363, n364, n365, n366, n367, n368, n369, n370, n371, n372, n373,
         n374, n376, n377, n378, n379, n380, n381, n383, n384, n385, n386,
         n387, n388, n389, n390, n391, n392, n393, n394, n395, n396, n397,
         n398, n399, n400, n401, n402, n403, n404, n405, n406, n407, n408,
         n409, n410, n411, n412, n413, n414, n415, n416, n417, n418, n419,
         n420, n421, n422, n423, n424, n425, n426, n427, n428, n429, n430,
         n431, n432, n433, n434, n435, n436, n437, n438, n439, n440, n441,
         n442, n443, n444, n445, n446, n447, n448, n449, n450, n451, n452,
         n453, n454, n455, n456, n457, n458, n459, n460, n461, n462, n463,
         n464, n465, n466, n467, n468, n469, n470, n471, n472, n473, n474,
         n475, n476, n477, n478, n479, n480, n481, n482, n483, n484, n485,
         n486, n487, n488, n489, n490, n491, n492, n493, n494, n495, n496,
         n497, n498, n499, n500, n501, n502, n503, n504, n505, n506, n507,
         n508, n509, n510, n511, n512, n513, n514, n515, n516, n517, n518,
         n519, n520, n521, n522, n523, n524, n525, n526, n527, n528, n529,
         n530, n531, n532, n533, n534, n535, n536, n537, n538, n539, n540,
         n541, n542, n543, n544, n545, n546, n547, n548, n549, n550, n551,
         n552, n553, n554, n555, n556, n557, n558, n559, n560, n561, n562,
         n563, n564, n565, n566, n567, n568, n569, n570, n571, n572, n573,
         n574, n575, n576, n577, n578, n579, n580, n581, n582, n583, n584,
         n585, n586, n587, n588, n589, n590, n591, n592, n593, n594, n595,
         n596, n597, n598, n599, n600, n601, n602, n603, n604, n605, n606,
         n607, n608, n609, n610, \vec2_y[9] , \vec2_y[8] , \vec2_y[7] ,
         \vec2_y[6] , \vec2_y[5] , \vec2_y[4] , \vec2_y[3] , \vec2_y[2] ,
         \vec2_y[1] , \vec2_y[11] , \vec2_y[10] , \vec2_y[0] , \vec2_x[9] ,
         \vec2_x[8] , \vec2_x[7] , \vec2_x[6] , \vec2_x[5] , \vec2_x[4] ,
         \vec2_x[3] , \vec2_x[2] , \vec2_x[1] , \vec2_x[11] , \vec2_x[10] ,
         \vec2_x[0] , \vec1_y[9] , \vec1_y[8] , \vec1_y[7] , \vec1_y[6] ,
         \vec1_y[5] , \vec1_y[4] , \vec1_y[3] , \vec1_y[2] , \vec1_y[1] ,
         \vec1_y[11] , \vec1_y[10] , \vec1_y[0] , \vec1_x[9] , \vec1_x[8] ,
         \vec1_x[7] , \vec1_x[6] , \vec1_x[5] , \vec1_x[4] , \vec1_x[3] ,
         \vec1_x[2] , \vec1_x[1] , \vec1_x[11] , \vec1_x[10] , \vec1_x[0] ,
         N234, N233, N232, N231, N230, N229, N228, N227, N226, N225, N224,
         N223, N222, N221, N220, N219, N218, N217, N216, N215, N214, N213,
         N212, N211, N210, N209, N208, N207, N206, N205, N204, N203, N202,
         N201, N200, N199, N198, N197, N196, N195, N194, N193, N192, N191,
         N190, N189, N188, N187, n710, n711, n714, n715, n716, n717, n718,
         n719, n720, n721, n722, n723, n724, n725, n726, n727, n728, n729,
         n730, n731, n732, n733, n734, n735, n736, n737, n738, n739, n740,
         n741, n742, n743, n744, n745, n746, n747, n748, n749, n750, n751,
         n752, n753, n754, n755, n756, n757, n758, n759, n760, n761, n762,
         n763, n764, n765, n766, n767, n768, n769, n770, n771, n772, n773,
         n774, n775, n776, n777, n778, n779, n780, n781, n782, n783, n784,
         n785, n786, n787, n788, n789, n790, n791, n792, n793, n794, n795,
         n796, n797, n798, n799, n800, n801, n802, n803, n804, n805, n806,
         n807, n808, n809, n810, n811, n812, n813, n814, n815, n816, n817,
         n818, n819, n820, n821, n822, n823, n824, n825, n826, n827, n828,
         n829, n830, n831, n832, n833, n834, n835, n836, n837, n838, n839,
         n840, n841, n842, n843, n844, n845, n846, n847, n848, n849, n850,
         n851, n852, n853, n854, n855, n856, n857, n858, n859, n860, n861,
         n862, n863, n864, n865, n866, n867, n868, n869, n870, n871, n872,
         n873, n874, n875, n876, n877, n878, n879, n880, n881, n882, n883,
         n884, n885, n886, n887, n888, n889, n890, n891, n892, n893, n894,
         n895, n896, n897, n898, n899, n900, n901, n902, n903, n904, n905,
         n906, n907, n908, n909, n910, n911, n912, n913, n914, n915, n916,
         n917, n918, n919, n920, n921, n922, n923, n924, n925, n926, n927,
         n928, n929, n930, n931, n932, n933, n934, n935, n936, n937, n938,
         n939, n940, n941, n942, n943, n944, n945, n946, n947, n948, n949,
         n950, n951, n952, n953, n954, n955, n956, n957, n958, n959, n960,
         n961, n962, n963, n964, n965, n966, n967, n968, n969, n970, n971,
         n972, n973, n974;
  wire   [9:0] ax;
  wire   [9:0] cx;
  wire   [9:0] ay;
  wire   [9:0] cy;
  wire   [9:0] bx;
  wire   [9:0] by;
  wire   [23:0] cross_result;
  wire   [2:0] i;
  wire   [2:0] j;
  wire   [2:0] state;
  wire   [2:0] count;

  geofence_DW01_sub_4 sub_33 ( .A({1'b0, 1'b0, ay}), .B({1'b0, 1'b0, cy}), 
        .CI(1'b0), .DIFF({\vec1_y[11] , \vec1_y[10] , \vec1_y[9] , \vec1_y[8] , 
        \vec1_y[7] , \vec1_y[6] , \vec1_y[5] , \vec1_y[4] , \vec1_y[3] , 
        \vec1_y[2] , \vec1_y[1] , \vec1_y[0] }) );
  geofence_DW01_sub_3 sub_32 ( .A({1'b0, 1'b0, ax}), .B({1'b0, 1'b0, cx}), 
        .CI(1'b0), .DIFF({\vec1_x[11] , \vec1_x[10] , \vec1_x[9] , \vec1_x[8] , 
        \vec1_x[7] , \vec1_x[6] , \vec1_x[5] , \vec1_x[4] , \vec1_x[3] , 
        \vec1_x[2] , \vec1_x[1] , \vec1_x[0] }) );
  geofence_DW01_sub_2 sub_35 ( .A({1'b0, 1'b0, by}), .B({1'b0, 1'b0, cy}), 
        .CI(1'b0), .DIFF({\vec2_y[11] , \vec2_y[10] , \vec2_y[9] , \vec2_y[8] , 
        \vec2_y[7] , \vec2_y[6] , \vec2_y[5] , \vec2_y[4] , \vec2_y[3] , 
        \vec2_y[2] , \vec2_y[1] , \vec2_y[0] }) );
  geofence_DW01_sub_1 sub_34 ( .A({1'b0, 1'b0, bx}), .B({1'b0, 1'b0, cx}), 
        .CI(1'b0), .DIFF({\vec2_x[11] , \vec2_x[10] , \vec2_x[9] , \vec2_x[8] , 
        \vec2_x[7] , \vec2_x[6] , \vec2_x[5] , \vec2_x[4] , \vec2_x[3] , 
        \vec2_x[2] , \vec2_x[1] , \vec2_x[0] }) );
  geofence_DW_mult_tc_1 mult_36 ( .a({\vec1_x[11] , \vec1_x[10] , \vec1_x[9] , 
        \vec1_x[8] , \vec1_x[7] , \vec1_x[6] , \vec1_x[5] , \vec1_x[4] , 
        \vec1_x[3] , \vec1_x[2] , \vec1_x[1] , \vec1_x[0] }), .b({\vec2_y[11] , 
        \vec2_y[10] , \vec2_y[9] , \vec2_y[8] , \vec2_y[7] , \vec2_y[6] , 
        \vec2_y[5] , \vec2_y[4] , \vec2_y[3] , \vec2_y[2] , \vec2_y[1] , 
        \vec2_y[0] }), .product({N210, N209, N208, N207, N206, N205, N204, 
        N203, N202, N201, N200, N199, N198, N197, N196, N195, N194, N193, N192, 
        N191, N190, N189, N188, N187}) );
  geofence_DW_mult_tc_0 mult_36_2 ( .a({\vec1_y[11] , \vec1_y[10] , 
        \vec1_y[9] , \vec1_y[8] , \vec1_y[7] , \vec1_y[6] , \vec1_y[5] , 
        \vec1_y[4] , \vec1_y[3] , \vec1_y[2] , \vec1_y[1] , \vec1_y[0] }), .b(
        {\vec2_x[11] , \vec2_x[10] , \vec2_x[9] , \vec2_x[8] , \vec2_x[7] , 
        \vec2_x[6] , \vec2_x[5] , \vec2_x[4] , \vec2_x[3] , \vec2_x[2] , 
        \vec2_x[1] , \vec2_x[0] }), .product({N234, N233, N232, N231, N230, 
        N229, N228, N227, N226, N225, N224, N223, N222, N221, N220, N219, N218, 
        N217, N216, N215, N214, N213, N212, N211}) );
  geofence_DW01_sub_0 sub_36 ( .A({N210, N209, N208, N207, N206, N205, N204, 
        N203, N202, N201, N200, N199, N198, N197, N196, N195, N194, N193, N192, 
        N191, N190, N189, N188, N187}), .B({N234, N233, N232, N231, N230, N229, 
        N228, N227, N226, N225, N224, N223, N222, N221, N220, N219, N218, N217, 
        N216, N215, N214, N213, N212, N211}), .CI(1'b0), .DIFF({N450, 
        cross_result[22:0]}) );
  DFFX1 sign_ref_reg ( .D(n442), .CK(clk), .QN(n211) );
  DFFQX1 \obj_y_reg[3][9]  ( .D(n560), .CK(clk), .Q(\obj_y[3][9] ) );
  DFFX1 \tg_x_reg[9]  ( .D(n590), .CK(clk), .QN(n22) );
  DFFQX1 \obj_x_reg[3][9]  ( .D(n492), .CK(clk), .Q(\obj_x[3][9] ) );
  DFFX1 \tg_y_reg[9]  ( .D(n600), .CK(clk), .QN(n105) );
  DFFQX1 \obj_y_reg[4][9]  ( .D(n562), .CK(clk), .Q(\obj_y[4][9] ) );
  DFFQX1 \obj_x_reg[4][9]  ( .D(n502), .CK(clk), .Q(\obj_x[4][9] ) );
  DFFQX1 \obj_y_reg[5][9]  ( .D(n572), .CK(clk), .Q(\obj_y[5][9] ) );
  DFFQX1 \obj_x_reg[5][9]  ( .D(n512), .CK(clk), .Q(\obj_x[5][9] ) );
  DFFX1 \tg_x_reg[8]  ( .D(n589), .CK(clk), .QN(n23) );
  DFFQX1 \obj_x_reg[3][8]  ( .D(n493), .CK(clk), .Q(\obj_x[3][8] ) );
  DFFQX1 \obj_x_reg[0][9]  ( .D(n462), .CK(clk), .Q(\obj_x[0][9] ) );
  DFFQX1 \obj_y_reg[0][9]  ( .D(n522), .CK(clk), .Q(\obj_y[0][9] ) );
  DFFX1 \tg_y_reg[8]  ( .D(n599), .CK(clk), .QN(n106) );
  DFFQX1 \obj_y_reg[3][8]  ( .D(n559), .CK(clk), .Q(\obj_y[3][8] ) );
  DFFQX1 \obj_x_reg[2][9]  ( .D(n482), .CK(clk), .Q(\obj_x[2][9] ) );
  DFFX1 \obj_x_reg[1][9]  ( .D(n472), .CK(clk), .QN(n55) );
  DFFQX1 \obj_y_reg[2][9]  ( .D(n542), .CK(clk), .Q(\obj_y[2][9] ) );
  DFFX1 \obj_y_reg[1][9]  ( .D(n532), .CK(clk), .QN(n125) );
  DFFQX1 \obj_x_reg[4][8]  ( .D(n503), .CK(clk), .Q(\obj_x[4][8] ) );
  DFFQX1 \obj_y_reg[4][8]  ( .D(n563), .CK(clk), .Q(\obj_y[4][8] ) );
  DFFQX1 \obj_x_reg[5][8]  ( .D(n513), .CK(clk), .Q(\obj_x[5][8] ) );
  DFFQX1 \obj_y_reg[5][8]  ( .D(n573), .CK(clk), .Q(\obj_y[5][8] ) );
  DFFQX1 \obj_x_reg[0][8]  ( .D(n463), .CK(clk), .Q(\obj_x[0][8] ) );
  DFFQX1 \obj_y_reg[0][8]  ( .D(n523), .CK(clk), .Q(\obj_y[0][8] ) );
  DFFQX1 \obj_x_reg[2][8]  ( .D(n483), .CK(clk), .Q(\obj_x[2][8] ) );
  DFFX1 \obj_x_reg[1][8]  ( .D(n473), .CK(clk), .QN(n56) );
  DFFX1 \tg_x_reg[7]  ( .D(n588), .CK(clk), .QN(n24) );
  DFFQX1 \obj_y_reg[2][8]  ( .D(n543), .CK(clk), .Q(\obj_y[2][8] ) );
  DFFX1 \obj_y_reg[1][8]  ( .D(n533), .CK(clk), .QN(n126) );
  DFFQX1 \obj_x_reg[3][7]  ( .D(n494), .CK(clk), .Q(\obj_x[3][7] ) );
  DFFX1 \tg_y_reg[7]  ( .D(n598), .CK(clk), .QN(n107) );
  DFFQX1 \obj_y_reg[3][7]  ( .D(n558), .CK(clk), .Q(\obj_y[3][7] ) );
  DFFQX1 \obj_x_reg[4][7]  ( .D(n504), .CK(clk), .Q(\obj_x[4][7] ) );
  DFFQX1 \obj_y_reg[4][7]  ( .D(n564), .CK(clk), .Q(\obj_y[4][7] ) );
  DFFQX1 \obj_x_reg[5][7]  ( .D(n514), .CK(clk), .Q(\obj_x[5][7] ) );
  DFFQX1 \obj_y_reg[5][7]  ( .D(n574), .CK(clk), .Q(\obj_y[5][7] ) );
  DFFQX1 \obj_x_reg[3][6]  ( .D(n495), .CK(clk), .Q(\obj_x[3][6] ) );
  DFFQX1 \obj_x_reg[0][7]  ( .D(n464), .CK(clk), .Q(\obj_x[0][7] ) );
  DFFQX1 \obj_y_reg[3][6]  ( .D(n557), .CK(clk), .Q(\obj_y[3][6] ) );
  DFFQX1 \obj_y_reg[0][7]  ( .D(n524), .CK(clk), .Q(\obj_y[0][7] ) );
  DFFX1 \tg_y_reg[6]  ( .D(n597), .CK(clk), .QN(n108) );
  DFFX1 \tg_x_reg[6]  ( .D(n587), .CK(clk), .QN(n25) );
  DFFQX1 \obj_x_reg[2][7]  ( .D(n484), .CK(clk), .Q(\obj_x[2][7] ) );
  DFFX1 \obj_x_reg[1][7]  ( .D(n474), .CK(clk), .QN(n57) );
  DFFQX1 \obj_y_reg[2][7]  ( .D(n544), .CK(clk), .Q(\obj_y[2][7] ) );
  DFFX1 \obj_y_reg[1][7]  ( .D(n534), .CK(clk), .QN(n127) );
  DFFQX1 \obj_x_reg[4][6]  ( .D(n505), .CK(clk), .Q(\obj_x[4][6] ) );
  DFFQX1 \obj_y_reg[4][6]  ( .D(n565), .CK(clk), .Q(\obj_y[4][6] ) );
  DFFQX1 \obj_x_reg[5][6]  ( .D(n515), .CK(clk), .Q(\obj_x[5][6] ) );
  DFFQX1 \obj_y_reg[5][6]  ( .D(n575), .CK(clk), .Q(\obj_y[5][6] ) );
  DFFQX1 \obj_x_reg[0][6]  ( .D(n465), .CK(clk), .Q(\obj_x[0][6] ) );
  DFFQX1 \obj_y_reg[0][6]  ( .D(n525), .CK(clk), .Q(\obj_y[0][6] ) );
  DFFQX1 \obj_x_reg[2][6]  ( .D(n485), .CK(clk), .Q(\obj_x[2][6] ) );
  DFFX1 \obj_x_reg[1][6]  ( .D(n475), .CK(clk), .QN(n58) );
  DFFQX1 \obj_y_reg[2][6]  ( .D(n545), .CK(clk), .Q(\obj_y[2][6] ) );
  DFFX1 \obj_y_reg[1][6]  ( .D(n535), .CK(clk), .QN(n128) );
  DFFX1 \tg_x_reg[5]  ( .D(n586), .CK(clk), .QN(n26) );
  DFFQX1 \obj_x_reg[3][5]  ( .D(n496), .CK(clk), .Q(\obj_x[3][5] ) );
  DFFX1 \tg_y_reg[5]  ( .D(n596), .CK(clk), .QN(n109) );
  DFFQX1 \obj_y_reg[3][5]  ( .D(n556), .CK(clk), .Q(\obj_y[3][5] ) );
  DFFQX1 \obj_x_reg[4][5]  ( .D(n506), .CK(clk), .Q(\obj_x[4][5] ) );
  DFFQX1 \obj_y_reg[4][5]  ( .D(n566), .CK(clk), .Q(\obj_y[4][5] ) );
  DFFQX1 \obj_x_reg[5][5]  ( .D(n516), .CK(clk), .Q(\obj_x[5][5] ) );
  DFFQX1 \obj_y_reg[5][5]  ( .D(n576), .CK(clk), .Q(\obj_y[5][5] ) );
  DFFX1 \tg_x_reg[4]  ( .D(n585), .CK(clk), .QN(n27) );
  DFFQX1 \obj_x_reg[3][4]  ( .D(n497), .CK(clk), .Q(\obj_x[3][4] ) );
  DFFQX1 \obj_x_reg[0][5]  ( .D(n466), .CK(clk), .Q(\obj_x[0][5] ) );
  DFFX1 \tg_y_reg[4]  ( .D(n595), .CK(clk), .QN(n110) );
  DFFQX1 \obj_y_reg[3][4]  ( .D(n561), .CK(clk), .Q(\obj_y[3][4] ) );
  DFFQX1 \obj_y_reg[0][5]  ( .D(n526), .CK(clk), .Q(\obj_y[0][5] ) );
  DFFQX1 \obj_x_reg[2][5]  ( .D(n486), .CK(clk), .Q(\obj_x[2][5] ) );
  DFFX1 \obj_x_reg[1][5]  ( .D(n476), .CK(clk), .QN(n59) );
  DFFQX1 \obj_y_reg[2][5]  ( .D(n546), .CK(clk), .Q(\obj_y[2][5] ) );
  DFFX1 \obj_y_reg[1][5]  ( .D(n536), .CK(clk), .QN(n129) );
  DFFQX1 \obj_x_reg[4][4]  ( .D(n507), .CK(clk), .Q(\obj_x[4][4] ) );
  DFFQX1 \obj_y_reg[4][4]  ( .D(n567), .CK(clk), .Q(\obj_y[4][4] ) );
  DFFQX1 \obj_x_reg[5][4]  ( .D(n517), .CK(clk), .Q(\obj_x[5][4] ) );
  DFFQX1 \obj_y_reg[5][4]  ( .D(n577), .CK(clk), .Q(\obj_y[5][4] ) );
  DFFX1 \tg_x_reg[3]  ( .D(n584), .CK(clk), .QN(n28) );
  DFFQX1 \obj_x_reg[3][3]  ( .D(n498), .CK(clk), .Q(\obj_x[3][3] ) );
  DFFX1 \tg_y_reg[3]  ( .D(n594), .CK(clk), .QN(n111) );
  DFFQX1 \obj_y_reg[3][3]  ( .D(n552), .CK(clk), .Q(\obj_y[3][3] ) );
  DFFQX1 \obj_x_reg[0][4]  ( .D(n467), .CK(clk), .Q(\obj_x[0][4] ) );
  DFFQX1 \obj_y_reg[0][4]  ( .D(n527), .CK(clk), .Q(\obj_y[0][4] ) );
  DFFQX1 \obj_x_reg[2][4]  ( .D(n487), .CK(clk), .Q(\obj_x[2][4] ) );
  DFFX1 \obj_x_reg[1][4]  ( .D(n477), .CK(clk), .QN(n60) );
  DFFQX1 \obj_y_reg[2][4]  ( .D(n547), .CK(clk), .Q(\obj_y[2][4] ) );
  DFFX1 \obj_y_reg[1][4]  ( .D(n537), .CK(clk), .QN(n130) );
  DFFQX1 \obj_x_reg[4][3]  ( .D(n508), .CK(clk), .Q(\obj_x[4][3] ) );
  DFFQX1 \obj_y_reg[4][3]  ( .D(n568), .CK(clk), .Q(\obj_y[4][3] ) );
  DFFQX1 \obj_x_reg[5][3]  ( .D(n518), .CK(clk), .Q(\obj_x[5][3] ) );
  DFFQX1 \obj_y_reg[5][3]  ( .D(n578), .CK(clk), .Q(\obj_y[5][3] ) );
  DFFX1 \tg_x_reg[2]  ( .D(n583), .CK(clk), .QN(n29) );
  DFFQX1 \obj_x_reg[3][2]  ( .D(n499), .CK(clk), .Q(\obj_x[3][2] ) );
  DFFQX1 \obj_x_reg[0][3]  ( .D(n468), .CK(clk), .Q(\obj_x[0][3] ) );
  DFFX1 \tg_y_reg[2]  ( .D(n593), .CK(clk), .QN(n112) );
  DFFQX1 \obj_y_reg[3][2]  ( .D(n553), .CK(clk), .Q(\obj_y[3][2] ) );
  DFFQX1 \obj_y_reg[0][3]  ( .D(n528), .CK(clk), .Q(\obj_y[0][3] ) );
  DFFQX1 \obj_x_reg[2][3]  ( .D(n488), .CK(clk), .Q(\obj_x[2][3] ) );
  DFFX1 \obj_x_reg[1][3]  ( .D(n478), .CK(clk), .QN(n61) );
  DFFQX1 \obj_y_reg[2][3]  ( .D(n548), .CK(clk), .Q(\obj_y[2][3] ) );
  DFFX1 \obj_y_reg[1][3]  ( .D(n538), .CK(clk), .QN(n131) );
  DFFQX1 \obj_x_reg[4][2]  ( .D(n509), .CK(clk), .Q(\obj_x[4][2] ) );
  DFFQX1 \obj_y_reg[4][2]  ( .D(n569), .CK(clk), .Q(\obj_y[4][2] ) );
  DFFQX1 \obj_x_reg[5][2]  ( .D(n519), .CK(clk), .Q(\obj_x[5][2] ) );
  DFFQX1 \obj_y_reg[5][2]  ( .D(n579), .CK(clk), .Q(\obj_y[5][2] ) );
  DFFX1 \tg_x_reg[1]  ( .D(n582), .CK(clk), .QN(n30) );
  DFFQX1 \obj_x_reg[3][1]  ( .D(n500), .CK(clk), .Q(\obj_x[3][1] ) );
  DFFX1 \tg_y_reg[1]  ( .D(n592), .CK(clk), .QN(n113) );
  DFFQX1 \obj_y_reg[3][1]  ( .D(n554), .CK(clk), .Q(\obj_y[3][1] ) );
  DFFQX1 \obj_x_reg[3][0]  ( .D(n501), .CK(clk), .Q(\obj_x[3][0] ) );
  DFFQX1 \obj_y_reg[3][0]  ( .D(n555), .CK(clk), .Q(\obj_y[3][0] ) );
  DFFQX1 \obj_x_reg[0][2]  ( .D(n469), .CK(clk), .Q(\obj_x[0][2] ) );
  DFFQX1 \obj_y_reg[0][2]  ( .D(n529), .CK(clk), .Q(\obj_y[0][2] ) );
  DFFX1 \tg_x_reg[0]  ( .D(n601), .CK(clk), .QN(n31) );
  DFFX1 \tg_y_reg[0]  ( .D(n591), .CK(clk), .QN(n114) );
  DFFQX1 \obj_x_reg[2][2]  ( .D(n489), .CK(clk), .Q(\obj_x[2][2] ) );
  DFFX1 \obj_x_reg[1][2]  ( .D(n479), .CK(clk), .QN(n62) );
  DFFQX1 \obj_y_reg[2][2]  ( .D(n549), .CK(clk), .Q(\obj_y[2][2] ) );
  DFFX1 \obj_y_reg[1][2]  ( .D(n539), .CK(clk), .QN(n132) );
  DFFQX1 \obj_x_reg[4][1]  ( .D(n510), .CK(clk), .Q(\obj_x[4][1] ) );
  DFFQX1 \obj_y_reg[4][1]  ( .D(n570), .CK(clk), .Q(\obj_y[4][1] ) );
  DFFQX1 \obj_x_reg[5][1]  ( .D(n520), .CK(clk), .Q(\obj_x[5][1] ) );
  DFFQX1 \obj_y_reg[5][1]  ( .D(n580), .CK(clk), .Q(\obj_y[5][1] ) );
  DFFQX1 \obj_x_reg[4][0]  ( .D(n511), .CK(clk), .Q(\obj_x[4][0] ) );
  DFFQX1 \obj_y_reg[4][0]  ( .D(n571), .CK(clk), .Q(\obj_y[4][0] ) );
  DFFQX1 \obj_x_reg[5][0]  ( .D(n521), .CK(clk), .Q(\obj_x[5][0] ) );
  DFFQX1 \obj_y_reg[5][0]  ( .D(n581), .CK(clk), .Q(\obj_y[5][0] ) );
  DFFQX1 \obj_x_reg[0][1]  ( .D(n470), .CK(clk), .Q(\obj_x[0][1] ) );
  DFFQX1 \obj_y_reg[0][1]  ( .D(n530), .CK(clk), .Q(\obj_y[0][1] ) );
  DFFQX1 \obj_x_reg[2][1]  ( .D(n490), .CK(clk), .Q(\obj_x[2][1] ) );
  DFFQX1 \obj_y_reg[2][1]  ( .D(n550), .CK(clk), .Q(\obj_y[2][1] ) );
  DFFX1 \obj_x_reg[1][1]  ( .D(n480), .CK(clk), .QN(n63) );
  DFFX1 \obj_y_reg[1][1]  ( .D(n540), .CK(clk), .QN(n133) );
  DFFQX1 \obj_x_reg[0][0]  ( .D(n471), .CK(clk), .Q(\obj_x[0][0] ) );
  DFFQX1 \obj_y_reg[0][0]  ( .D(n531), .CK(clk), .Q(\obj_y[0][0] ) );
  DFFQX1 \obj_x_reg[2][0]  ( .D(n491), .CK(clk), .Q(\obj_x[2][0] ) );
  DFFX1 \obj_x_reg[1][0]  ( .D(n481), .CK(clk), .QN(n64) );
  DFFQX1 \obj_y_reg[2][0]  ( .D(n551), .CK(clk), .Q(\obj_y[2][0] ) );
  DFFX1 \obj_y_reg[1][0]  ( .D(n541), .CK(clk), .QN(n134) );
  DFFSX1 \idx_reg[4][2]  ( .D(n452), .CK(clk), .SN(n750), .Q(\idx[4][2] ) );
  DFFRX1 \idx_reg[4][1]  ( .D(n453), .CK(clk), .RN(n749), .Q(\idx[4][1] ) );
  DFFRX1 \idx_reg[2][2]  ( .D(n446), .CK(clk), .RN(n749), .Q(\idx[2][2] ) );
  DFFSX1 \idx_reg[2][1]  ( .D(n447), .CK(clk), .SN(n750), .Q(\idx[2][1] ) );
  DFFSX1 \idx_reg[5][2]  ( .D(n455), .CK(clk), .SN(n750), .Q(\idx[5][2] ) );
  DFFRX1 \idx_reg[5][1]  ( .D(n456), .CK(clk), .RN(n749), .Q(\idx[5][1] ) );
  DFFRX1 \idx_reg[1][2]  ( .D(n443), .CK(clk), .RN(n749), .Q(\idx[1][2] ) );
  DFFRX1 \idx_reg[3][2]  ( .D(n449), .CK(clk), .RN(n749), .Q(\idx[3][2] ) );
  DFFRX1 \idx_reg[1][1]  ( .D(n444), .CK(clk), .RN(n749), .Q(\idx[1][1] ) );
  DFFSX1 \idx_reg[3][1]  ( .D(n450), .CK(clk), .SN(n750), .Q(\idx[3][1] ) );
  DFFRX1 \idx_reg[4][0]  ( .D(n454), .CK(clk), .RN(n749), .Q(\idx[4][0] ) );
  DFFRX1 \idx_reg[2][0]  ( .D(n448), .CK(clk), .RN(n749), .Q(\idx[2][0] ) );
  DFFSX1 \idx_reg[5][0]  ( .D(n457), .CK(clk), .SN(n750), .Q(\idx[5][0] ) );
  DFFX1 \i_reg[0]  ( .D(n610), .CK(clk), .Q(N543), .QN(N326) );
  DFFSX1 \idx_reg[1][0]  ( .D(n445), .CK(clk), .SN(n750), .Q(\idx[1][0] ) );
  DFFSX1 \idx_reg[3][0]  ( .D(n451), .CK(clk), .SN(n750), .Q(\idx[3][0] ) );
  DFFQX1 \j_reg[0]  ( .D(n459), .CK(clk), .Q(j[0]) );
  DFFRX1 \count_reg[1]  ( .D(n602), .CK(clk), .RN(n750), .Q(count[1]), .QN(
        n188) );
  DFFRX1 \count_reg[2]  ( .D(n604), .CK(clk), .RN(n749), .Q(count[2]), .QN(
        n187) );
  DFFRX1 \count_reg[0]  ( .D(n603), .CK(clk), .RN(n749), .Q(count[0]), .QN(
        n189) );
  DFFSX1 \state_reg[0]  ( .D(n606), .CK(clk), .SN(n750), .Q(state[0]), .QN(
        n204) );
  DFFRX1 \state_reg[1]  ( .D(n605), .CK(clk), .RN(n750), .Q(state[1]), .QN(
        n203) );
  DFFRX1 \state_reg[2]  ( .D(n607), .CK(clk), .RN(n749), .Q(state[2]), .QN(
        n202) );
  DFFX1 \j_reg[2]  ( .D(n608), .CK(clk), .Q(j[2]), .QN(n42) );
  DFFQX1 \i_reg[2]  ( .D(n609), .CK(clk), .Q(i[2]) );
  DFFSX1 is_inside_reg ( .D(n441), .CK(clk), .SN(n750), .QN(n711) );
  DFFRX1 valid_reg ( .D(n460), .CK(clk), .RN(n819), .QN(n710) );
  DFFX2 \j_reg[1]  ( .D(n458), .CK(clk), .Q(j[1]), .QN(n800) );
  DFFX2 \i_reg[1]  ( .D(n461), .CK(clk), .Q(i[1]), .QN(n857) );
  CLKINVX1 U714 ( .A(N458), .Y(n973) );
  XNOR2X1 U715 ( .A(n857), .B(n748), .Y(N327) );
  INVX12 U716 ( .A(n710), .Y(valid) );
  INVX12 U717 ( .A(n711), .Y(is_inside) );
  OAI211X4 U718 ( .A0(n771), .A1(n762), .B0(n761), .C0(n760), .Y(N373) );
  OAI211X4 U719 ( .A0(n798), .A1(n789), .B0(n788), .C0(n787), .Y(N460) );
  OR2X1 U720 ( .A(n849), .B(n850), .Y(n714) );
  CLKBUFX3 U721 ( .A(n374), .Y(n717) );
  CLKINVX1 U722 ( .A(n316), .Y(n860) );
  CLKINVX1 U723 ( .A(N471), .Y(n851) );
  CLKBUFX3 U724 ( .A(n379), .Y(n726) );
  CLKBUFX3 U725 ( .A(n294), .Y(n746) );
  CLKBUFX3 U726 ( .A(n819), .Y(n749) );
  NAND2X1 U727 ( .A(n277), .B(n747), .Y(n283) );
  OAI21XL U728 ( .A0(n310), .A1(n303), .B0(n736), .Y(n309) );
  OAI22XL U729 ( .A0(n717), .A1(n407), .B0(n885), .B1(n852), .Y(ay[0]) );
  CLKINVX1 U730 ( .A(i[2]), .Y(n858) );
  OAI22XL U731 ( .A0(n717), .A1(n437), .B0(n875), .B1(n852), .Y(ax[0]) );
  OAI22XL U732 ( .A0(n752), .A1(n885), .B0(n755), .B1(n114), .Y(cy[0]) );
  OAI22XL U733 ( .A0(n752), .A1(n884), .B0(n755), .B1(n113), .Y(cy[1]) );
  OAI22XL U734 ( .A0(n752), .A1(n883), .B0(n755), .B1(n112), .Y(cy[2]) );
  OAI22XL U735 ( .A0(n752), .A1(n875), .B0(n756), .B1(n31), .Y(cx[0]) );
  OAI22XL U736 ( .A0(n752), .A1(n874), .B0(n756), .B1(n30), .Y(cx[1]) );
  OAI22XL U737 ( .A0(n752), .A1(n873), .B0(n756), .B1(n29), .Y(cx[2]) );
  OAI22XL U738 ( .A0(n752), .A1(n882), .B0(n758), .B1(n111), .Y(cy[3]) );
  OAI22XL U739 ( .A0(n752), .A1(n881), .B0(n755), .B1(n110), .Y(cy[4]) );
  OAI22XL U740 ( .A0(n752), .A1(n872), .B0(n756), .B1(n28), .Y(cx[3]) );
  OAI22XL U741 ( .A0(n314), .A1(n871), .B0(n756), .B1(n27), .Y(cx[4]) );
  OAI22XL U742 ( .A0(n752), .A1(n880), .B0(n756), .B1(n109), .Y(cy[5]) );
  OAI22XL U743 ( .A0(n752), .A1(n879), .B0(n758), .B1(n108), .Y(cy[6]) );
  OAI22XL U744 ( .A0(n752), .A1(n870), .B0(n757), .B1(n26), .Y(cx[5]) );
  OAI22XL U745 ( .A0(n752), .A1(n869), .B0(n757), .B1(n25), .Y(cx[6]) );
  OAI22XL U746 ( .A0(n752), .A1(n878), .B0(n756), .B1(n107), .Y(cy[7]) );
  OAI22XL U747 ( .A0(n752), .A1(n877), .B0(n757), .B1(n106), .Y(cy[8]) );
  OAI22XL U748 ( .A0(n752), .A1(n868), .B0(n757), .B1(n24), .Y(cx[7]) );
  OAI22XL U749 ( .A0(n752), .A1(n867), .B0(n755), .B1(n23), .Y(cx[8]) );
  OAI22XL U750 ( .A0(n752), .A1(n876), .B0(n758), .B1(n105), .Y(cy[9]) );
  NOR2BX1 U751 ( .AN(n301), .B(n189), .Y(n300) );
  OAI22XL U752 ( .A0(n752), .A1(n866), .B0(n755), .B1(n22), .Y(cx[9]) );
  CLKBUFX3 U753 ( .A(n305), .Y(n737) );
  CLKINVX1 U754 ( .A(Y[0]), .Y(n845) );
  CLKINVX1 U755 ( .A(Y[1]), .Y(n844) );
  CLKINVX1 U756 ( .A(Y[2]), .Y(n843) );
  CLKINVX1 U757 ( .A(Y[3]), .Y(n842) );
  CLKINVX1 U758 ( .A(Y[4]), .Y(n841) );
  CLKINVX1 U759 ( .A(Y[5]), .Y(n840) );
  CLKINVX1 U760 ( .A(Y[6]), .Y(n839) );
  CLKINVX1 U761 ( .A(Y[7]), .Y(n838) );
  CLKINVX1 U762 ( .A(Y[8]), .Y(n837) );
  CLKINVX1 U763 ( .A(Y[9]), .Y(n836) );
  CLKINVX1 U764 ( .A(X[0]), .Y(n835) );
  CLKINVX1 U765 ( .A(X[1]), .Y(n834) );
  CLKINVX1 U766 ( .A(X[2]), .Y(n833) );
  CLKINVX1 U767 ( .A(X[3]), .Y(n832) );
  CLKINVX1 U768 ( .A(X[4]), .Y(n831) );
  CLKINVX1 U769 ( .A(X[5]), .Y(n830) );
  CLKINVX1 U770 ( .A(X[6]), .Y(n829) );
  CLKINVX1 U771 ( .A(X[7]), .Y(n828) );
  CLKINVX1 U772 ( .A(X[8]), .Y(n827) );
  CLKINVX1 U773 ( .A(X[9]), .Y(n826) );
  CLKBUFX3 U774 ( .A(n246), .Y(n735) );
  NOR3X1 U775 ( .A(n748), .B(i[1]), .C(n858), .Y(n276) );
  NAND3X1 U776 ( .A(n974), .B(n42), .C(j[1]), .Y(n252) );
  NAND3X1 U777 ( .A(state[0]), .B(n203), .C(state[2]), .Y(n238) );
  NAND3X1 U778 ( .A(n800), .B(n42), .C(n747), .Y(n242) );
  NAND3X1 U779 ( .A(n747), .B(n42), .C(j[1]), .Y(n261) );
  CLKINVX1 U780 ( .A(n715), .Y(n723) );
  CLKINVX1 U781 ( .A(n715), .Y(n722) );
  CLKINVX1 U782 ( .A(n715), .Y(n724) );
  INVX3 U783 ( .A(n714), .Y(n718) );
  INVX3 U784 ( .A(n714), .Y(n719) );
  INVX3 U785 ( .A(n754), .Y(n752) );
  INVX3 U786 ( .A(n717), .Y(n852) );
  INVX3 U787 ( .A(n742), .Y(n821) );
  INVX3 U788 ( .A(n744), .Y(n822) );
  INVX3 U789 ( .A(n299), .Y(n816) );
  CLKINVX1 U790 ( .A(n739), .Y(n741) );
  INVX3 U791 ( .A(n733), .Y(n734) );
  CLKINVX1 U792 ( .A(n732), .Y(n733) );
  OAI33X1 U793 ( .A0(n971), .A1(n751), .A2(n973), .B0(n848), .B1(n368), .B2(
        n846), .Y(n732) );
  CLKINVX1 U794 ( .A(N327), .Y(n773) );
  NAND2X1 U795 ( .A(N450), .B(n859), .Y(n248) );
  CLKINVX1 U796 ( .A(n259), .Y(n813) );
  CLKINVX1 U797 ( .A(n281), .Y(n811) );
  AND3X2 U798 ( .A(n850), .B(n849), .C(n851), .Y(n715) );
  AND2X2 U799 ( .A(n371), .B(n372), .Y(n729) );
  AND2X2 U800 ( .A(n371), .B(n372), .Y(n329) );
  CLKBUFX3 U801 ( .A(n759), .Y(n753) );
  CLKINVX1 U802 ( .A(n368), .Y(n856) );
  CLKBUFX3 U803 ( .A(n759), .Y(n754) );
  NOR2X1 U804 ( .A(n236), .B(n753), .Y(n374) );
  CLKBUFX3 U805 ( .A(n758), .Y(n755) );
  CLKBUFX3 U806 ( .A(n757), .Y(n756) );
  INVX3 U807 ( .A(n746), .Y(n823) );
  CLKBUFX3 U808 ( .A(n298), .Y(n742) );
  CLKBUFX3 U809 ( .A(n296), .Y(n744) );
  CLKINVX1 U810 ( .A(n319), .Y(n818) );
  OAI21X1 U811 ( .A0(n860), .A1(n313), .B0(n749), .Y(n289) );
  INVX3 U812 ( .A(n745), .Y(n825) );
  INVX3 U813 ( .A(n743), .Y(n824) );
  NAND2X1 U814 ( .A(n860), .B(n749), .Y(n299) );
  CLKINVX1 U815 ( .A(n739), .Y(n740) );
  CLKINVX1 U816 ( .A(n738), .Y(n739) );
  NAND2X1 U817 ( .A(n860), .B(n749), .Y(n738) );
  INVX3 U818 ( .A(n283), .Y(n966) );
  CLKINVX1 U819 ( .A(n272), .Y(n967) );
  CLKINVX1 U820 ( .A(n309), .Y(n862) );
  INVX1 U821 ( .A(N460), .Y(n971) );
  OAI211X1 U822 ( .A0(n727), .A1(n914), .B0(n364), .C0(n365), .Y(bx[1]) );
  OAI211X1 U823 ( .A0(n727), .A1(n918), .B0(n344), .C0(n345), .Y(by[1]) );
  INVXL U824 ( .A(N373), .Y(n846) );
  CLKBUFX3 U825 ( .A(n326), .Y(n731) );
  OAI33XL U826 ( .A0(n973), .A1(N460), .A2(n751), .B0(n848), .B1(N373), .B2(
        n368), .Y(n326) );
  OA21X2 U827 ( .A0(n247), .A1(n248), .B0(n736), .Y(n239) );
  AOI31X1 U828 ( .A0(n857), .A1(n858), .A2(n748), .B0(n970), .Y(n247) );
  NOR2X1 U829 ( .A(n735), .B(n239), .Y(n240) );
  OA21X2 U830 ( .A0(n266), .A1(n248), .B0(n736), .Y(n258) );
  NOR2X1 U831 ( .A(n267), .B(n968), .Y(n266) );
  NOR2X1 U832 ( .A(n735), .B(n258), .Y(n259) );
  OA21X2 U833 ( .A0(n256), .A1(n248), .B0(n736), .Y(n249) );
  AOI2BB1X1 U834 ( .A0N(n257), .A1N(n748), .B0(n969), .Y(n256) );
  NOR2X1 U835 ( .A(n735), .B(n249), .Y(n250) );
  OA21X2 U836 ( .A0(n275), .A1(n248), .B0(n736), .Y(n270) );
  NOR2X1 U837 ( .A(n967), .B(n276), .Y(n275) );
  NOR2X1 U838 ( .A(n735), .B(n270), .Y(n271) );
  OA21X2 U839 ( .A0(n286), .A1(n248), .B0(n736), .Y(n280) );
  NOR2X1 U840 ( .A(n966), .B(n855), .Y(n286) );
  NOR2X1 U841 ( .A(n735), .B(n280), .Y(n281) );
  NOR2X1 U842 ( .A(n257), .B(n854), .Y(n267) );
  CLKBUFX3 U843 ( .A(n325), .Y(n730) );
  AO21X1 U844 ( .A0(n369), .A1(n751), .B0(n370), .Y(n325) );
  NOR4XL U845 ( .A(N460), .B(N459), .C(N458), .D(n752), .Y(n370) );
  OAI31XL U846 ( .A0(N371), .A1(N373), .A2(N372), .B0(n292), .Y(n369) );
  INVX3 U847 ( .A(N473), .Y(n849) );
  CLKBUFX3 U848 ( .A(n381), .Y(n721) );
  NAND2X1 U849 ( .A(N472), .B(n849), .Y(n381) );
  OAI22XL U850 ( .A0(n717), .A1(n404), .B0(n884), .B1(n852), .Y(ay[1]) );
  OAI22XL U851 ( .A0(n717), .A1(n434), .B0(n874), .B1(n852), .Y(ax[1]) );
  BUFX4 U852 ( .A(n328), .Y(n728) );
  OAI33XL U853 ( .A0(n972), .A1(N460), .A2(n314), .B0(n847), .B1(N373), .B2(
        n368), .Y(n328) );
  CLKINVX1 U854 ( .A(n748), .Y(n854) );
  CLKBUFX3 U855 ( .A(n378), .Y(n725) );
  NAND2X1 U856 ( .A(N471), .B(n849), .Y(n378) );
  BUFX4 U857 ( .A(n322), .Y(n727) );
  AOI33XL U858 ( .A0(N460), .A1(n756), .A2(N459), .B0(N372), .B1(n856), .B2(
        N373), .Y(n322) );
  NAND4XL U859 ( .A(N373), .B(n856), .C(n848), .D(n847), .Y(n372) );
  INVX1 U860 ( .A(N459), .Y(n972) );
  CLKINVX1 U861 ( .A(N371), .Y(n848) );
  CLKBUFX3 U862 ( .A(n380), .Y(n720) );
  NAND3X1 U863 ( .A(n851), .B(n850), .C(N473), .Y(n380) );
  NAND4XL U864 ( .A(N460), .B(n754), .C(n973), .D(n972), .Y(n371) );
  CLKINVX1 U865 ( .A(N372), .Y(n847) );
  OAI22XL U866 ( .A0(n943), .A1(n725), .B0(n963), .B1(n726), .Y(n403) );
  OAI22XL U867 ( .A0(n933), .A1(n725), .B0(n953), .B1(n726), .Y(n433) );
  OAI22XL U868 ( .A0(n942), .A1(n725), .B0(n962), .B1(n726), .Y(n400) );
  OAI22XL U869 ( .A0(n932), .A1(n725), .B0(n952), .B1(n726), .Y(n430) );
  INVX3 U870 ( .A(N472), .Y(n850) );
  NAND2XL U871 ( .A(N473), .B(N471), .Y(n379) );
  OAI22XL U872 ( .A0(n941), .A1(n725), .B0(n961), .B1(n726), .Y(n397) );
  OAI22XL U873 ( .A0(n931), .A1(n725), .B0(n951), .B1(n726), .Y(n427) );
  OAI22XL U874 ( .A0(n940), .A1(n725), .B0(n960), .B1(n726), .Y(n394) );
  OAI22XL U875 ( .A0(n930), .A1(n725), .B0(n950), .B1(n726), .Y(n424) );
  NAND2X1 U876 ( .A(n292), .B(n752), .Y(n368) );
  CLKINVX1 U877 ( .A(n751), .Y(n759) );
  OAI22XL U878 ( .A0(n939), .A1(n725), .B0(n959), .B1(n726), .Y(n391) );
  OAI22XL U879 ( .A0(n929), .A1(n725), .B0(n949), .B1(n726), .Y(n421) );
  OAI22XL U880 ( .A0(n938), .A1(n725), .B0(n958), .B1(n726), .Y(n388) );
  OAI22XL U881 ( .A0(n928), .A1(n725), .B0(n948), .B1(n726), .Y(n418) );
  CLKINVX1 U882 ( .A(n751), .Y(n757) );
  NAND3X1 U883 ( .A(n857), .B(n858), .C(n854), .Y(n236) );
  OAI22XL U884 ( .A0(n937), .A1(n725), .B0(n957), .B1(n726), .Y(n385) );
  OAI22XL U885 ( .A0(n927), .A1(n725), .B0(n947), .B1(n726), .Y(n415) );
  CLKINVX1 U886 ( .A(n751), .Y(n758) );
  OAI22XL U887 ( .A0(n926), .A1(n725), .B0(n946), .B1(n726), .Y(n412) );
  OAI22XL U888 ( .A0(n936), .A1(n725), .B0(n956), .B1(n726), .Y(n377) );
  OAI22XL U889 ( .A0(n746), .A1(n845), .B0(n823), .B1(n885), .Y(n531) );
  OAI22XL U890 ( .A0(n746), .A1(n844), .B0(n823), .B1(n884), .Y(n530) );
  OAI22XL U891 ( .A0(n746), .A1(n843), .B0(n823), .B1(n883), .Y(n529) );
  OAI22XL U892 ( .A0(n294), .A1(n842), .B0(n823), .B1(n882), .Y(n528) );
  OAI22XL U893 ( .A0(n294), .A1(n841), .B0(n823), .B1(n881), .Y(n527) );
  OAI22XL U894 ( .A0(n294), .A1(n840), .B0(n823), .B1(n880), .Y(n526) );
  OAI22XL U895 ( .A0(n294), .A1(n839), .B0(n823), .B1(n879), .Y(n525) );
  OAI22XL U896 ( .A0(n294), .A1(n838), .B0(n823), .B1(n878), .Y(n524) );
  OAI22XL U897 ( .A0(n294), .A1(n837), .B0(n823), .B1(n877), .Y(n523) );
  OAI22XL U898 ( .A0(n746), .A1(n836), .B0(n823), .B1(n876), .Y(n522) );
  OAI22XL U899 ( .A0(n746), .A1(n835), .B0(n823), .B1(n875), .Y(n471) );
  OAI22XL U900 ( .A0(n746), .A1(n834), .B0(n823), .B1(n874), .Y(n470) );
  OAI22XL U901 ( .A0(n746), .A1(n833), .B0(n823), .B1(n873), .Y(n469) );
  OAI22XL U902 ( .A0(n746), .A1(n832), .B0(n823), .B1(n872), .Y(n468) );
  OAI22XL U903 ( .A0(n746), .A1(n831), .B0(n823), .B1(n871), .Y(n467) );
  OAI22XL U904 ( .A0(n746), .A1(n830), .B0(n823), .B1(n870), .Y(n466) );
  OAI22XL U905 ( .A0(n746), .A1(n829), .B0(n823), .B1(n869), .Y(n465) );
  OAI22XL U906 ( .A0(n746), .A1(n828), .B0(n823), .B1(n868), .Y(n464) );
  OAI22XL U907 ( .A0(n746), .A1(n827), .B0(n823), .B1(n867), .Y(n463) );
  OAI22XL U908 ( .A0(n746), .A1(n826), .B0(n823), .B1(n866), .Y(n462) );
  OAI22XL U909 ( .A0(n742), .A1(n845), .B0(n821), .B1(n945), .Y(n571) );
  OAI22XL U910 ( .A0(n742), .A1(n844), .B0(n821), .B1(n944), .Y(n570) );
  OAI22XL U911 ( .A0(n298), .A1(n843), .B0(n821), .B1(n943), .Y(n569) );
  OAI22XL U912 ( .A0(n298), .A1(n842), .B0(n821), .B1(n942), .Y(n568) );
  OAI22XL U913 ( .A0(n298), .A1(n841), .B0(n821), .B1(n941), .Y(n567) );
  OAI22XL U914 ( .A0(n298), .A1(n840), .B0(n821), .B1(n940), .Y(n566) );
  OAI22XL U915 ( .A0(n298), .A1(n839), .B0(n821), .B1(n939), .Y(n565) );
  OAI22XL U916 ( .A0(n298), .A1(n838), .B0(n821), .B1(n938), .Y(n564) );
  OAI22XL U917 ( .A0(n742), .A1(n837), .B0(n821), .B1(n937), .Y(n563) );
  OAI22XL U918 ( .A0(n742), .A1(n836), .B0(n821), .B1(n936), .Y(n562) );
  OAI22XL U919 ( .A0(n744), .A1(n845), .B0(n822), .B1(n905), .Y(n551) );
  OAI22XL U920 ( .A0(n744), .A1(n844), .B0(n822), .B1(n904), .Y(n550) );
  OAI22XL U921 ( .A0(n296), .A1(n843), .B0(n822), .B1(n903), .Y(n549) );
  OAI22XL U922 ( .A0(n296), .A1(n842), .B0(n822), .B1(n902), .Y(n548) );
  OAI22XL U923 ( .A0(n296), .A1(n841), .B0(n822), .B1(n901), .Y(n547) );
  OAI22XL U924 ( .A0(n296), .A1(n840), .B0(n822), .B1(n900), .Y(n546) );
  OAI22XL U925 ( .A0(n296), .A1(n839), .B0(n822), .B1(n899), .Y(n545) );
  OAI22XL U926 ( .A0(n296), .A1(n838), .B0(n822), .B1(n898), .Y(n544) );
  OAI22XL U927 ( .A0(n744), .A1(n837), .B0(n822), .B1(n897), .Y(n543) );
  OAI22XL U928 ( .A0(n744), .A1(n836), .B0(n822), .B1(n896), .Y(n542) );
  NAND2X1 U929 ( .A(n864), .B(n300), .Y(n298) );
  NAND2X1 U930 ( .A(n865), .B(n300), .Y(n296) );
  OAI22XL U931 ( .A0(n835), .A1(n742), .B0(n821), .B1(n935), .Y(n511) );
  OAI22XL U932 ( .A0(n834), .A1(n742), .B0(n821), .B1(n934), .Y(n510) );
  OAI22XL U933 ( .A0(n833), .A1(n742), .B0(n821), .B1(n933), .Y(n509) );
  OAI22XL U934 ( .A0(n832), .A1(n742), .B0(n821), .B1(n932), .Y(n508) );
  OAI22XL U935 ( .A0(n831), .A1(n742), .B0(n821), .B1(n931), .Y(n507) );
  OAI22XL U936 ( .A0(n830), .A1(n742), .B0(n821), .B1(n930), .Y(n506) );
  OAI22XL U937 ( .A0(n829), .A1(n742), .B0(n821), .B1(n929), .Y(n505) );
  OAI22XL U938 ( .A0(n828), .A1(n742), .B0(n821), .B1(n928), .Y(n504) );
  OAI22XL U939 ( .A0(n827), .A1(n742), .B0(n821), .B1(n927), .Y(n503) );
  OAI22XL U940 ( .A0(n826), .A1(n742), .B0(n821), .B1(n926), .Y(n502) );
  OAI22XL U941 ( .A0(n835), .A1(n744), .B0(n822), .B1(n895), .Y(n491) );
  OAI22XL U942 ( .A0(n834), .A1(n744), .B0(n822), .B1(n894), .Y(n490) );
  OAI22XL U943 ( .A0(n833), .A1(n744), .B0(n822), .B1(n893), .Y(n489) );
  OAI22XL U944 ( .A0(n832), .A1(n744), .B0(n822), .B1(n892), .Y(n488) );
  OAI22XL U945 ( .A0(n831), .A1(n744), .B0(n822), .B1(n891), .Y(n487) );
  OAI22XL U946 ( .A0(n830), .A1(n744), .B0(n822), .B1(n890), .Y(n486) );
  OAI22XL U947 ( .A0(n829), .A1(n744), .B0(n822), .B1(n889), .Y(n485) );
  OAI22XL U948 ( .A0(n828), .A1(n744), .B0(n822), .B1(n888), .Y(n484) );
  OAI22XL U949 ( .A0(n827), .A1(n744), .B0(n822), .B1(n887), .Y(n483) );
  OAI22XL U950 ( .A0(n826), .A1(n744), .B0(n822), .B1(n886), .Y(n482) );
  OAI222XL U951 ( .A0(n854), .A1(n818), .B0(n748), .B1(n293), .C0(n303), .C1(
        n319), .Y(n610) );
  OAI21X1 U952 ( .A0(n320), .A1(n863), .B0(n818), .Y(n293) );
  NOR2X1 U953 ( .A(n276), .B(n735), .Y(n320) );
  NAND2X1 U954 ( .A(n321), .B(n749), .Y(n319) );
  OAI221XL U955 ( .A0(n735), .A1(n283), .B0(n855), .B1(n238), .C0(n316), .Y(
        n321) );
  OAI22XL U956 ( .A0(n818), .A1(n858), .B0(n853), .B1(n293), .Y(n609) );
  CLKINVX1 U957 ( .A(N328), .Y(n853) );
  OAI22XL U958 ( .A0(n818), .A1(n857), .B0(n773), .B1(n293), .Y(n461) );
  AOI2BB1X1 U959 ( .A0N(n747), .A1N(n735), .B0(n289), .Y(n287) );
  OAI32X1 U960 ( .A0(n289), .A1(n291), .A2(n735), .B0(n817), .B1(n974), .Y(
        n459) );
  AOI2BB1X1 U961 ( .A0N(n283), .A1N(n854), .B0(n974), .Y(n291) );
  CLKINVX1 U962 ( .A(n289), .Y(n817) );
  CLKBUFX3 U963 ( .A(n295), .Y(n745) );
  INVX3 U964 ( .A(n737), .Y(n820) );
  OAI22XL U965 ( .A0(n743), .A1(n841), .B0(n824), .B1(n925), .Y(n561) );
  OAI22XL U966 ( .A0(n743), .A1(n836), .B0(n824), .B1(n924), .Y(n560) );
  OAI22XL U967 ( .A0(n743), .A1(n837), .B0(n824), .B1(n923), .Y(n559) );
  OAI22XL U968 ( .A0(n297), .A1(n838), .B0(n824), .B1(n922), .Y(n558) );
  OAI22XL U969 ( .A0(n297), .A1(n839), .B0(n824), .B1(n921), .Y(n557) );
  OAI22XL U970 ( .A0(n297), .A1(n840), .B0(n824), .B1(n920), .Y(n556) );
  OAI22XL U971 ( .A0(n297), .A1(n845), .B0(n824), .B1(n919), .Y(n555) );
  OAI22XL U972 ( .A0(n297), .A1(n844), .B0(n824), .B1(n918), .Y(n554) );
  OAI22XL U973 ( .A0(n297), .A1(n843), .B0(n824), .B1(n917), .Y(n553) );
  OAI22XL U974 ( .A0(n743), .A1(n842), .B0(n824), .B1(n916), .Y(n552) );
  CLKBUFX3 U975 ( .A(n297), .Y(n743) );
  OAI22XL U976 ( .A0(n835), .A1(n743), .B0(n824), .B1(n915), .Y(n501) );
  OAI22XL U977 ( .A0(n834), .A1(n743), .B0(n824), .B1(n914), .Y(n500) );
  OAI22XL U978 ( .A0(n833), .A1(n743), .B0(n824), .B1(n913), .Y(n499) );
  OAI22XL U979 ( .A0(n832), .A1(n743), .B0(n824), .B1(n912), .Y(n498) );
  OAI22XL U980 ( .A0(n831), .A1(n743), .B0(n824), .B1(n911), .Y(n497) );
  OAI22XL U981 ( .A0(n830), .A1(n743), .B0(n824), .B1(n910), .Y(n496) );
  OAI22XL U982 ( .A0(n829), .A1(n743), .B0(n824), .B1(n909), .Y(n495) );
  OAI22XL U983 ( .A0(n828), .A1(n743), .B0(n824), .B1(n908), .Y(n494) );
  OAI22XL U984 ( .A0(n827), .A1(n743), .B0(n824), .B1(n907), .Y(n493) );
  OAI22XL U985 ( .A0(n826), .A1(n743), .B0(n824), .B1(n906), .Y(n492) );
  OAI22XL U986 ( .A0(n738), .A1(n845), .B0(n816), .B1(n965), .Y(n581) );
  OAI22XL U987 ( .A0(n741), .A1(n844), .B0(n816), .B1(n964), .Y(n580) );
  OAI22XL U988 ( .A0(n741), .A1(n843), .B0(n816), .B1(n963), .Y(n579) );
  OAI22XL U989 ( .A0(n740), .A1(n842), .B0(n816), .B1(n962), .Y(n578) );
  OAI22XL U990 ( .A0(n740), .A1(n841), .B0(n816), .B1(n961), .Y(n577) );
  OAI22XL U991 ( .A0(n738), .A1(n840), .B0(n816), .B1(n960), .Y(n576) );
  OAI22XL U992 ( .A0(n741), .A1(n839), .B0(n816), .B1(n959), .Y(n575) );
  OAI22XL U993 ( .A0(n741), .A1(n838), .B0(n816), .B1(n958), .Y(n574) );
  OAI22XL U994 ( .A0(n740), .A1(n837), .B0(n816), .B1(n957), .Y(n573) );
  OAI22XL U995 ( .A0(n299), .A1(n836), .B0(n816), .B1(n956), .Y(n572) );
  OAI22XL U996 ( .A0(n835), .A1(n740), .B0(n816), .B1(n955), .Y(n521) );
  OAI22XL U997 ( .A0(n834), .A1(n738), .B0(n816), .B1(n954), .Y(n520) );
  OAI22XL U998 ( .A0(n833), .A1(n299), .B0(n816), .B1(n953), .Y(n519) );
  OAI22XL U999 ( .A0(n832), .A1(n741), .B0(n816), .B1(n952), .Y(n518) );
  OAI22XL U1000 ( .A0(n831), .A1(n740), .B0(n816), .B1(n951), .Y(n517) );
  OAI22XL U1001 ( .A0(n830), .A1(n740), .B0(n816), .B1(n950), .Y(n516) );
  OAI22XL U1002 ( .A0(n829), .A1(n738), .B0(n816), .B1(n949), .Y(n515) );
  OAI22XL U1003 ( .A0(n828), .A1(n741), .B0(n816), .B1(n948), .Y(n514) );
  OAI22XL U1004 ( .A0(n827), .A1(n741), .B0(n816), .B1(n947), .Y(n513) );
  OAI22XL U1005 ( .A0(n826), .A1(n740), .B0(n816), .B1(n946), .Y(n512) );
  CLKINVX1 U1006 ( .A(n303), .Y(n861) );
  NAND2X1 U1007 ( .A(n861), .B(n310), .Y(n316) );
  CLKINVX1 U1008 ( .A(n735), .Y(n859) );
  AOI21X1 U1009 ( .A0(n966), .A1(n276), .B0(n735), .Y(n313) );
  CLKINVX1 U1010 ( .A(n292), .Y(n855) );
  NAND2X1 U1011 ( .A(n277), .B(n974), .Y(n272) );
  CLKINVX1 U1012 ( .A(n747), .Y(n974) );
  CLKINVX1 U1013 ( .A(n252), .Y(n969) );
  CLKINVX1 U1014 ( .A(n242), .Y(n970) );
  CLKINVX1 U1015 ( .A(n261), .Y(n968) );
  NAND3X1 U1016 ( .A(n238), .B(n316), .C(n735), .Y(n311) );
  CLKINVX1 U1017 ( .A(n238), .Y(n863) );
  CLKINVX1 U1018 ( .A(n302), .Y(n865) );
  CLKINVX1 U1019 ( .A(n304), .Y(n864) );
  CLKBUFX3 U1020 ( .A(n819), .Y(n750) );
  OAI211X1 U1021 ( .A0(n727), .A1(n915), .B0(n366), .C0(n367), .Y(bx[0]) );
  AOI2BB2X1 U1022 ( .B0(\obj_x[2][0] ), .B1(n728), .A0N(n729), .A1N(n64), .Y(
        n366) );
  AOI222XL U1023 ( .A0(\obj_x[0][0] ), .A1(n730), .B0(\obj_x[4][0] ), .B1(n731), .C0(\obj_x[5][0] ), .C1(n734), .Y(n367) );
  OAI211X1 U1024 ( .A0(n727), .A1(n912), .B0(n360), .C0(n361), .Y(bx[3]) );
  AOI2BB2X1 U1025 ( .B0(\obj_x[2][3] ), .B1(n728), .A0N(n329), .A1N(n61), .Y(
        n360) );
  OAI2BB1XL U1026 ( .A0N(is_inside), .A1N(n233), .B0(n736), .Y(n441) );
  OAI211X1 U1027 ( .A0(N560), .A1(n235), .B0(n236), .C0(n863), .Y(n233) );
  XNOR2X1 U1028 ( .A(n211), .B(N558), .Y(n235) );
  OAI211X1 U1029 ( .A0(n727), .A1(n913), .B0(n362), .C0(n363), .Y(bx[2]) );
  AOI2BB2X1 U1030 ( .B0(\obj_x[2][2] ), .B1(n728), .A0N(n729), .A1N(n62), .Y(
        n362) );
  OAI211X1 U1031 ( .A0(n727), .A1(n919), .B0(n346), .C0(n347), .Y(by[0]) );
  AOI2BB2X1 U1032 ( .B0(\obj_y[2][0] ), .B1(n728), .A0N(n729), .A1N(n134), .Y(
        n346) );
  AOI222XL U1033 ( .A0(\obj_y[0][0] ), .A1(n730), .B0(\obj_y[4][0] ), .B1(n731), .C0(\obj_y[5][0] ), .C1(n734), .Y(n347) );
  OAI211X1 U1034 ( .A0(n727), .A1(n916), .B0(n340), .C0(n341), .Y(by[3]) );
  AOI2BB2X1 U1035 ( .B0(\obj_y[2][3] ), .B1(n728), .A0N(n329), .A1N(n131), .Y(
        n340) );
  OAI211X1 U1036 ( .A0(n727), .A1(n917), .B0(n342), .C0(n343), .Y(by[2]) );
  AOI2BB2X1 U1037 ( .B0(\obj_y[2][2] ), .B1(n728), .A0N(n729), .A1N(n132), .Y(
        n342) );
  CLKBUFX3 U1038 ( .A(j[0]), .Y(n747) );
  OAI211X1 U1039 ( .A0(n727), .A1(n911), .B0(n358), .C0(n359), .Y(bx[4]) );
  AOI2BB2X1 U1040 ( .B0(\obj_x[2][4] ), .B1(n728), .A0N(n729), .A1N(n60), .Y(
        n358) );
  OAI211X1 U1041 ( .A0(n727), .A1(n925), .B0(n338), .C0(n339), .Y(by[4]) );
  AOI2BB2X1 U1042 ( .B0(\obj_y[2][4] ), .B1(n728), .A0N(n729), .A1N(n130), .Y(
        n338) );
  AOI222XL U1043 ( .A0(\obj_x[0][1] ), .A1(n730), .B0(\obj_x[4][1] ), .B1(n731), .C0(\obj_x[5][1] ), .C1(n734), .Y(n365) );
  AOI222XL U1044 ( .A0(\obj_y[0][1] ), .A1(n730), .B0(\obj_y[4][1] ), .B1(n731), .C0(\obj_y[5][1] ), .C1(n734), .Y(n345) );
  OAI211X1 U1045 ( .A0(n244), .A1(n815), .B0(n736), .C0(n245), .Y(n445) );
  AOI2BB2XL U1046 ( .B0(N460), .B1(n242), .A0N(n242), .A1N(n849), .Y(n244) );
  NAND2X1 U1047 ( .A(\idx[1][0] ), .B(n239), .Y(n245) );
  CLKINVX1 U1048 ( .A(n240), .Y(n815) );
  OAI211X1 U1049 ( .A0(n264), .A1(n813), .B0(n736), .C0(n265), .Y(n451) );
  AOI2BB2XL U1050 ( .B0(N460), .B1(n261), .A0N(n849), .A1N(n261), .Y(n264) );
  NAND2X1 U1051 ( .A(\idx[3][0] ), .B(n258), .Y(n265) );
  OAI211X1 U1052 ( .A0(n253), .A1(n814), .B0(n736), .C0(n254), .Y(n447) );
  AOI2BB2XL U1053 ( .B0(N459), .B1(n252), .A0N(n850), .A1N(n252), .Y(n253) );
  NAND2X1 U1054 ( .A(\idx[2][1] ), .B(n249), .Y(n254) );
  CLKINVX1 U1055 ( .A(n250), .Y(n814) );
  OAI211X1 U1056 ( .A0(n268), .A1(n812), .B0(n736), .C0(n269), .Y(n452) );
  AOI2BB2X1 U1057 ( .B0(N458), .B1(n272), .A0N(n272), .A1N(n851), .Y(n268) );
  NAND2X1 U1058 ( .A(\idx[4][2] ), .B(n270), .Y(n269) );
  CLKINVX1 U1059 ( .A(n271), .Y(n812) );
  OAI211X1 U1060 ( .A0(n262), .A1(n813), .B0(n736), .C0(n263), .Y(n450) );
  AOI2BB2XL U1061 ( .B0(N459), .B1(n261), .A0N(n850), .A1N(n261), .Y(n262) );
  NAND2X1 U1062 ( .A(\idx[3][1] ), .B(n258), .Y(n263) );
  OAI211X1 U1063 ( .A0(n284), .A1(n811), .B0(n736), .C0(n285), .Y(n457) );
  AOI2BB2XL U1064 ( .B0(n966), .B1(N473), .A0N(n966), .A1N(n971), .Y(n284) );
  NAND2X1 U1065 ( .A(\idx[5][0] ), .B(n280), .Y(n285) );
  OAI211X1 U1066 ( .A0(n278), .A1(n811), .B0(n736), .C0(n279), .Y(n455) );
  AOI2BB2XL U1067 ( .B0(n966), .B1(N471), .A0N(n966), .A1N(n973), .Y(n278) );
  NAND2X1 U1068 ( .A(\idx[5][2] ), .B(n280), .Y(n279) );
  NAND2X1 U1069 ( .A(i[1]), .B(n858), .Y(n257) );
  NAND2BX1 U1070 ( .AN(n267), .B(n440), .Y(N328) );
  OAI21XL U1071 ( .A0(n854), .A1(n857), .B0(i[2]), .Y(n440) );
  OAI211X1 U1072 ( .A0(n727), .A1(n910), .B0(n356), .C0(n357), .Y(bx[5]) );
  AOI2BB2X1 U1073 ( .B0(\obj_x[2][5] ), .B1(n728), .A0N(n329), .A1N(n59), .Y(
        n356) );
  OAI211X1 U1074 ( .A0(n727), .A1(n920), .B0(n336), .C0(n337), .Y(by[5]) );
  AOI2BB2X1 U1075 ( .B0(\obj_y[2][5] ), .B1(n728), .A0N(n329), .A1N(n129), .Y(
        n336) );
  AOI222XL U1076 ( .A0(\obj_x[0][2] ), .A1(n730), .B0(\obj_x[4][2] ), .B1(n731), .C0(\obj_x[5][2] ), .C1(n734), .Y(n363) );
  AOI222XL U1077 ( .A0(\obj_y[0][2] ), .A1(n730), .B0(\obj_y[4][2] ), .B1(n731), .C0(\obj_y[5][2] ), .C1(n734), .Y(n343) );
  AO22X1 U1078 ( .A0(\idx[2][0] ), .A1(n249), .B0(n250), .B1(n255), .Y(n448)
         );
  OAI22XL U1079 ( .A0(n849), .A1(n252), .B0(n969), .B1(n971), .Y(n255) );
  AO22X1 U1080 ( .A0(\idx[4][0] ), .A1(n270), .B0(n271), .B1(n274), .Y(n454)
         );
  OAI22XL U1081 ( .A0(n849), .A1(n272), .B0(n967), .B1(n971), .Y(n274) );
  AO22X1 U1082 ( .A0(\idx[1][1] ), .A1(n239), .B0(n240), .B1(n243), .Y(n444)
         );
  OAI22XL U1083 ( .A0(n242), .A1(n850), .B0(n970), .B1(n972), .Y(n243) );
  AO22X1 U1084 ( .A0(\idx[4][1] ), .A1(n270), .B0(n271), .B1(n273), .Y(n453)
         );
  OAI22XL U1085 ( .A0(n850), .A1(n272), .B0(n967), .B1(n972), .Y(n273) );
  AO22X1 U1086 ( .A0(\idx[1][2] ), .A1(n239), .B0(n240), .B1(n241), .Y(n443)
         );
  OAI22XL U1087 ( .A0(n242), .A1(n851), .B0(n970), .B1(n973), .Y(n241) );
  AO22X1 U1088 ( .A0(\idx[2][2] ), .A1(n249), .B0(n250), .B1(n251), .Y(n446)
         );
  OAI22XL U1089 ( .A0(n851), .A1(n252), .B0(n969), .B1(n973), .Y(n251) );
  OAI2BB2XL U1090 ( .B0(n237), .B1(n211), .A0N(N558), .A1N(n237), .Y(n442) );
  NOR3X1 U1091 ( .A(n238), .B(reset), .C(n236), .Y(n237) );
  AO22X1 U1092 ( .A0(\idx[5][1] ), .A1(n280), .B0(n281), .B1(n282), .Y(n456)
         );
  OAI22XL U1093 ( .A0(n850), .A1(n283), .B0(n966), .B1(n972), .Y(n282) );
  AO22X1 U1094 ( .A0(\idx[3][2] ), .A1(n258), .B0(n259), .B1(n260), .Y(n449)
         );
  OAI22XL U1095 ( .A0(n851), .A1(n261), .B0(n968), .B1(n973), .Y(n260) );
  CLKBUFX3 U1096 ( .A(N543), .Y(n748) );
  AOI211X1 U1097 ( .A0(n718), .A1(\obj_y[3][0] ), .B0(n408), .C0(n409), .Y(
        n407) );
  OAI22XL U1098 ( .A0(n945), .A1(n725), .B0(n965), .B1(n726), .Y(n409) );
  OAI222XL U1099 ( .A0(n134), .A1(n720), .B0(n905), .B1(n721), .C0(n885), .C1(
        n723), .Y(n408) );
  OAI22XL U1100 ( .A0(n717), .A1(n398), .B0(n882), .B1(n852), .Y(ay[3]) );
  AOI211X1 U1101 ( .A0(n719), .A1(\obj_y[3][3] ), .B0(n399), .C0(n400), .Y(
        n398) );
  OAI22XL U1102 ( .A0(n717), .A1(n401), .B0(n883), .B1(n852), .Y(ay[2]) );
  AOI211X1 U1103 ( .A0(n718), .A1(\obj_y[3][2] ), .B0(n402), .C0(n403), .Y(
        n401) );
  AOI211X1 U1104 ( .A0(n718), .A1(\obj_x[3][0] ), .B0(n438), .C0(n439), .Y(
        n437) );
  OAI22XL U1105 ( .A0(n935), .A1(n725), .B0(n955), .B1(n726), .Y(n439) );
  OAI222XL U1106 ( .A0(n64), .A1(n720), .B0(n895), .B1(n721), .C0(n875), .C1(
        n722), .Y(n438) );
  OAI22XL U1107 ( .A0(n717), .A1(n428), .B0(n872), .B1(n852), .Y(ax[3]) );
  AOI211X1 U1108 ( .A0(n719), .A1(\obj_x[3][3] ), .B0(n429), .C0(n430), .Y(
        n428) );
  OAI22XL U1109 ( .A0(n717), .A1(n431), .B0(n873), .B1(n852), .Y(ax[2]) );
  AOI211X1 U1110 ( .A0(n718), .A1(\obj_x[3][2] ), .B0(n432), .C0(n433), .Y(
        n431) );
  AOI211X1 U1111 ( .A0(n719), .A1(\obj_y[3][1] ), .B0(n405), .C0(n406), .Y(
        n404) );
  OAI22XL U1112 ( .A0(n944), .A1(n725), .B0(n964), .B1(n726), .Y(n406) );
  OAI222XL U1113 ( .A0(n133), .A1(n720), .B0(n904), .B1(n721), .C0(n884), .C1(
        n724), .Y(n405) );
  AOI211X1 U1114 ( .A0(n719), .A1(\obj_x[3][1] ), .B0(n435), .C0(n436), .Y(
        n434) );
  OAI22XL U1115 ( .A0(n934), .A1(n725), .B0(n954), .B1(n726), .Y(n436) );
  OAI222XL U1116 ( .A0(n63), .A1(n720), .B0(n894), .B1(n721), .C0(n874), .C1(
        n723), .Y(n435) );
  OAI22XL U1117 ( .A0(n717), .A1(n392), .B0(n880), .B1(n852), .Y(ay[5]) );
  AOI211X1 U1118 ( .A0(n719), .A1(\obj_y[3][5] ), .B0(n393), .C0(n394), .Y(
        n392) );
  OAI22XL U1119 ( .A0(n717), .A1(n395), .B0(n881), .B1(n852), .Y(ay[4]) );
  AOI211X1 U1120 ( .A0(n718), .A1(\obj_y[3][4] ), .B0(n396), .C0(n397), .Y(
        n395) );
  OAI22XL U1121 ( .A0(n717), .A1(n422), .B0(n870), .B1(n852), .Y(ax[5]) );
  AOI211X1 U1122 ( .A0(n719), .A1(\obj_x[3][5] ), .B0(n423), .C0(n424), .Y(
        n422) );
  OAI22XL U1123 ( .A0(n717), .A1(n425), .B0(n871), .B1(n852), .Y(ax[4]) );
  AOI211X1 U1124 ( .A0(n718), .A1(\obj_x[3][4] ), .B0(n426), .C0(n427), .Y(
        n425) );
  AOI2BB2X1 U1125 ( .B0(\obj_x[2][1] ), .B1(n728), .A0N(n329), .A1N(n63), .Y(
        n364) );
  AOI2BB2X1 U1126 ( .B0(\obj_y[2][1] ), .B1(n728), .A0N(n329), .A1N(n133), .Y(
        n344) );
  AOI222XL U1127 ( .A0(\obj_x[0][3] ), .A1(n730), .B0(\obj_x[4][3] ), .B1(n731), .C0(\obj_x[5][3] ), .C1(n734), .Y(n361) );
  AOI222XL U1128 ( .A0(\obj_y[0][3] ), .A1(n730), .B0(\obj_y[4][3] ), .B1(n731), .C0(\obj_y[5][3] ), .C1(n732), .Y(n341) );
  OAI211X1 U1129 ( .A0(n727), .A1(n909), .B0(n354), .C0(n355), .Y(bx[6]) );
  AOI2BB2X1 U1130 ( .B0(\obj_x[2][6] ), .B1(n728), .A0N(n729), .A1N(n58), .Y(
        n354) );
  OAI211X1 U1131 ( .A0(n727), .A1(n921), .B0(n334), .C0(n335), .Y(by[6]) );
  AOI2BB2X1 U1132 ( .B0(\obj_y[2][6] ), .B1(n728), .A0N(n729), .A1N(n128), .Y(
        n334) );
  OAI222XL U1133 ( .A0(n132), .A1(n720), .B0(n903), .B1(n721), .C0(n883), .C1(
        n724), .Y(n402) );
  OAI222XL U1134 ( .A0(n62), .A1(n720), .B0(n893), .B1(n721), .C0(n873), .C1(
        n724), .Y(n432) );
  AOI222XL U1135 ( .A0(\obj_x[0][4] ), .A1(n730), .B0(\obj_x[4][4] ), .B1(n731), .C0(\obj_x[5][4] ), .C1(n734), .Y(n359) );
  AOI222XL U1136 ( .A0(\obj_y[0][4] ), .A1(n730), .B0(\obj_y[4][4] ), .B1(n731), .C0(\obj_y[5][4] ), .C1(n734), .Y(n339) );
  OAI222XL U1137 ( .A0(n131), .A1(n720), .B0(n902), .B1(n721), .C0(n882), .C1(
        n722), .Y(n399) );
  OAI222XL U1138 ( .A0(n61), .A1(n720), .B0(n892), .B1(n721), .C0(n872), .C1(
        n724), .Y(n429) );
  OAI211X1 U1139 ( .A0(n727), .A1(n908), .B0(n352), .C0(n353), .Y(bx[7]) );
  AOI2BB2X1 U1140 ( .B0(\obj_x[2][7] ), .B1(n728), .A0N(n329), .A1N(n57), .Y(
        n352) );
  OAI211X1 U1141 ( .A0(n727), .A1(n922), .B0(n332), .C0(n333), .Y(by[7]) );
  AOI2BB2X1 U1142 ( .B0(\obj_y[2][7] ), .B1(n728), .A0N(n329), .A1N(n127), .Y(
        n332) );
  OAI222XL U1143 ( .A0(n130), .A1(n720), .B0(n901), .B1(n721), .C0(n881), .C1(
        n722), .Y(n396) );
  OAI222XL U1144 ( .A0(n60), .A1(n720), .B0(n891), .B1(n721), .C0(n871), .C1(
        n722), .Y(n426) );
  AOI222XL U1145 ( .A0(\obj_x[0][5] ), .A1(n730), .B0(\obj_x[4][5] ), .B1(n731), .C0(\obj_x[5][5] ), .C1(n732), .Y(n357) );
  AOI222XL U1146 ( .A0(\obj_y[0][5] ), .A1(n730), .B0(\obj_y[4][5] ), .B1(n731), .C0(\obj_y[5][5] ), .C1(n732), .Y(n337) );
  OAI211X1 U1147 ( .A0(n727), .A1(n907), .B0(n350), .C0(n351), .Y(bx[8]) );
  AOI2BB2X1 U1148 ( .B0(\obj_x[2][8] ), .B1(n728), .A0N(n729), .A1N(n56), .Y(
        n350) );
  OAI22XL U1149 ( .A0(n717), .A1(n386), .B0(n878), .B1(n852), .Y(ay[7]) );
  AOI211X1 U1150 ( .A0(n719), .A1(\obj_y[3][7] ), .B0(n387), .C0(n388), .Y(
        n386) );
  OAI22XL U1151 ( .A0(n717), .A1(n389), .B0(n879), .B1(n852), .Y(ay[6]) );
  AOI211X1 U1152 ( .A0(n718), .A1(\obj_y[3][6] ), .B0(n390), .C0(n391), .Y(
        n389) );
  OAI211X1 U1153 ( .A0(n727), .A1(n923), .B0(n330), .C0(n331), .Y(by[8]) );
  AOI2BB2X1 U1154 ( .B0(\obj_y[2][8] ), .B1(n728), .A0N(n729), .A1N(n126), .Y(
        n330) );
  OAI22XL U1155 ( .A0(n717), .A1(n416), .B0(n868), .B1(n852), .Y(ax[7]) );
  AOI211X1 U1156 ( .A0(n719), .A1(\obj_x[3][7] ), .B0(n417), .C0(n418), .Y(
        n416) );
  OAI22XL U1157 ( .A0(n717), .A1(n419), .B0(n869), .B1(n852), .Y(ax[6]) );
  AOI211X1 U1158 ( .A0(n718), .A1(\obj_x[3][6] ), .B0(n420), .C0(n421), .Y(
        n419) );
  OAI22XL U1159 ( .A0(n373), .A1(n717), .B0(n876), .B1(n852), .Y(ay[9]) );
  AOI211X1 U1160 ( .A0(n719), .A1(\obj_y[3][9] ), .B0(n376), .C0(n377), .Y(
        n373) );
  OAI22XL U1161 ( .A0(n717), .A1(n383), .B0(n877), .B1(n852), .Y(ay[8]) );
  AOI211X1 U1162 ( .A0(n718), .A1(\obj_y[3][8] ), .B0(n384), .C0(n385), .Y(
        n383) );
  OAI22XL U1163 ( .A0(n717), .A1(n410), .B0(n866), .B1(n852), .Y(ax[9]) );
  AOI211X1 U1164 ( .A0(n719), .A1(\obj_x[3][9] ), .B0(n411), .C0(n412), .Y(
        n410) );
  OAI22XL U1165 ( .A0(n717), .A1(n413), .B0(n867), .B1(n852), .Y(ax[8]) );
  AOI211X1 U1166 ( .A0(n718), .A1(\obj_x[3][8] ), .B0(n414), .C0(n415), .Y(
        n413) );
  OAI222XL U1167 ( .A0(n129), .A1(n720), .B0(n900), .B1(n721), .C0(n880), .C1(
        n723), .Y(n393) );
  OAI222XL U1168 ( .A0(n59), .A1(n720), .B0(n890), .B1(n721), .C0(n870), .C1(
        n722), .Y(n423) );
  OAI211X1 U1169 ( .A0(n727), .A1(n906), .B0(n348), .C0(n349), .Y(bx[9]) );
  AOI2BB2X1 U1170 ( .B0(\obj_x[2][9] ), .B1(n728), .A0N(n329), .A1N(n55), .Y(
        n348) );
  OAI211X1 U1171 ( .A0(n727), .A1(n924), .B0(n323), .C0(n324), .Y(by[9]) );
  AOI2BB2X1 U1172 ( .B0(\obj_y[2][9] ), .B1(n728), .A0N(n329), .A1N(n125), .Y(
        n323) );
  AOI222XL U1173 ( .A0(\obj_x[0][6] ), .A1(n730), .B0(\obj_x[4][6] ), .B1(n731), .C0(\obj_x[5][6] ), .C1(n734), .Y(n355) );
  AOI222XL U1174 ( .A0(\obj_y[0][6] ), .A1(n730), .B0(\obj_y[4][6] ), .B1(n731), .C0(\obj_y[5][6] ), .C1(n734), .Y(n335) );
  CLKBUFX3 U1175 ( .A(n314), .Y(n751) );
  NAND2X1 U1176 ( .A(state[1]), .B(n202), .Y(n314) );
  NAND3X1 U1177 ( .A(n748), .B(n857), .C(i[2]), .Y(n292) );
  AOI222XL U1178 ( .A0(\obj_x[0][7] ), .A1(n730), .B0(\obj_x[4][7] ), .B1(n731), .C0(\obj_x[5][7] ), .C1(n734), .Y(n353) );
  AOI222XL U1179 ( .A0(\obj_y[0][7] ), .A1(n730), .B0(\obj_y[4][7] ), .B1(n731), .C0(\obj_y[5][7] ), .C1(n734), .Y(n333) );
  OAI222XL U1180 ( .A0(n128), .A1(n720), .B0(n899), .B1(n721), .C0(n879), .C1(
        n724), .Y(n390) );
  OAI222XL U1181 ( .A0(n58), .A1(n720), .B0(n889), .B1(n721), .C0(n869), .C1(
        n723), .Y(n420) );
  OAI222XL U1182 ( .A0(n127), .A1(n720), .B0(n898), .B1(n721), .C0(n878), .C1(
        n723), .Y(n387) );
  OAI222XL U1183 ( .A0(n57), .A1(n720), .B0(n888), .B1(n721), .C0(n868), .C1(
        n724), .Y(n417) );
  AOI222XL U1184 ( .A0(\obj_x[0][8] ), .A1(n730), .B0(\obj_x[4][8] ), .B1(n731), .C0(\obj_x[5][8] ), .C1(n734), .Y(n351) );
  AOI222XL U1185 ( .A0(\obj_y[0][8] ), .A1(n730), .B0(\obj_y[4][8] ), .B1(n731), .C0(\obj_y[5][8] ), .C1(n734), .Y(n331) );
  OAI222XL U1186 ( .A0(n126), .A1(n720), .B0(n897), .B1(n721), .C0(n877), .C1(
        n722), .Y(n384) );
  OAI222XL U1187 ( .A0(n56), .A1(n720), .B0(n887), .B1(n721), .C0(n867), .C1(
        n723), .Y(n414) );
  OAI222XL U1188 ( .A0(n55), .A1(n720), .B0(n886), .B1(n721), .C0(n866), .C1(
        n722), .Y(n411) );
  OAI222XL U1189 ( .A0(n125), .A1(n720), .B0(n896), .B1(n721), .C0(n876), .C1(
        n723), .Y(n376) );
  AOI222XL U1190 ( .A0(\obj_x[0][9] ), .A1(n730), .B0(\obj_x[4][9] ), .B1(n731), .C0(\obj_x[5][9] ), .C1(n734), .Y(n349) );
  AOI222XL U1191 ( .A0(\obj_y[0][9] ), .A1(n730), .B0(\obj_y[4][9] ), .B1(n731), .C0(\obj_y[5][9] ), .C1(n734), .Y(n324) );
  CLKINVX1 U1192 ( .A(\obj_y[2][0] ), .Y(n905) );
  CLKINVX1 U1193 ( .A(\obj_x[2][0] ), .Y(n895) );
  CLKINVX1 U1194 ( .A(\obj_y[0][0] ), .Y(n885) );
  CLKINVX1 U1195 ( .A(\obj_x[0][0] ), .Y(n875) );
  CLKINVX1 U1196 ( .A(\obj_y[2][1] ), .Y(n904) );
  CLKINVX1 U1197 ( .A(\obj_y[0][1] ), .Y(n884) );
  CLKINVX1 U1198 ( .A(\obj_x[2][1] ), .Y(n894) );
  CLKINVX1 U1199 ( .A(\obj_x[0][1] ), .Y(n874) );
  CLKINVX1 U1200 ( .A(\obj_y[5][0] ), .Y(n965) );
  CLKINVX1 U1201 ( .A(\obj_x[5][0] ), .Y(n955) );
  CLKINVX1 U1202 ( .A(\obj_y[4][0] ), .Y(n945) );
  NOR2X1 U1203 ( .A(n303), .B(reset), .Y(n301) );
  NAND3X1 U1204 ( .A(n188), .B(n187), .C(n300), .Y(n294) );
  CLKINVX1 U1205 ( .A(\obj_x[4][0] ), .Y(n935) );
  CLKINVX1 U1206 ( .A(\obj_y[5][1] ), .Y(n964) );
  CLKINVX1 U1207 ( .A(\obj_x[5][1] ), .Y(n954) );
  CLKINVX1 U1208 ( .A(\obj_y[4][1] ), .Y(n944) );
  CLKINVX1 U1209 ( .A(\obj_x[4][1] ), .Y(n934) );
  CLKINVX1 U1210 ( .A(reset), .Y(n819) );
  CLKINVX1 U1211 ( .A(\obj_y[2][2] ), .Y(n903) );
  CLKINVX1 U1212 ( .A(\obj_x[2][2] ), .Y(n893) );
  CLKINVX1 U1213 ( .A(\obj_y[0][2] ), .Y(n883) );
  CLKINVX1 U1214 ( .A(\obj_x[0][2] ), .Y(n873) );
  CLKINVX1 U1215 ( .A(\obj_y[5][2] ), .Y(n963) );
  CLKINVX1 U1216 ( .A(\obj_x[5][2] ), .Y(n953) );
  CLKINVX1 U1217 ( .A(\obj_y[4][2] ), .Y(n943) );
  CLKINVX1 U1218 ( .A(\obj_x[4][2] ), .Y(n933) );
  OAI32X1 U1219 ( .A0(n289), .A1(n317), .A2(n735), .B0(n287), .B1(n42), .Y(
        n608) );
  AOI21X1 U1220 ( .A0(n966), .A1(n318), .B0(n968), .Y(n317) );
  OAI21XL U1221 ( .A0(i[1]), .A1(n858), .B0(n257), .Y(n318) );
  CLKINVX1 U1222 ( .A(\obj_x[3][0] ), .Y(n915) );
  CLKINVX1 U1223 ( .A(\obj_y[3][0] ), .Y(n919) );
  OAI22XL U1224 ( .A0(n745), .A1(n845), .B0(n825), .B1(n134), .Y(n541) );
  OAI22XL U1225 ( .A0(n745), .A1(n844), .B0(n825), .B1(n133), .Y(n540) );
  OAI22XL U1226 ( .A0(n745), .A1(n843), .B0(n825), .B1(n132), .Y(n539) );
  OAI22XL U1227 ( .A0(n295), .A1(n842), .B0(n825), .B1(n131), .Y(n538) );
  OAI22XL U1228 ( .A0(n295), .A1(n841), .B0(n825), .B1(n130), .Y(n537) );
  OAI22XL U1229 ( .A0(n295), .A1(n840), .B0(n825), .B1(n129), .Y(n536) );
  OAI22XL U1230 ( .A0(n295), .A1(n839), .B0(n825), .B1(n128), .Y(n535) );
  OAI22XL U1231 ( .A0(n295), .A1(n838), .B0(n825), .B1(n127), .Y(n534) );
  OAI22XL U1232 ( .A0(n295), .A1(n837), .B0(n825), .B1(n126), .Y(n533) );
  OAI22XL U1233 ( .A0(n745), .A1(n836), .B0(n825), .B1(n125), .Y(n532) );
  NAND3X1 U1234 ( .A(n301), .B(n189), .C(n865), .Y(n295) );
  OAI22XL U1235 ( .A0(n287), .A1(n800), .B0(n288), .B1(n289), .Y(n458) );
  AOI211X1 U1236 ( .A0(n966), .A1(n857), .B0(n861), .C0(n290), .Y(n288) );
  NOR3X1 U1237 ( .A(n974), .B(j[1]), .C(n966), .Y(n290) );
  OAI22XL U1238 ( .A0(n835), .A1(n745), .B0(n825), .B1(n64), .Y(n481) );
  OAI22XL U1239 ( .A0(n834), .A1(n745), .B0(n825), .B1(n63), .Y(n480) );
  OAI22XL U1240 ( .A0(n833), .A1(n745), .B0(n825), .B1(n62), .Y(n479) );
  OAI22XL U1241 ( .A0(n832), .A1(n745), .B0(n825), .B1(n61), .Y(n478) );
  OAI22XL U1242 ( .A0(n831), .A1(n745), .B0(n825), .B1(n60), .Y(n477) );
  OAI22XL U1243 ( .A0(n830), .A1(n745), .B0(n825), .B1(n59), .Y(n476) );
  OAI22XL U1244 ( .A0(n829), .A1(n745), .B0(n825), .B1(n58), .Y(n475) );
  OAI22XL U1245 ( .A0(n828), .A1(n745), .B0(n825), .B1(n57), .Y(n474) );
  OAI22XL U1246 ( .A0(n827), .A1(n745), .B0(n825), .B1(n56), .Y(n473) );
  OAI22XL U1247 ( .A0(n826), .A1(n745), .B0(n825), .B1(n55), .Y(n472) );
  CLKINVX1 U1248 ( .A(\obj_y[2][3] ), .Y(n902) );
  CLKINVX1 U1249 ( .A(\obj_x[2][3] ), .Y(n892) );
  CLKINVX1 U1250 ( .A(\obj_y[0][3] ), .Y(n882) );
  NAND3X1 U1251 ( .A(n861), .B(n189), .C(n306), .Y(n305) );
  NOR3X1 U1252 ( .A(count[1]), .B(reset), .C(count[2]), .Y(n306) );
  OAI22XL U1253 ( .A0(n835), .A1(n737), .B0(n820), .B1(n31), .Y(n601) );
  OAI22XL U1254 ( .A0(n836), .A1(n737), .B0(n820), .B1(n105), .Y(n600) );
  OAI22XL U1255 ( .A0(n837), .A1(n737), .B0(n820), .B1(n106), .Y(n599) );
  OAI22XL U1256 ( .A0(n838), .A1(n737), .B0(n820), .B1(n107), .Y(n598) );
  OAI22XL U1257 ( .A0(n839), .A1(n737), .B0(n820), .B1(n108), .Y(n597) );
  OAI22XL U1258 ( .A0(n840), .A1(n737), .B0(n820), .B1(n109), .Y(n596) );
  OAI22XL U1259 ( .A0(n841), .A1(n737), .B0(n820), .B1(n110), .Y(n595) );
  OAI22XL U1260 ( .A0(n842), .A1(n737), .B0(n820), .B1(n111), .Y(n594) );
  OAI22XL U1261 ( .A0(n843), .A1(n737), .B0(n820), .B1(n112), .Y(n593) );
  OAI22XL U1262 ( .A0(n844), .A1(n737), .B0(n820), .B1(n113), .Y(n592) );
  OAI22XL U1263 ( .A0(n845), .A1(n737), .B0(n820), .B1(n114), .Y(n591) );
  OAI22XL U1264 ( .A0(n826), .A1(n737), .B0(n820), .B1(n22), .Y(n590) );
  OAI22XL U1265 ( .A0(n827), .A1(n737), .B0(n820), .B1(n23), .Y(n589) );
  OAI22XL U1266 ( .A0(n828), .A1(n737), .B0(n820), .B1(n24), .Y(n588) );
  OAI22XL U1267 ( .A0(n829), .A1(n737), .B0(n820), .B1(n25), .Y(n587) );
  OAI22XL U1268 ( .A0(n830), .A1(n737), .B0(n820), .B1(n26), .Y(n586) );
  OAI22XL U1269 ( .A0(n831), .A1(n737), .B0(n820), .B1(n27), .Y(n585) );
  OAI22XL U1270 ( .A0(n832), .A1(n737), .B0(n820), .B1(n28), .Y(n584) );
  OAI22XL U1271 ( .A0(n833), .A1(n737), .B0(n820), .B1(n29), .Y(n583) );
  OAI22XL U1272 ( .A0(n834), .A1(n737), .B0(n820), .B1(n30), .Y(n582) );
  CLKINVX1 U1273 ( .A(\obj_x[0][3] ), .Y(n872) );
  NAND3X1 U1274 ( .A(n301), .B(n189), .C(n864), .Y(n297) );
  CLKINVX1 U1275 ( .A(\obj_x[3][1] ), .Y(n914) );
  CLKINVX1 U1276 ( .A(\obj_y[3][1] ), .Y(n918) );
  CLKINVX1 U1277 ( .A(\obj_y[5][3] ), .Y(n962) );
  CLKINVX1 U1278 ( .A(\obj_x[5][3] ), .Y(n952) );
  CLKINVX1 U1279 ( .A(\obj_y[4][3] ), .Y(n942) );
  CLKINVX1 U1280 ( .A(\obj_x[4][3] ), .Y(n932) );
  CLKINVX1 U1281 ( .A(\obj_y[2][4] ), .Y(n901) );
  CLKINVX1 U1282 ( .A(\obj_x[2][4] ), .Y(n891) );
  CLKINVX1 U1283 ( .A(\obj_y[0][4] ), .Y(n881) );
  CLKINVX1 U1284 ( .A(\obj_x[0][4] ), .Y(n871) );
  CLKINVX1 U1285 ( .A(\obj_x[3][2] ), .Y(n913) );
  CLKINVX1 U1286 ( .A(\obj_y[3][2] ), .Y(n917) );
  CLKINVX1 U1287 ( .A(\obj_y[5][4] ), .Y(n961) );
  CLKINVX1 U1288 ( .A(\obj_x[5][4] ), .Y(n951) );
  CLKINVX1 U1289 ( .A(\obj_y[4][4] ), .Y(n941) );
  CLKINVX1 U1290 ( .A(\obj_x[4][4] ), .Y(n931) );
  CLKINVX1 U1291 ( .A(\obj_y[2][5] ), .Y(n900) );
  CLKINVX1 U1292 ( .A(\obj_x[2][5] ), .Y(n890) );
  CLKINVX1 U1293 ( .A(\obj_y[0][5] ), .Y(n880) );
  CLKINVX1 U1294 ( .A(\obj_x[0][5] ), .Y(n870) );
  CLKINVX1 U1295 ( .A(\obj_x[3][3] ), .Y(n912) );
  CLKINVX1 U1296 ( .A(\obj_y[3][3] ), .Y(n916) );
  CLKINVX1 U1297 ( .A(\obj_y[5][5] ), .Y(n960) );
  CLKINVX1 U1298 ( .A(\obj_x[5][5] ), .Y(n950) );
  CLKINVX1 U1299 ( .A(\obj_y[4][5] ), .Y(n940) );
  CLKINVX1 U1300 ( .A(\obj_x[4][5] ), .Y(n930) );
  CLKINVX1 U1301 ( .A(\obj_x[3][4] ), .Y(n911) );
  CLKINVX1 U1302 ( .A(\obj_y[3][4] ), .Y(n925) );
  CLKINVX1 U1303 ( .A(\obj_x[3][5] ), .Y(n910) );
  CLKINVX1 U1304 ( .A(\obj_y[3][5] ), .Y(n920) );
  CLKINVX1 U1305 ( .A(\obj_y[2][6] ), .Y(n899) );
  CLKINVX1 U1306 ( .A(\obj_x[2][6] ), .Y(n889) );
  CLKINVX1 U1307 ( .A(\obj_y[0][6] ), .Y(n879) );
  CLKINVX1 U1308 ( .A(\obj_x[0][6] ), .Y(n869) );
  CLKINVX1 U1309 ( .A(\obj_y[5][6] ), .Y(n959) );
  CLKINVX1 U1310 ( .A(\obj_x[5][6] ), .Y(n949) );
  CLKINVX1 U1311 ( .A(\obj_y[4][6] ), .Y(n939) );
  CLKINVX1 U1312 ( .A(\obj_x[4][6] ), .Y(n929) );
  CLKINVX1 U1313 ( .A(\obj_y[2][7] ), .Y(n898) );
  CLKINVX1 U1314 ( .A(\obj_x[2][7] ), .Y(n888) );
  CLKINVX1 U1315 ( .A(\obj_y[0][7] ), .Y(n878) );
  CLKINVX1 U1316 ( .A(\obj_x[0][7] ), .Y(n868) );
  CLKINVX1 U1317 ( .A(\obj_x[3][6] ), .Y(n909) );
  CLKINVX1 U1318 ( .A(\obj_y[3][6] ), .Y(n921) );
  CLKINVX1 U1319 ( .A(\obj_y[5][7] ), .Y(n958) );
  CLKINVX1 U1320 ( .A(\obj_x[5][7] ), .Y(n948) );
  CLKINVX1 U1321 ( .A(\obj_y[4][7] ), .Y(n938) );
  CLKINVX1 U1322 ( .A(\obj_x[4][7] ), .Y(n928) );
  CLKINVX1 U1323 ( .A(\obj_y[2][8] ), .Y(n897) );
  CLKINVX1 U1324 ( .A(\obj_x[2][8] ), .Y(n887) );
  CLKINVX1 U1325 ( .A(\obj_y[0][8] ), .Y(n877) );
  CLKINVX1 U1326 ( .A(\obj_x[0][8] ), .Y(n867) );
  CLKINVX1 U1327 ( .A(\obj_y[5][8] ), .Y(n957) );
  CLKINVX1 U1328 ( .A(\obj_x[5][8] ), .Y(n947) );
  CLKINVX1 U1329 ( .A(\obj_y[4][8] ), .Y(n937) );
  CLKINVX1 U1330 ( .A(\obj_x[4][8] ), .Y(n927) );
  CLKINVX1 U1331 ( .A(\obj_y[2][9] ), .Y(n896) );
  CLKINVX1 U1332 ( .A(\obj_x[2][9] ), .Y(n886) );
  CLKINVX1 U1333 ( .A(\obj_x[3][7] ), .Y(n908) );
  CLKINVX1 U1334 ( .A(\obj_y[3][7] ), .Y(n922) );
  CLKINVX1 U1335 ( .A(\obj_y[0][9] ), .Y(n876) );
  CLKINVX1 U1336 ( .A(\obj_x[0][9] ), .Y(n866) );
  CLKINVX1 U1337 ( .A(\obj_x[5][9] ), .Y(n946) );
  CLKINVX1 U1338 ( .A(\obj_y[5][9] ), .Y(n956) );
  CLKINVX1 U1339 ( .A(\obj_x[4][9] ), .Y(n926) );
  CLKINVX1 U1340 ( .A(\obj_y[4][9] ), .Y(n936) );
  CLKINVX1 U1341 ( .A(\obj_x[3][8] ), .Y(n907) );
  CLKINVX1 U1342 ( .A(\obj_y[3][8] ), .Y(n923) );
  CLKINVX1 U1343 ( .A(\obj_x[3][9] ), .Y(n906) );
  CLKINVX1 U1344 ( .A(\obj_y[3][9] ), .Y(n924) );
  OAI2BB2XL U1345 ( .B0(n238), .B1(n292), .A0N(valid), .A1N(n736), .Y(n460) );
  NAND3X2 U1346 ( .A(n203), .B(n202), .C(state[0]), .Y(n303) );
  NAND2X1 U1347 ( .A(n757), .B(state[0]), .Y(n246) );
  NOR2X1 U1348 ( .A(n42), .B(j[1]), .Y(n277) );
  NOR3X1 U1349 ( .A(n188), .B(count[0]), .C(n187), .Y(n310) );
  OAI222XL U1350 ( .A0(state[0]), .A1(n314), .B0(state[1]), .B1(state[0]), 
        .C0(n204), .C1(n311), .Y(n606) );
  OAI2BB2XL U1351 ( .B0(n203), .B1(n311), .A0N(n311), .A1N(n716), .Y(n605) );
  OR2X1 U1352 ( .A(n313), .B(n861), .Y(n716) );
  OAI21XL U1353 ( .A0(n202), .A1(n311), .B0(n315), .Y(n607) );
  AOI32X1 U1354 ( .A0(n966), .A1(n859), .A2(n276), .B0(n863), .B1(n292), .Y(
        n315) );
  OAI222XL U1355 ( .A0(n303), .A1(n304), .B0(n302), .B1(n308), .C0(n307), .C1(
        n187), .Y(n604) );
  NAND2X1 U1356 ( .A(count[0]), .B(n861), .Y(n308) );
  OAI32X1 U1357 ( .A0(n303), .A1(count[0]), .A2(n862), .B0(n189), .B1(n309), 
        .Y(n603) );
  CLKBUFX3 U1358 ( .A(n234), .Y(n736) );
  NAND3X1 U1359 ( .A(n203), .B(n202), .C(n204), .Y(n234) );
  NAND2X1 U1360 ( .A(count[1]), .B(n187), .Y(n302) );
  NAND2X1 U1361 ( .A(count[2]), .B(n188), .Y(n304) );
  AOI2BB1X1 U1362 ( .A0N(count[0]), .A1N(n303), .B0(n862), .Y(n307) );
  OAI22XL U1363 ( .A0(n307), .A1(n188), .B0(count[1]), .B1(n308), .Y(n602) );
  NAND2BX1 U1364 ( .AN(N328), .B(N326), .Y(n771) );
  AOI22X1 U1365 ( .A0(\idx[1][0] ), .A1(n773), .B0(\idx[3][0] ), .B1(N327), 
        .Y(n762) );
  AND2X1 U1366 ( .A(N328), .B(N326), .Y(n766) );
  NAND2X1 U1367 ( .A(\idx[5][0] ), .B(n766), .Y(n761) );
  NOR2X1 U1368 ( .A(N327), .B(N326), .Y(n768) );
  NOR2X1 U1369 ( .A(n773), .B(N326), .Y(n767) );
  AOI22X1 U1370 ( .A0(\idx[4][0] ), .A1(n768), .B0(\idx[2][0] ), .B1(n767), 
        .Y(n760) );
  AOI22X1 U1371 ( .A0(\idx[3][1] ), .A1(N327), .B0(\idx[1][1] ), .B1(n773), 
        .Y(n765) );
  NAND2X1 U1372 ( .A(\idx[5][1] ), .B(n766), .Y(n764) );
  AOI22X1 U1373 ( .A0(\idx[4][1] ), .A1(n768), .B0(\idx[2][1] ), .B1(n767), 
        .Y(n763) );
  OAI211X1 U1374 ( .A0(n771), .A1(n765), .B0(n764), .C0(n763), .Y(N372) );
  AOI22X1 U1375 ( .A0(\idx[3][2] ), .A1(N327), .B0(\idx[1][2] ), .B1(n773), 
        .Y(n772) );
  NAND2X1 U1376 ( .A(\idx[5][2] ), .B(n766), .Y(n770) );
  AOI22X1 U1377 ( .A0(\idx[4][2] ), .A1(n768), .B0(\idx[2][2] ), .B1(n767), 
        .Y(n769) );
  OAI211X1 U1378 ( .A0(n772), .A1(n771), .B0(n770), .C0(n769), .Y(N371) );
  NAND2BX1 U1379 ( .AN(i[2]), .B(n748), .Y(n785) );
  AOI22X1 U1380 ( .A0(\idx[1][0] ), .A1(n857), .B0(\idx[3][0] ), .B1(i[1]), 
        .Y(n776) );
  NOR2X1 U1381 ( .A(i[1]), .B(n748), .Y(n780) );
  NAND2X1 U1382 ( .A(\idx[4][0] ), .B(n780), .Y(n775) );
  NOR2X1 U1383 ( .A(n857), .B(n748), .Y(n782) );
  AND2X1 U1384 ( .A(i[2]), .B(n748), .Y(n781) );
  AOI22X1 U1385 ( .A0(\idx[2][0] ), .A1(n782), .B0(\idx[5][0] ), .B1(n781), 
        .Y(n774) );
  OAI211X1 U1386 ( .A0(n785), .A1(n776), .B0(n775), .C0(n774), .Y(N473) );
  AOI22X1 U1387 ( .A0(\idx[1][1] ), .A1(n857), .B0(\idx[3][1] ), .B1(i[1]), 
        .Y(n779) );
  NAND2X1 U1388 ( .A(\idx[4][1] ), .B(n780), .Y(n778) );
  AOI22X1 U1389 ( .A0(\idx[2][1] ), .A1(n782), .B0(\idx[5][1] ), .B1(n781), 
        .Y(n777) );
  OAI211X1 U1390 ( .A0(n785), .A1(n779), .B0(n778), .C0(n777), .Y(N472) );
  AOI22X1 U1391 ( .A0(\idx[1][2] ), .A1(n857), .B0(\idx[3][2] ), .B1(i[1]), 
        .Y(n786) );
  NAND2X1 U1392 ( .A(\idx[4][2] ), .B(n780), .Y(n784) );
  AOI22X1 U1393 ( .A0(\idx[2][2] ), .A1(n782), .B0(\idx[5][2] ), .B1(n781), 
        .Y(n783) );
  OAI211X1 U1394 ( .A0(n786), .A1(n785), .B0(n784), .C0(n783), .Y(N471) );
  NAND2BX1 U1395 ( .AN(j[2]), .B(n747), .Y(n798) );
  AOI22X1 U1396 ( .A0(\idx[1][0] ), .A1(n800), .B0(\idx[3][0] ), .B1(j[1]), 
        .Y(n789) );
  NOR2X1 U1397 ( .A(j[1]), .B(n747), .Y(n793) );
  NAND2X1 U1398 ( .A(\idx[4][0] ), .B(n793), .Y(n788) );
  NOR2X1 U1399 ( .A(n800), .B(n747), .Y(n795) );
  AND2X1 U1400 ( .A(j[2]), .B(n747), .Y(n794) );
  AOI22X1 U1401 ( .A0(\idx[2][0] ), .A1(n795), .B0(\idx[5][0] ), .B1(n794), 
        .Y(n787) );
  AOI22X1 U1402 ( .A0(\idx[1][1] ), .A1(n800), .B0(\idx[3][1] ), .B1(j[1]), 
        .Y(n792) );
  NAND2X1 U1403 ( .A(\idx[4][1] ), .B(n793), .Y(n791) );
  AOI22X1 U1404 ( .A0(\idx[2][1] ), .A1(n795), .B0(\idx[5][1] ), .B1(n794), 
        .Y(n790) );
  OAI211X1 U1405 ( .A0(n798), .A1(n792), .B0(n791), .C0(n790), .Y(N459) );
  AOI22X1 U1406 ( .A0(\idx[1][2] ), .A1(n800), .B0(\idx[3][2] ), .B1(j[1]), 
        .Y(n799) );
  NAND2X1 U1407 ( .A(\idx[4][2] ), .B(n793), .Y(n797) );
  AOI22X1 U1408 ( .A0(\idx[2][2] ), .A1(n795), .B0(\idx[5][2] ), .B1(n794), 
        .Y(n796) );
  OAI211X1 U1409 ( .A0(n799), .A1(n798), .B0(n797), .C0(n796), .Y(N458) );
  NOR3X1 U1410 ( .A(cross_result[14]), .B(cross_result[16]), .C(
        cross_result[15]), .Y(n809) );
  NOR3X1 U1411 ( .A(cross_result[17]), .B(cross_result[19]), .C(
        cross_result[18]), .Y(n808) );
  OR2X1 U1412 ( .A(cross_result[10]), .B(cross_result[0]), .Y(n801) );
  NOR4X1 U1413 ( .A(n801), .B(cross_result[11]), .C(cross_result[13]), .D(
        cross_result[12]), .Y(n807) );
  NOR2X1 U1414 ( .A(cross_result[20]), .B(cross_result[1]), .Y(n805) );
  NOR3X1 U1415 ( .A(cross_result[21]), .B(cross_result[3]), .C(cross_result[2]), .Y(n804) );
  NOR3X1 U1416 ( .A(cross_result[4]), .B(cross_result[6]), .C(cross_result[5]), 
        .Y(n803) );
  NOR3X1 U1417 ( .A(cross_result[7]), .B(cross_result[9]), .C(cross_result[8]), 
        .Y(n802) );
  AND4X1 U1418 ( .A(n805), .B(n804), .C(n803), .D(n802), .Y(n806) );
  NAND4X1 U1419 ( .A(n809), .B(n808), .C(n807), .D(n806), .Y(n810) );
  NOR3X1 U1420 ( .A(n810), .B(N450), .C(cross_result[22]), .Y(N560) );
  AOI2BB1X1 U1421 ( .A0N(n810), .A1N(cross_result[22]), .B0(N450), .Y(N558) );
endmodule

