--// Obfuscated by Obj v2

local t=string.byte;local r=string.char;local c=string.sub;local G=table.concat;local B=math.ldexp;local K=getfenv or function()return _ENV end;local l=setmetatable;local C=select;local f=unpack;local i=tonumber;local function h(f)local e,o,n="","",{}local a=256;local d={}for l=0,a-1 do d[l]=r(l)end;local l=1;local function t()local e=i(c(f,l,l),36)l=l+1;local o=i(c(f,l,l+e-1),36)l=l+e;return o end;e=r(t())n[1]=e;while l<#f do local l=t()if d[l]then o=d[l]else o=e..c(e,1,1)end;d[a]=e..c(o,1,1)n[#n+1],e,a=o,o,a+1 end;return table.concat(n)end;local a=h('21821A21827621927627621727921821227923J22G22522G22H22N23321V22022127827C21821X23021821427923227N22D21827B27622M22122L22H22122N22G21821B27923D22M21S21821627922P22122G21W27N27R1Y27926V2181C21824B28R21028U24421027626Y1C26425V24428U21827321823G21824427926B21822429D27926F2181S29J27626C29129D29124S26P27925T27629U21829529X21824S26E1K29523Q1K27626Z1C28U25Y29826V21G28U24S21G27626V21O27624J2AN21826R29R25329R2752792AW27627W27622322521T22127D27922Z28L23J22122M22I21X22722128I29221029524U29R26Z21O28Z2AQ26B29R2902AA2AK29D2BV26Z27929E2762AS2762BT21823427C2B021822J22521X28A2C82B22B421829R21822T22N22O21V22527O22021821Q27921X22N23722N21X22M21W22H22M22G23722721S21V22N2D12B528221823J2CY2D02D22181W27922K22122622723722122C22122722H22G2B52DI27623G22M21V22G21V23J21T22522N21W2BB28B27922N22D21U21821127F2EC22522K22N2211C2382182132EA2DR2D92372D62CO2CH27F22121U22G21X21U22128G2EP27622V23I22Q22O23722O22R23122W22X22W27V27922V22M21U2F427F22R22Q2312FB2FD2FF2FH2C823J21V21U22521821L2FJ21X2201C22J2CC21W1C2E62CC1C2DP22K2D62CC2EO27922S22G22G22K2BA2BC2BE2B527E2762B822G2GO2BD2BF2GI27623F2DL28N21V21Z23723D23I22O21828027621W2GL2EJ1M13132202CU22721V22M220122HL21T132EI21X1322J2H221V2H422N131T1S1O1L1S1R1U2I61U1V1T1R1O1K2I21S1S1322P21U23A22022Q22W22I1L22V22G22J23C22G23A1U22323222Z2EC22323723722G22T2J522M1V22R2331O23922723J22621V1T22T22T22E22522622G21U22E2222201Q22G23C23122S22L23H22Z22Y22O21S22H23I22J23I22X22Q2212332372DH2792HD2GM23728428628828A2DB2KJ2872892GZ2DC2K923C22T22Q22X2FA23E1U2E927628E28G21N2KF2HE22N2HG132KG22K2262F1122HM2231322328L28H28J28L28N2CQ28C2GT22X23C2FI27627Y2202802GS21822U23J2FP22W2DR27N2B51Z2EG21U1122Y2F12LJ22M22K22M2F128A2DW21822X22C2GF21V2CC1122Z22H2G42G12792DY2E021V1123D2EK22M1122T27O2EZ21X22221X2E821K2EX2N72F221S2MB2MD2BB2MG2MI27R2LU2182F222C2KM2KF2212CO2BB22N2NN23G22R23J2LT2DB22S2NT27O22M2NW2MK27M2EZ2EY22G1123C22D2DK2182AQ2182EI2GF2BE27I21X2FY1321Y22N2FY2B62762M12FP22X21U2HL27O2812792HL2OA2EZ2LL27622121T2262212202NW2152792F022G21S2B51E279161623921V2D12GA2272MH22K22G1C21W2E51C2PB2EY2GD2DQ2DS2DU2201D2PN2KR27O22N2PT21X2PV2OO2ED2DB23G21S22522D2NV2KR2CM22722521S2QJ2QL2E82C822Q2B32B521C2792PX2PZ2DP2ER2Q61C28M2EL2QC2PU2PW2FY28U2CS27622P22522M21Z28L2GF2252BF2GW2GQ21828Q2GT28L2MX22022H2272J621U22221V2P22DX2QK2BF2N52NN22G2OF2B52C82MH22721W2182PF2762HL2D622M2EW2762E121U22H2PA2BB27Q21825O25V25V21V2312P72182N92F32PD2NN2FZ2CG2LZ2QT2BF1C22T22W1C1M2SG27922I2QR2872T02F121S2F122121B2782MK22W2CU2RM22D2QX2B42TF2F52182TT22N2TV2TX2B52EF2L22N22T62212TF2CI2N12BB2TB2202TF2BH2182UE22M2S71X2792312272HL22H2EZ1C2312LJ2TE2OU2182UQ2US2EZ2UW2B52CI2MM2MO2CC2TF2LZ2EU2PD22G2MH21U2232S32182GK2GM2GU2CJ2L62GM2L82HH22M22522J122232G822H22627K2BB2P42DU2EZ2HP21V2HR2QL2B42EZ1323I21V2262D622C1123J2QD2PV2I02E42F12LI2QY2TN289122K42G02DB2LJ22G2LJ21U22I2L12182VM2MK2EK22G2B427H27H2WE2DA2792J42F127O22C21821P2792KK2872372FY2J52F322122K2HM28A2422R12AC2XW1C2842DK27I2G62CB22G14151C2UT2F021S1C2CF2UB2CK2CM2NU2202Y52Y22CC141P2Y62NK2EZ141E2GW2BB22S21V2DK2G52HM2XY22121Y2MP2F22201E152122XX2XW2VC2892VF223142YC1M2VK22K2GU141B2LB2VQ132VS2VU2VW28M2VY2W022M2W22OB2W52W722D2W922G2WB2WD2WF2WH2WJ22G2WL2CB21U132VC2WS22H2251B15152Y52TG27622K2CB2O6310L2X22QY2NW2LZ27G2RI2DU22M2MS21X2VI2BA22G27M2842OH2ND2IN2E02N82OM2F02OT2SH21823C2CC2PJ2NN23C2DP28A2RF2182YF2HJ2VG2R72E72PS2RB2SM2U12D12ON2FY2ST2791827U1927922Y2CB2PJ2G523C21W2CU2YB2QY1C312D21U2E02GA22H22K2XR2D22PC1C2QM22G21K27Q26Q2BJ25V24X29R2AS2AN23X29R26Q21O2952442AQ26R29M29O2AR2BO29D2AQ26O26C2M824426C25V22B26P26K2SW25T313O22B26Q294312X29826O2BV2422AK29U313525V25T2AN24S26Q142A714276313X2XI25S21G2193141265314321O314G26Q1S29524X29N21826O2982422AI26P21G2A1314026Q2A625V2A8314B29R24229T29V2762A229U26S2A126S2A326Q230314O27U314R313Y314026P31423144315F22S2A722S314B24C2AN25S24C2A326P23O2A123O315F23G314O29C314R210315W315729W29Y315N2A1314526Q2382A72EN314R22C315W2XG29U22K2A122K315F224314O29I3168316A315Z316C315Z315O316G21W2A72SF314R230315W27U29U315125T2A93146316Q312X316S314R314T314V314X3143314Z22C2A72XG31682763156316Z3159316D2A0314329Y26Q24S2A724S27626U314224X2AQ26V28Y21924D29R27224K313624K2AL2AH2BW3185318G296318I21826U23W313623W3185250313625031853161296316321826Y315H296315J26W316929S317V218315A316E314J2A33194315I2AL21O22421925X2AQ26P313U25T2AI26Y244314O2C03198316Y29Z317W316Z2A129Y26U317Y2C021826Z29R25629R29A28U318Y27627326K25821924426K31AF27024C31AJ2702AA313D313731AR26K31AJ2AQ272314231AT2992AH31AJ2BV26E318N244318P273318K2442BV31B927031B327626F2AQ2562AQ31B928U2432BV26B29829727626E264313626427626I25W313625W27626M218314I29E27825U21031C521027831BP2AN31BR21826E21O314I23Q314K21826I21G314I24X314F21826N29825629825V315J24A315J26P314N314329N24S26721G23021A25X2BV267238318U23O316K264315L3171316F2A331D631D831DA31BG31DD21831DF27626P312W25T29T26J28T21824Z27926P24C313P31E422B26I319524X315J26J1S319L255314Q26N21827U31A625U318W29631AE26N26K318431AK27626N27023G21A24431AQ21825V311631A625V1K24T31EX1K27826N1S24T29D1S31C731B6318P31CX25831EX315J26331DZ31A626323G1D31EX23G2782672BS29R25F29B313B25F22427131EX319L21825I31AZ2AQ25J317431EX317631GA28B24431GD21W21O21B31GG27625M25831C531AI21825Q31G827625R22C1C31AJ317R25225031C525027825R31BA2BV31GV23031GK31GZ31GT21825324K23G31GK318P31H528Z31H7316M31HA27631GA31BW31GL21825F22K27129D22K27825F24C22L31GK31AO31G626C31C526C27825M27031C531BE21825J31AS2AQ25F26K31HV31AK27825J314Q244314Q25N313A31A625N25O27131GK25O27831GS31362AQ31GV31HG244317R25N26426529D26427825N25W21921424431JD21825R31IR27925R25O21P31JF31IX21824Y31HC24Z318231EX318431E0318431GK31JX31JU1C31JF31JX25R31JA31AJ31JA31JI31JD31JF31JH31E129N31A624Z25O1T31JP27825231HC31HE26431EX318P31HE31GF31KR24K31GJ31B727624Z26421P31K827824Z31KB31JG27825331JK27625325O23131KK21831BJ31J027625725831KP24425831LI31LN31GK31LN21831LJ23G31JF31LR2532641D31L231HD31L531JH25731L931LS25O22531LE25A31HC25B318W31EX31AE31MC31GF31MF25022K31JF31AE2572641T31M025731M227825B31M525B25O24T31LE25B31K9319U31MT31MS31ID1S31CE314Q25F26S31HV24S26S31FU319925229R26323824D2A323827825V318K23W2BV26N25O31ER25O27626J31IF31C222S26629622S27525U31HC31CX23W31JF315J26223831O124423827531NO2C331NR31FN27926N28Y319A21825U22431O124X22431OG31ON23Y29R25Y22K31OS22K27531FM27631FC276267311631P621825E312W2C426722C31C325922C27525Z31H627625V21W25A29D21W31O424S31OD24S27525S31FW319B319D31D225T31D425U31E9315J25S317K315Z317M25T314031Q5319I31F027U21525X315J25Y24K31O123Q24K31OG313D25Y2AQ25Y25831OS31FJ21826225031OS25031PK21O27U31QS31DT23O314I25T23O314G25M31872AQ25N22K31HG25X317I25C21031NV24Y316B31A029U26K2A131AL24S31RD314O31RF22K230215240317I31RG23G215244317I24Y24C31OD24C27531L831KF27931LG2962AQ31LJ31GX31LM27624I31H131EN27825731PM31LS25831H931SM21824I31HC24J23W31RI318U31LS318K23T2BV31LJ31KW31LW2441E31AJ24431SD26K25A31S626K31SD27024E31S627027525N1C31CE29825M31O031O227531IZ31SI31GU22C31O831J431LA317631HR31H52762512BV31IQ28U24727925N319924M29R31RW312X31RY31RI31RK31RM31F031RP319C316D31LK314331LN31RV31RE27631RG31S031S231UZ31RH31S631S831SA29631SC31HD31M531SH31B031SK31AJ31LR31SO31H231SR31ST31LJ31SW31VG31T031T221B25X31T431SS28U25U31T825831TA31LA31TC31TE31TG26M31TJ31TL31TN31EY31TQ31TS29D2982C231OO25Z31DZ31E131DT1K25U314331WI22B31WC2AU276');local n=bit and bit.bxor or function(l,o)local e,n=1,0 while l>0 and o>0 do local c,a=l%2,o%2 if c~=a then n=n+e end l,o,e=(l-c)/2,(o-a)/2,e*2 end if l<o then l=o end while l>0 do local o=l%2 if o>0 then n=n+e end l,e=(l-o)/2,e*2 end return n end local function e(e,l,o)if o then local l=(e/2^(l-1))%2^((o-1)-(l-1)+1);return l-l%1;else local l=2^(l-1);return(e%(l+l)>=l)and 1 or 0;end;end;local l=1;local function o()local o,e,c,a=t(a,l,l+3);o=n(o,44)e=n(e,44)c=n(c,44)a=n(a,44)l=l+4;return(a*16777216)+(c*65536)+(e*256)+o;end;local function d()local e=n(t(a,l,l),44);l=l+1;return e;end;local function i()local l=o();local n=o();local c=1;local o=(e(n,1,20)*(2^32))+l;local l=e(n,21,31);local e=((-1)^e(n,32));if(l==0)then if(o==0)then return e*0;else l=1;c=0;end;elseif(l==2047)then return(o==0)and(e*(1/0))or(e*(0/0));end;return B(e,l-1023)*(c+(o/(2^52)));end;local B=o;local function h(e)local o;if(not e)then e=B();if(e==0)then return'';end;end;o=c(a,l,l+e-1);l=l+e;local e={}for l=1,#o do e[l]=r(n(t(c(o,l,l)),44))end return G(e);end;local l=o;local function r(...)return{...},C('#',...)end local function D()local f={0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0};local l={0,0};local c={};local a={f,nil,l,nil,c};a[4]=d();for e=1,o()do l[e-1]=D();end;local l=o()local c={0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0};for o=1,l do local e=d();local l;if(e==3)then l=(d()~=0);elseif(e==1)then l=i();elseif(e==0)then l=h();end;c[o]=l;end;a[2]=c for a=1,o()do local c=n(o(),223);local o=n(o(),184);local n=e(c,1,2);local l=e(o,1,11);local l={l,e(c,3,11),nil,nil,o};if(n==0)then l[3]=e(c,12,20);l[5]=e(c,21,29);elseif(n==1)then l[3]=e(o,12,33);elseif(n==2)then l[3]=e(o,12,32)-1048575;elseif(n==3)then l[3]=e(o,12,32)-1048575;l[5]=e(c,21,29);end;f[a]=l;end;return a;end;local function s(l,e,t)local o=l[1];local n=l[2];local e=l[3];local l=l[4];return function(...)local c=o;local n=n;local B=e;local a=l;local h=r local e=1;local d=-1;local G={};local i={...};local r=C('#',...)-1;local l={};local o={};for l=0,r do if(l>=a)then G[l-a]=i[l+1];else o[l]=i[l+1];end;end;local l=r-a+1 local l;local a;while true do l=c[e];a=l[1];if a<=36 then if a<=17 then if a<=8 then if a<=3 then if a<=1 then if a>0 then local n=l[2];local c=d;local e={};local l=0;for n=n,c do l=l+1;e[l]=o[n];end;do return f(e,1,l)end;else o[l[2]]=s(B[l[3]],nil,t);end;elseif a==2 then local c=l[2];local e=o[l[3]];o[c+1]=e;o[c]=e[n[l[5]]];else local n=l[2];local a={};local e=0;local c=d;for l=n+1,c do e=e+1;a[e]=o[l];end;local c={o[n](f(a,1,c-n))};local l=n+l[5]-2;e=0;for l=n,l do e=e+1;o[l]=c[e];end;d=l;end;elseif a<=5 then if a==4 then local G;local C;local i;local A;local r;local a;o[l[2]]=o[l[3]][n[l[5]]];e=e+1;l=c[e];a=l[2];r=o[l[3]];o[a+1]=r;o[a]=r[n[l[5]]];e=e+1;l=c[e];o[l[2]]=n[l[3]];e=e+1;l=c[e];o[l[2]]={};e=e+1;l=c[e];o[l[2]]=t[n[l[3]]];e=e+1;l=c[e];a=l[2];r=o[l[3]];o[a+1]=r;o[a]=r[n[l[5]]];e=e+1;l=c[e];o[l[2]]=n[l[3]];e=e+1;l=c[e];a=l[2];A={};i=0;C=a+l[3]-1;for l=a+1,C do i=i+1;A[i]=o[l];end;G={o[a](f(A,1,C-a))};C=a+l[5]-2;i=0;for l=a,C do i=i+1;o[l]=G[i];end;d=C;e=e+1;l=c[e];a=l[2];r=o[l[3]];o[a+1]=r;o[a]=r[n[l[5]]];e=e+1;l=c[e];o[l[2]]=t[n[l[3]]];else local n=l[2];local a={};local e=0;local c=d;for l=n+1,c do e=e+1;a[e]=o[l];end;local c={o[n](f(a,1,c-n))};local l=n+l[5]-2;e=0;for l=n,l do e=e+1;o[l]=c[e];end;d=l;end;elseif a<=6 then if o[l[2]]then e=e+1;else e=e+l[3];end;elseif a==7 then local G;local A;local C;local r;local t;local i;local a;a=l[2];i={};t=0;r=a+l[3]-1;for l=a+1,r do t=t+1;i[t]=o[l];end;C={o[a](f(i,1,r-a))};r=a+l[5]-2;t=0;for l=a,r do t=t+1;o[l]=C[t];end;d=r;e=e+1;l=c[e];o[l[2]]={unpack({},1,l[3])};e=e+1;l=c[e];o[l[2]]=n[l[3]];e=e+1;l=c[e];o[l[2]]=n[l[3]];e=e+1;l=c[e];o[l[2]]=n[l[3]];e=e+1;l=c[e];o[l[2]]=n[l[3]];e=e+1;l=c[e];a=l[2];A=o[a];G=l[3];for l=1,G do A[l]=o[a+l]end;else o[l[2]]={unpack({},1,l[3])};end;elseif a<=12 then if a<=10 then if a==9 then local G;local i;local r;local C;local A;local a;a=l[2];A=o[l[3]];o[a+1]=A;o[a]=A[n[l[5]]];e=e+1;l=c[e];o[l[2]]=n[l[3]];e=e+1;l=c[e];a=l[2];C={};r=0;i=a+l[3]-1;for l=a+1,i do r=r+1;C[r]=o[l];end;G={o[a](f(C,1,i-a))};i=a+l[5]-2;r=0;for l=a,i do r=r+1;o[l]=G[r];end;d=i;e=e+1;l=c[e];t[n[l[3]]]=o[l[2]];e=e+1;l=c[e];o[l[2]]=n[l[3]];e=e+1;l=c[e];t[n[l[3]]]=o[l[2]];e=e+1;l=c[e];o[l[2]]=t[n[l[3]]];e=e+1;l=c[e];o[l[2]]=t[n[l[3]]];e=e+1;l=c[e];if not o[l[2]]then e=e+1;else e=e+l[3];end;else o[l[2]]={};end;elseif a==11 then for l=l[2],l[3]do o[l]=nil;end;else o[l[2]]=t[n[l[3]]];end;elseif a<=14 then if a==13 then local e=l[2];local c={};local n=0;local l=e+l[3]-1;for l=e+1,l do n=n+1;c[n]=o[l];end;o[e](f(c,1,l-e));d=e;else for l=l[2],l[3]do o[l]=nil;end;end;elseif a<=15 then o[l[2]]={};e=e+1;l=c[e];o[l[2]][n[l[3]]]=n[l[5]];e=e+1;l=c[e];o[l[2]]=t[n[l[3]]];e=e+1;l=c[e];o[l[2]]=o[l[3]][n[l[5]]];e=e+1;l=c[e];o[l[2]]=o[l[3]][n[l[5]]];e=e+1;l=c[e];o[l[2]]=o[l[3]][n[l[5]]];e=e+1;l=c[e];if o[l[2]]then e=e+1;else e=e+l[3];end;elseif a==16 then o[l[2]]=o[l[3]][o[l[5]]];else o[l[2]]();d=A;end;elseif a<=26 then if a<=21 then if a<=19 then if a>18 then local e=l[2];local n=o[e];local l=l[3];for l=1,l do n[l]=o[e+l]end;else o[l[2]]=n[l[3]];end;elseif a==20 then o[l[2]][n[l[3]]]=o[l[5]];else local e=l[2];local c=o[l[3]];o[e+1]=c;o[e]=c[n[l[5]]];end;elseif a<=23 then if a==22 then local n=l[2];local c={};local e=0;local a=n+l[3]-1;for l=n+1,a do e=e+1;c[e]=o[l];end;local c={o[n](f(c,1,a-n))};local l=n+l[5]-2;e=0;for l=n,l do e=e+1;o[l]=c[e];end;d=l;else t[n[l[3]]]=o[l[2]];end;elseif a<=24 then local a,a;local G;local A;local i;local a;local C;local r;r=l[2];C={};a=0;i=r+l[3]-1;for l=r+1,i do a=a+1;C[a]=o[l];end;A={o[r](f(C,1,i-r))};i=r+l[5]-2;a=0;for l=r,i do a=a+1;o[l]=A[a];end;d=i;e=e+1;l=c[e];o[l[2]][n[l[3]]]=o[l[5]];e=e+1;l=c[e];r=l[2];C={};a=0;i=r+l[3]-1;for l=r+1,i do a=a+1;C[a]=o[l];end;A={o[r](f(C,1,i-r))};i=r+l[5]-2;a=0;for l=r,i do a=a+1;o[l]=A[a];end;d=i;e=e+1;l=c[e];o[l[2]]=t[n[l[3]]];e=e+1;l=c[e];o[l[2]]=t[n[l[3]]];e=e+1;l=c[e];r=l[2];G=o[l[3]];o[r+1]=G;o[r]=G[n[l[5]]];e=e+1;l=c[e];o[l[2]]=n[l[3]];e=e+1;l=c[e];r=l[2];C={};a=0;i=r+l[3]-1;for l=r+1,i do a=a+1;C[a]=o[l];end;A,i=h(o[r](f(C,1,i-r)));i=i+r-1;a=0;for l=r,i do a=a+1;o[l]=A[a];end;d=i;e=e+1;l=c[e];r=l[2];C={};a=0;i=d;for l=r+1,i do a=a+1;C[a]=o[l];end;A={o[r](f(C,1,i-r))};i=r+l[5]-2;a=0;for l=r,i do a=a+1;o[l]=A[a];end;d=i;e=e+1;l=c[e];r=l[2];A,i={o[r]()};i=r+l[5]-2;a=0;for l=r,i do a=a+1;o[l]=A[a];end;d=i;elseif a>25 then local e=l[2];local c,n={o[e]()};local n=e+l[5]-2;local l=0;for e=e,n do l=l+1;o[e]=c[l];end;d=n;else local G;local i;local r;local A;local C;local a;o[l[2]]();d=a;e=e+1;l=c[e];o[l[2]]=t[n[l[3]]];e=e+1;l=c[e];a=l[2];C=o[l[3]];o[a+1]=C;o[a]=C[n[l[5]]];e=e+1;l=c[e];a=l[2];A={};r=0;i=a+l[3]-1;for l=a+1,i do r=r+1;A[r]=o[l];end;G={o[a](f(A,1,i-a))};i=a+l[5]-2;r=0;for l=a,i do r=r+1;o[l]=G[r];end;d=i;e=e+1;l=c[e];if o[l[2]]then e=e+1;else e=e+l[3];end;end;elseif a<=31 then if a<=28 then if a==27 then do return end;else if(o[l[2]]==o[l[5]])then e=e+1;else e=e+l[3];end;end;elseif a<=29 then local A;local G;local i;local r;local C;local a;a=l[2];C={};r=0;i=a+l[3]-1;for l=a+1,i do r=r+1;C[r]=o[l];end;G={o[a](f(C,1,i-a))};i=a+l[5]-2;r=0;for l=a,i do r=r+1;o[l]=G[r];end;d=i;e=e+1;l=c[e];o[l[2]]=o[l[3]][n[l[5]]];e=e+1;l=c[e];o[l[2]][n[l[3]]]=o[l[5]];e=e+1;l=c[e];o[l[2]][n[l[3]]]=n[l[5]];e=e+1;l=c[e];o[l[2]][n[l[3]]]=n[l[5]];e=e+1;l=c[e];a=l[2];C={};r=0;i=a+l[3]-1;for l=a+1,i do r=r+1;C[r]=o[l];end;o[a](f(C,1,i-a));d=a;e=e+1;l=c[e];o[l[2]]=t[n[l[3]]];e=e+1;l=c[e];o[l[2]]=t[n[l[3]]];e=e+1;l=c[e];a=l[2];A=o[l[3]];o[a+1]=A;o[a]=A[n[l[5]]];e=e+1;l=c[e];o[l[2]]=o[l[3]];elseif a==30 then local e=l[2];local n={};local l=e+l[3]-1;for l=e+1,l do n[#n+1]=o[l];end;do return o[e](f(n,1,l-e))end;else local e=l[2];local n={};local l=e+l[3]-1;for l=e+1,l do n[#n+1]=o[l];end;do return o[e](f(n,1,l-e))end;end;elseif a<=33 then if a>32 then local n=l[2];local c={};local e=0;local l=n+l[3]-1;for l=n+1,l do e=e+1;c[e]=o[l];end;local c,l=h(o[n](f(c,1,l-n)));l=l+n-1;e=0;for l=n,l do e=e+1;o[l]=c[e];end;d=l;else local C;local G;local i;local r;local A;local a;o[l[2]]={};e=e+1;l=c[e];o[l[2]][n[l[3]]]=n[l[5]];e=e+1;l=c[e];o[l[2]][n[l[3]]]=n[l[5]];e=e+1;l=c[e];a=l[2];A={};r=0;i=a+l[3]-1;for l=a+1,i do r=r+1;A[r]=o[l];end;G={o[a](f(A,1,i-a))};i=a+l[5]-2;r=0;for l=a,i do r=r+1;o[l]=G[r];end;d=i;e=e+1;l=c[e];o[l[2]]=o[l[3]][n[l[5]]];e=e+1;l=c[e];o[l[2]]=t[n[l[3]]];e=e+1;l=c[e];a=l[2];C=o[l[3]];o[a+1]=C;o[a]=C[n[l[5]]];e=e+1;l=c[e];o[l[2]]=n[l[3]];e=e+1;l=c[e];a=l[2];A={};r=0;i=a+l[3]-1;for l=a+1,i do r=r+1;A[r]=o[l];end;G={o[a](f(A,1,i-a))};i=a+l[5]-2;r=0;for l=a,i do r=r+1;o[l]=G[r];end;d=i;e=e+1;l=c[e];a=l[2];C=o[l[3]];o[a+1]=C;o[a]=C[n[l[5]]];end;elseif a<=34 then local e=l[2];local n=o[e];local l=l[3];for l=1,l do n[l]=o[e+l]end;elseif a>35 then o[l[2]]=s(B[l[3]],nil,t);else do return end;end;elseif a<=55 then if a<=45 then if a<=40 then if a<=38 then if a>37 then if(o[l[2]]~=o[l[5]])then e=e+1;else e=e+l[3];end;else o[l[2]]=t[n[l[3]]];end;elseif a>39 then local e=l[2];local c={};local n=0;local l=e+l[3]-1;for l=e+1,l do n=n+1;c[n]=o[l];end;o[e](f(c,1,l-e));d=e;else local n=l[2];local c=l[5];local l=n+2;local a={o[n](o[n+1],o[l])};for e=1,c do o[l+e]=a[e];end;local n=o[n+3];if n then o[l]=n else e=e+1;end;end;elseif a<=42 then if a>41 then if not o[l[2]]then e=e+1;else e=e+l[3];end;else local A;local i;local a;local C;local r;o[l[2]][n[l[3]]]=o[l[5]];e=e+1;l=c[e];r=l[2];C={};a=0;i=r+l[3]-1;for l=r+1,i do a=a+1;C[a]=o[l];end;A={o[r](f(C,1,i-r))};i=r+l[5]-2;a=0;for l=r,i do a=a+1;o[l]=A[a];end;d=i;e=e+1;l=c[e];o[l[2]][n[l[3]]]=o[l[5]];e=e+1;l=c[e];o[l[2]]=t[n[l[3]]];e=e+1;l=c[e];if o[l[2]]then e=e+1;else e=e+l[3];end;end;elseif a<=43 then local G;local C;local i;local A;local r;local a;o[l[2]]=o[l[3]][n[l[5]]];e=e+1;l=c[e];a=l[2];r=o[l[3]];o[a+1]=r;o[a]=r[n[l[5]]];e=e+1;l=c[e];o[l[2]]=n[l[3]];e=e+1;l=c[e];o[l[2]]={};e=e+1;l=c[e];o[l[2]]=t[n[l[3]]];e=e+1;l=c[e];a=l[2];r=o[l[3]];o[a+1]=r;o[a]=r[n[l[5]]];e=e+1;l=c[e];o[l[2]]=n[l[3]];e=e+1;l=c[e];a=l[2];A={};i=0;C=a+l[3]-1;for l=a+1,C do i=i+1;A[i]=o[l];end;G={o[a](f(A,1,C-a))};C=a+l[5]-2;i=0;for l=a,C do i=i+1;o[l]=G[i];end;d=C;e=e+1;l=c[e];a=l[2];r=o[l[3]];o[a+1]=r;o[a]=r[n[l[5]]];e=e+1;l=c[e];o[l[2]]=t[n[l[3]]];elseif a==44 then t[n[l[3]]]=o[l[2]];else local h;local B;local G;local i;local r;local A;local C;local a;o[l[2]]=o[l[3]][n[l[5]]];e=e+1;l=c[e];o[l[2]]={};e=e+1;l=c[e];o[l[2]]=t[n[l[3]]];e=e+1;l=c[e];o[l[2]][n[l[3]]]=o[l[5]];e=e+1;l=c[e];o[l[2]][n[l[3]]]=n[l[5]];e=e+1;l=c[e];o[l[2]]={};e=e+1;l=c[e];o[l[2]][n[l[3]]]=n[l[5]];e=e+1;l=c[e];o[l[2]][n[l[3]]]=o[l[5]];e=e+1;l=c[e];o[l[2]]=t[n[l[3]]];e=e+1;l=c[e];a=l[2];C=o[l[3]];o[a+1]=C;o[a]=C[n[l[5]]];e=e+1;l=c[e];o[l[2]]={};e=e+1;l=c[e];o[l[2]][n[l[3]]]=n[l[5]];e=e+1;l=c[e];o[l[2]]={unpack({},1,l[3])};e=e+1;l=c[e];o[l[2]]={};e=e+1;l=c[e];o[l[2]][n[l[3]]]=n[l[5]];e=e+1;l=c[e];o[l[2]]=t[n[l[3]]];e=e+1;l=c[e];o[l[2]]=o[l[3]][n[l[5]]];e=e+1;l=c[e];o[l[2]]=o[l[3]][n[l[5]]];e=e+1;l=c[e];o[l[2]]=o[l[3]][n[l[5]]];e=e+1;l=c[e];o[l[2]]=n[l[3]];e=e+1;l=c[e];o[l[2]]=t[n[l[3]]];e=e+1;l=c[e];a=l[2];C=o[l[3]];o[a+1]=C;o[a]=C[n[l[5]]];e=e+1;l=c[e];o[l[2]]=n[l[3]];e=e+1;l=c[e];a=l[2];A={};r=0;i=a+l[3]-1;for l=a+1,i do r=r+1;A[r]=o[l];end;G={o[a](f(A,1,i-a))};i=a+l[5]-2;r=0;for l=a,i do r=r+1;o[l]=G[r];end;d=i;e=e+1;l=c[e];a=l[2];C=o[l[3]];o[a+1]=C;o[a]=C[n[l[5]]];e=e+1;l=c[e];o[l[2]]=t[n[l[3]]];e=e+1;l=c[e];o[l[2]]=o[l[3]][n[l[5]]];e=e+1;l=c[e];a=l[2];A={};r=0;i=a+l[3]-1;for l=a+1,i do r=r+1;A[r]=o[l];end;G={o[a](f(A,1,i-a))};i=a+l[5]-2;r=0;for l=a,i do r=r+1;o[l]=G[r];end;d=i;e=e+1;l=c[e];o[l[2]]=o[l[3]][n[l[5]]];e=e+1;l=c[e];C=l[3];B=o[C]for l=C+1,l[5]do B=B..o[l];end;o[l[2]]=B;e=e+1;l=c[e];o[l[2]][n[l[3]]]=o[l[5]];e=e+1;l=c[e];o[l[2]][n[l[3]]]=n[l[5]];e=e+1;l=c[e];o[l[2]]=t[n[l[3]]];e=e+1;l=c[e];o[l[2]]=n[l[3]];e=e+1;l=c[e];a=l[2];A={};r=0;i=a+l[3]-1;for l=a+1,i do r=r+1;A[r]=o[l];end;G={o[a](f(A,1,i-a))};i=a+l[5]-2;r=0;for l=a,i do r=r+1;o[l]=G[r];end;d=i;e=e+1;l=c[e];o[l[2]][n[l[3]]]=o[l[5]];e=e+1;l=c[e];o[l[2]]={unpack({},1,l[3])};e=e+1;l=c[e];o[l[2]]={};e=e+1;l=c[e];o[l[2]][n[l[3]]]=n[l[5]];e=e+1;l=c[e];o[l[2]]=t[n[l[3]]];e=e+1;l=c[e];o[l[2]]=o[l[3]][n[l[5]]];e=e+1;l=c[e];o[l[2]][n[l[3]]]=o[l[5]];e=e+1;l=c[e];o[l[2]][n[l[3]]]=n[l[5]];e=e+1;l=c[e];o[l[2]]={};e=e+1;l=c[e];o[l[2]][n[l[3]]]=n[l[5]];e=e+1;l=c[e];o[l[2]]=t[n[l[3]]];e=e+1;l=c[e];o[l[2]]=o[l[3]][n[l[5]]];e=e+1;l=c[e];o[l[2]]=o[l[3]][n[l[5]]];e=e+1;l=c[e];o[l[2]]=o[l[3]][n[l[5]]];e=e+1;l=c[e];o[l[2]][n[l[3]]]=o[l[5]];e=e+1;l=c[e];o[l[2]][n[l[3]]]=n[l[5]];e=e+1;l=c[e];o[l[2]]={};e=e+1;l=c[e];o[l[2]][n[l[3]]]=n[l[5]];e=e+1;l=c[e];o[l[2]]=t[n[l[3]]];e=e+1;l=c[e];o[l[2]]=o[l[3]][n[l[5]]];e=e+1;l=c[e];o[l[2]]=o[l[3]][n[l[5]]];e=e+1;l=c[e];o[l[2]]=o[l[3]][n[l[5]]];e=e+1;l=c[e];o[l[2]][n[l[3]]]=o[l[5]];e=e+1;l=c[e];o[l[2]][n[l[3]]]=n[l[5]];e=e+1;l=c[e];o[l[2]]={};e=e+1;l=c[e];o[l[2]][n[l[3]]]=n[l[5]];e=e+1;l=c[e];o[l[2]]=t[n[l[3]]];e=e+1;l=c[e];o[l[2]]=o[l[3]][n[l[5]]];e=e+1;l=c[e];o[l[2]]=o[l[3]][n[l[5]]];e=e+1;l=c[e];o[l[2]]=o[l[3]][n[l[5]]];e=e+1;l=c[e];o[l[2]][n[l[3]]]=o[l[5]];e=e+1;l=c[e];o[l[2]][n[l[3]]]=n[l[5]];e=e+1;l=c[e];o[l[2]]={};e=e+1;l=c[e];o[l[2]][n[l[3]]]=n[l[5]];e=e+1;l=c[e];o[l[2]]=t[n[l[3]]];e=e+1;l=c[e];o[l[2]]=o[l[3]][n[l[5]]];e=e+1;l=c[e];o[l[2]]=o[l[3]][n[l[5]]];e=e+1;l=c[e];o[l[2]]=o[l[3]][n[l[5]]];e=e+1;l=c[e];o[l[2]][n[l[3]]]=o[l[5]];e=e+1;l=c[e];o[l[2]][n[l[3]]]=n[l[5]];e=e+1;l=c[e];o[l[2]]={};e=e+1;l=c[e];o[l[2]][n[l[3]]]=n[l[5]];e=e+1;l=c[e];o[l[2]][n[l[3]]]=o[l[5]];e=e+1;l=c[e];o[l[2]][n[l[3]]]=n[l[5]];e=e+1;l=c[e];a=l[2];h=o[a];C=l[3];for l=1,C do h[l]=o[a+l]end;end;elseif a<=50 then if a<=47 then if a>46 then local n=l[2];local a=l[5];local l=n+2;local c={o[n](o[n+1],o[l])};for e=1,a do o[l+e]=c[e];end;local n=o[n+3];if n then o[l]=n else e=e+1;end;else o[l[2]]=o[l[3]];end;elseif a<=48 then o[l[2]]=o[l[3]];elseif a>49 then o[l[2]]();d=A;else o[l[2]]=o[l[3]][o[l[5]]];end;elseif a<=52 then if a>51 then if(o[l[2]]~=o[l[5]])then e=e+1;else e=e+l[3];end;else local e=l[2];local c,n={o[e]()};local n=e+l[5]-2;local l=0;for e=e,n do l=l+1;o[e]=c[l];end;d=n;end;elseif a<=53 then o[l[2]][n[l[3]]]=n[l[5]];elseif a>54 then local e=l[2];local c=e+l[3]-2;local n={};local l=0;for e=e,c do l=l+1;n[l]=o[e];end;do return f(n,1,l)end;else local n=l[3];local e=o[n]for l=n+1,l[5]do e=e..o[l];end;o[l[2]]=e;end;elseif a<=64 then if a<=59 then if a<=57 then if a>56 then o[l[2]]={};else o[l[2]][n[l[3]]]=o[l[5]];end;elseif a==58 then local i;local G;local r;local C;local A;local a;o[l[2]]=t[n[l[3]]];e=e+1;l=c[e];a=l[2];A=o[l[3]];o[a+1]=A;o[a]=A[n[l[5]]];e=e+1;l=c[e];o[l[2]]=o[l[3]];e=e+1;l=c[e];a=l[2];C={};r=a+l[3]-1;for l=a+1,r do C[#C+1]=o[l];end;do return o[a](f(C,1,r-a))end;e=e+1;l=c[e];a=l[2];r=d;G={};i=0;for l=a,r do i=i+1;G[i]=o[l];end;do return f(G,1,i)end;e=e+1;l=c[e];do return end;else o[l[2]]=o[l[3]][n[l[5]]];end;elseif a<=61 then if a==60 then local n=l[3];local e=o[n]for l=n+1,l[5]do e=e..o[l];end;o[l[2]]=e;else local n=l[2];local c={};local e=0;local l=n+l[3]-1;for l=n+1,l do e=e+1;c[e]=o[l];end;local c,l=h(o[n](f(c,1,l-n)));l=l+n-1;e=0;for l=n,l do e=e+1;o[l]=c[e];end;d=l;end;elseif a<=62 then o[l[2]]=n[l[3]];elseif a==63 then local e=l[2];local c=e+l[3]-2;local n={};local l=0;for e=e,c do l=l+1;n[l]=o[e];end;do return f(n,1,l)end;else if o[l[2]]then e=e+1;else e=e+l[3];end;end;elseif a<=69 then if a<=66 then if a==65 then o[l[2]]=o[l[3]][n[l[5]]];else local n=l[2];local a={};local e=0;local c=n+l[3]-1;for l=n+1,c do e=e+1;a[e]=o[l];end;local c={o[n](f(a,1,c-n))};local l=n+l[5]-2;e=0;for l=n,l do e=e+1;o[l]=c[e];end;d=l;end;elseif a<=67 then local n=l[2];local c=d;local e={};local l=0;for n=n,c do l=l+1;e[l]=o[n];end;do return f(e,1,l)end;elseif a==68 then if not o[l[2]]then e=e+1;else e=e+l[3];end;else e=e+l[3];end;elseif a<=71 then if a>70 then if(o[l[2]]==o[l[5]])then e=e+1;else e=e+l[3];end;else local C;local r;local t;local i;local a;a=l[2];i={};t=0;r=a+l[3]-1;for l=a+1,r do t=t+1;i[t]=o[l];end;C={o[a](f(i,1,r-a))};r=a+l[5]-2;t=0;for l=a,r do t=t+1;o[l]=C[t];end;d=r;e=e+1;l=c[e];o[l[2]]=o[l[3]][n[l[5]]];e=e+1;l=c[e];o[l[2]][n[l[3]]]=o[l[5]];e=e+1;l=c[e];o[l[2]][n[l[3]]]=n[l[5]];e=e+1;l=c[e];o[l[2]][n[l[3]]]=n[l[5]];e=e+1;l=c[e];a=l[2];i={};t=0;r=a+l[3]-1;for l=a+1,r do t=t+1;i[t]=o[l];end;o[a](f(i,1,r-a));d=a;e=e+1;l=c[e];do return end;end;elseif a<=72 then o[l[2]]={unpack({},1,l[3])};elseif a>73 then o[l[2]][n[l[3]]]=n[l[5]];else e=e+l[3];end;e=e+1;end;end;end;return s(D(),{},K())();
