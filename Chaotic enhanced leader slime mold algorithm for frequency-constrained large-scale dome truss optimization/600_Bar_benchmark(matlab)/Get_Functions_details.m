%% Benchmark Test functions
function [lb,ub,dim,fobj] = Get_Functions_details(F)
switch F
    case 'F1'
        fobj = @F1;
        lb=0.0001;
        ub=0.01;
        dim=25;
            
end

% F1

function  W = F1(x)
rho = 7850; % density of material (kg/m^3)
A1 = x(1);
A2 = x(2);
A3 = x(3);
A4 = x(4);
A5 = x(5);
A6 = x(6);
A7 = x(7);
A8 = x(8);
A9 = x(9);
A10 = x(10);
A11 = x(11);
A12 = x(12);
A13 = x(13);
A14 = x(14);
A15 = x(15);
A16 = x(16);
A17 = x(17);
A18 = x(18);
A19 = x(19);
A20 = x(20);
A21 = x(21);
A22 = x(22);
A23 = x(23);
A24 = x(24);
A25 = x(25);
A([1;26;51;76;101;126;151;176;201;226;251;276;301;326;351;376;401;426;451;476;501;526;551;576])= A1;
A([2;27;52;77;102;127;152;177;202;227;252;277;302;327;352;377;402;427;452;477;502;527;552;577])= A2;
A([3;28;53;78;103;128;153;178;203;228;253;278;303;328;353;378;403;428;453;478;503;528;553;578])= A3;
A([4;29;54;79;104;129;154;179;204;229;254;279;304;329;354;379;404;429;454;479;504;529;554;579])= A4;
A([5;30;55;80;105;130;155;180;205;230;255;280;305;330;355;380;405;430;455;480;505;530;555;580])= A5;
A([6;31;56;81;106;131;156;181;206;231;256;281;306;331;356;381;406;431;456;481;506;531;556;581])= A6;
A([7;32;57;82;107;132;157;182;207;232;257;282;307;332;357;382;407;432;457;482;507;532;557;582])= A7;
A([8;33;58;83;108;133;158;183;208;233;258;283;308;333;358;383;408;433;458;483;508;533;558;583])= A8;
A([9;34;59;84;109;134;159;184;209;234;259;284;309;334;359;384;409;434;459;484;509;534;559;584])= A9;
A([10;35;60;85;110;135;160;185;210;235;260;285;310;335;360;385;410;435;460;485;510;535;560;585])= A10;
A([11;36;61;86;111;136;161;186;211;236;261;286;311;336;361;386;411;436;461;486;511;536;561;586])= A11;
A([12;37;62;87;112;137;162;187;212;237;262;287;312;337;362;387;412;437;462;487;512;537;562;587])= A12;
A([13;38;63;88;113;138;163;188;213;238;263;288;313;338;363;388;413;438;463;488;513;538;563;588])= A13;
A([14;39;64;89;114;139;164;189;214;239;264;289;314;339;364;389;414;439;464;489;514;539;564;589])= A14;
A([15;40;65;90;115;140;165;190;215;240;265;290;315;340;365;390;415;440;465;490;515;540;565;590])= A15;
A([16;41;66;91;116;141;166;191;216;241;266;291;316;341;366;391;416;441;466;491;516;541;566;591])= A16;
A([17;42;67;92;117;142;167;192;217;242;267;292;317;342;367;392;417;442;467;492;517;542;567;592])= A17;
A([18;43;68;93;118;143;168;193;218;243;268;293;318;343;368;393;418;443;468;493;518;543;568;593])= A18;
A([19;44;69;94;119;144;169;194;219;244;269;294;319;344;369;394;419;444;469;494;519;544;569;594])= A19;
A([20;45;70;95;120;145;170;195;220;245;270;295;320;345;370;395;420;445;470;495;520;545;570;595])= A20;
A([21;46;71;96;121;146;171;196;221;246;271;296;321;346;371;396;421;446;471;496;521;546;571;596])= A21;
A([22;47;72;97;122;147;172;197;222;247;272;297;322;347;372;397;422;447;472;497;522;547;572;597])= A22;
A([23;48;73;98;123;148;173;198;223;248;273;298;323;348;373;398;423;448;473;498;523;548;573;598])= A23;
A([24;49;74;99;124;149;174;199;224;249;274;299;324;349;374;399;424;449;474;499;524;549;574;599])= A24;
A([25;50;75;100;125;150;175;200;225;250;275;300;325;350;375;400;425;450;475;500;525;550;575;600])= A25;
% number of elements
num_ele = 600;
% elements nodes
ele_nod = [1 2;1 3;1 10;1 11;2 3;2 11;3 4;3 11;3 12;4 5;4 12;4 13;5 6;5 13;5 14;6 7;6 14;6 15;7 8;7 15;7 16;8 9;8 16;8 17;9 17;...
           10 11;10 12;10 19;10 20;11 12;11 20;12 13;12 20;12 21;13 14;13 21;13 22;14 15;14 22;14 23;15 16;15 23;15 24;16 17;16 24;16 25;17 18;17 25;17 26;18 26;...
           19 20;19 21;19 28;19 29;20 21;20 29;21 22;21 29;21 30;22 23;22 30;22 31;23 24;23 31;23 32;24 25;24 32;24 33;25 26;25 33;25 34;26 27;26 34;26 35;27 35;...           
           28 29;28 30;28 37;28 38;29 30;29 38;30 31;30 38;30 39;31 32;31 39;31 40;32 33;32 40;32 41;33 34;33 41;33 42;34 35;34 42;34 43;35 36;35 43;35 44;36 44;...
           37 38;37 39;37 46;37 47;38 39;38 47;39 40;39 47;39 48;40 41;40 48;40 49;41 42;41 49;41 50;42 43;42 50;42 51;43 44;43 51;43 52;44 45;44 52;44 53;45 53;...
           46 47;46 48;46 55;46 56;47 48;47 56;48 49;48 56;48 57;49 50;49 57;49 58;50 51;50 58;50 59;51 52;51 59;51 60;52 53;52 60;52 61;53 54;53 61;53 62;54 62;...
           55 56;55 57;55 64;55 65;56 57;56 65;57 58;57 65;57 66;58 59;58 66;58 67;59 60;59 67;59 68;60 61;60 68;60 69;61 62;61 69;61 70;62 63;62 70;62 71;63 71;...
           64 65;64 66;64 73;64 74;65 66;65 74;66 67;66 74;66 75;67 68;67 75;67 76;68 69;68 76;68 77;69 70;69 77;69 78;70 71;70 78;70 79;71 72;71 79;71 80;72 80;...
           73 74;73 75;73 82;73 83;74 75;74 83;75 76;75 83;75 84;76 77;76 84;76 85;77 78;77 85;77 86;78 79;78 86;78 87;79 80;79 87;79 88;80 81;80 88;80 89;81 89;...
           82 83;82 84;82 91;82 92;83 84;83 92;84 85;84 92;84 93;85 86;85 93;85 94;86 87;86 94;86 95;87 88;87 95;87 96;88 89;88 96;88 97;89 90;89 97;89 98;90 98;...
           91 92;91 93;91 100;91 101;92 93;92 101;93 94;93 101;93 102;94 95;94 102;94 103;95 96;95 103;95 104;96 97;96 104;96 105;97 98;97 105;97 106;98 99;98 106;98 107;99 107;...
           100 101;100 102;100 109;100 110;101 102;101 110;102 103;102 110;102 111;103 104;103 111;103 112;104 105;104 112;104 113;105 106;105 113;105 114;106 107;106 114;106 115;107 108;107 115;107 116;108 116;...
           109 110;109 111;109 118;109 119;110 111;110 119;111 112;111 119;111 120;112 113;112 120;112 121;113 114;113 121;113 122;114 115;114 122;114 123;115 116;115 123;115 124;116 117;116 124;116 125;117 125;...
           118 119;118 120;118 127;118 128;119 120;119 128;120 121;120 128;120 129;121 122;121 129;121 130;122 123;122 130;122 131;123 124;123 131;123 132;124 125;124 132;124 133;125 126;125 133;125 134;126 134;...
           127 128;127 129;127 136;127 137;128 129;128 137;129 130;129 137;129 138;130 131;130 138;130 139;131 132;131 139;131 140;132 133;132 140;132 141;133 134;133 141;133 142;134 135;134 142;134 143;135 143;...
           136 137;136 138;136 145;136 146;137 138;137 146;138 139;138 146;138 147;139 140;139 147;139 148;140 141;140 148;140 149;141 142;141 149;141 150;142 143;142 150;142 151;143 144;143 151;143 152;144 152;...
           145 146;145 147;145 154;145 155;146 147;146 155;147 148;147 155;147 156;148 149;148 156;148 157;149 150;149 157;149 158;150 151;150 158;150 159;151 152;151 159;151 160;152 153;152 160;152 161;153 161;...
           154 155;154 156;154 163;154 164;155 156;155 164;156 157;156 164;156 165;157 158;157 165;157 166;158 159;158 166;158 167;159 160;159 167;159 168;160 161;160 168;160 169;161 162;161 169;161 170;162 170;...
           163 164;163 165;163 172;163 173;164 165;164 173;165 166;165 173;165 174;166 167;166 174;166 175;167 168;167 175;167 176;168 169;168 176;168 177;169 170;169 177;169 178;170 171;170 178;170 179;171 179;...
           172 173;172 174;172 181;172 182;173 174;173 182;174 175;174 182;174 183;175 176;175 183;175 184;176 177;176 184;176 185;177 178;177 185;177 186;178 179;178 186;178 187;179 180;179 187;179 188;180 188;...
           181 182;181 183;181 190;181 191;182 183;182 191;183 184;183 191;183 192;184 185;184 192;184 193;185 186;185 193;185 194;186 187;186 194;186 195;187 188;187 195;187 196;188 189;188 196;188 197;189 197;...
           190 191;190 192;190 199;190 200;191 192;191 200;192 193;192 200;192 201;193 194;193 201;193 202;194 195;194 202;194 203;195 196;195 203;195 204;196 197;196 204;196 205;197 198;197 205;197 206;198 206;...
           199 200;199 201;199 208;199 209;200 201;200 209;201 202;201 209;201 210;202 203;202 210;202 211;203 204;203 211;203 212;204 205;204 212;204 213;205 206;205 213;205 214;206 207;206 214;206 215;207 215;...
           208 209;208 210;208 1;208 2;209 210;209 2;210 211;210 2;210 3;211 212;211 3;211 4;212 213;212 4;212 5;213 214;213 5;213 6;214 215;214 6;214 7;215 216;215 7;215 8;216 8];
          
% nodes coordinates
nod_coor = [1 0 7;1 0 7.5;3 0 7.25;5 0 6.75;7 0 6;9 0 5;11 0 3.5;13 0 1.5;14 0 0;... 
            0.9659 0.2588 7;0.9659 0.2588 7.5;2.8978 0.7765 7.25;4.8296 1.2941 6.75;6.7615 1.8117 6;8.6933 2.3294 5;10.6252 2.8470 3.5;12.5570 3.3647 1.5;13.5230 3.6235 0;...
            0.866 0.5 7;0.8660 0.5 7.5;2.5981 1.5 7.25;4.3301 2.5 6.75;6.0622 3.5 6;7.7942 4.5 5;9.5263 5.5 3.5;11.2583 6.5 1.5;12.1244 7 0;...
            0.7071 0.7071 7;0.7071 0.7071 7.5;2.1213 2.1213 7.25;3.5355 3.5355 6.75;4.9498 4.9498 6;6.3640 6.3640 5;7.7782 7.7782 3.5;9.1924 9.1924 1.5;9.8995 9.8995 0;... 
            0.5 0.866 7;0.5 0.866 7.5;1.5 2.5981 7.25;2.5 4.3301 6.75;3.5 6.0622 6;4.5 7.7942 5;5.5 9.5263 3.5;6.5 11.2583 1.5;7 12.1244 0;...
            0.2588 0.9659 7;0.2588 0.9659 7.5;0.7765 2.8978 7.25;1.2941 4.8296 6.75;1.8117 6.7615 6;2.3294 8.6933 5;2.847 10.6252 3.5;3.3647 12.557 1.5;3.6235 13.523 0;...
            0 1 7;0 1 7.5;0 3 7.25;0 5 6.75;0 7 6;0 9 5;0 11 3.5;0 13 1.5;0 14 0;...
            -0.2588 0.9659 7;-0.2588 0.9659 7.5;-0.7765 2.8978 7.25;-1.2941 4.8296 6.75;-1.8117 6.7615 6;-2.3294 8.6933 5;-2.847 10.6252 3.5;-3.3646 12.557 1.5;-3.6235 13.523 0;... 
            -0.5 0.866 7;-0.5 0.866 7.5;-1.5 2.5981 7.25;-2.5 4.3301 6.75;-3.5 6.0622 6;-4.5 7.7942 5;-5.5 9.5263 3.5;-6.5 11.2583 1.5;-7 12.1244 0;...     
            -0.7071 0.7071 7;-0.7071 0.7071 7.5;-2.1213 2.1213 7.25;-3.5355 3.5355 6.75;-4.9498 4.9498 6;-6.364 6.364 5;-7.7782 7.7782 3.5;-9.1924 9.1924 1.5;-9.8995 9.8995 0;...  
            -0.866 0.5 7;-0.866 0.5 7.5;-2.5981 1.5 7.25;-4.3301 2.5 6.75;-6.0622 3.5 6;-7.7942 4.5 5;-9.5263 5.5 3.5;-11.2583 6.5 1.5;-12.1244 7 0;...  
            -0.9659 0.2588 7;-0.9659 0.2588 7.5;-2.8978 0.7765 7.25;-4.8296 1.2941 6.75;-6.7615 1.8117 6;-8.6933 2.3294 5;-10.6252 2.847 3.5;-12.557 3.3646 1.5;-13.523 3.6235 0;...
            -1 0 7;-1 0 7.5;-3 0 7.25;-5 0 6.75;-7 0 6;-9 0 5;-11 0 3.5;-13 0 1.5;-14 0 0;...
            -0.9659 -0.2588 7;-0.9659 -0.2588 7.5;-2.8978 -0.7765 7.25;-4.8296 -1.2941 6.75;-6.7615 -1.8117 6;-8.6933 -2.3294 5;-10.6252 -2.847 3.5;-12.557 -3.3647 1.5;-13.523 -3.6235 0;...
            -0.866 -0.5 7;-0.866 -0.5 7.5;-2.5981 -1.5 7.25;-4.3301 -2.5 6.75;-6.0622 -3.5 6;-7.7942 -4.5 5;-9.5263 -5.5 3.5;-11.2583 -6.5 1.5;-12.1244 -7 0;...
            -0.7071 -0.7071 7;-0.7071 -0.7071 7.5;-2.1213 -2.1213 7.25;-3.5355 -3.5355 6.75;-4.9497 -4.9497 6;-6.364 -6.364 5;-7.7782 -7.7782 3.5;-9.1924 -9.1924 1.5;-9.8995 -9.8995 0;... 
            -0.5 -0.866 7;-0.5 -0.866 7.5;-1.5 -2.5981 7.25;-2.5 -4.3301 6.75;-3.5 -6.0622 6;-4.5 -7.7942 5;-5.5 -9.5263 3.5;-6.5 -11.2583 1.5;-7 -12.1244 0;...   
            -0.2588 -0.9659 7;-0.2588 -0.9659 7.5;-0.7765 -2.8978 7.25;-1.2941 -4.8296 6.75;-1.8117 -6.7615 6;-2.3294 -8.6933 5;-2.847 -10.6252 3.5;-3.3646 -12.557 1.5;-3.6235 -13.523 0;...
             0 -1 7;0 -1 7.5;0 -3 7.25;0 -5 6.75;0 -7 6;0 -9 5;0 -11 3.5;0 -13 1.5;0 -14 0;...
             0.2588 -0.9659 7;0.2588 -0.9659 7.5;0.7765 -2.8978 7.25;1.2941 -4.8296 6.75;1.8117 -6.7615 6;2.3294 -8.6933 5;2.847 -10.6252 3.5;3.3646 -12.557 1.5;3.6235 -13.523 0;... 
             0.5 -0.866 7;0.5 -0.866 7.5;1.5 -2.5981 7.25;2.5 -4.3301 6.75;3.5 -6.0622 6;4.5 -7.7942 5;5.5 -9.5263 3.5;6.5 -11.2583 1.5;7 -12.1244 0;...
             0.7071 -0.7071 7;0.7071 -0.7071 7.5;2.1213 -2.1213 7.25;3.5355 -3.5355 6.75;4.9498 -4.9498 6;6.364 -6.364 5;7.7782 -7.7782 3.5;9.1924 -9.1924 1.5;9.8995 -9.8995 0;... 
             0.866 -0.5 7;0.866 -0.5 7.5;2.5981 -1.5 7.25;4.3301 -2.5 6.75;6.0622 -3.5 6;7.7942 -4.5 5;9.5263 -5.5 3.5;11.2583 -6.5 1.5;12.1244 -7 0;...
             0.9659 -0.2588 7;0.9659 -0.2588 7.5;2.8978 -0.7765 7.25;4.8296 -1.2941 6.75;6.7615 -1.8117 6;8.6933 -2.3294 5;10.6252 -2.847 3.5;12.557 -3.3646 1.5;13.523 -3.6235 0];
L = zeros(num_ele,1);
W = 0;
for ii = 1:num_ele
    index1 = ele_nod(ii,1); 
    index2 = ele_nod(ii,2);
    dx = nod_coor(index2,1)-nod_coor(index1,1);
    dy = nod_coor(index2,2)-nod_coor(index1,2);
    dz = nod_coor(index2,3)-nod_coor(index1,3);
    % compute length of each bar
    L(ii) = sqrt(dx^2+dy^2+dz^2);
    % compute weight of structure
    W = W + rho*L(ii)*A(ii);
end
% constraint
[ineq,eq] = Cstr600(x);
% Set inequality constraint g(x) <= 0
 g = ineq;
% Set equality constraint h(x) = 0
if ~isempty(eq) 
    h = eq; 
    else h = []; 
end
%compute the degree of constraint violations according to 'normalization'
if ~isempty(h)
    delta = 0; % the error of equal constraints
    f2 = sum(max(0,g),2) + sum(max(0,abs(h)- delta),2);
else
    f2 = sum(max(0,g),2);
end

% Obtain the fitness
maxit = 900;
eps1 = 1;
for it=1:maxit
eps2 = 1.5 + 1.5 *(it/maxit);
fpenalty = (1+eps1*f2).^eps2;
end
W = W.*fpenalty; 
end

end