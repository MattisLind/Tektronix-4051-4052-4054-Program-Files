100 REM DRAW PROGRAM from fast graphics HEX data110 REM "z" WILL BE THE END OF FILE MARKER111 REM113 REM FIRST CHAR. HAS MOVE FLAG, 3 BIT HI X, 3 BIT HI Y114 REM SECOND CHAR. HAS 7 BIT LO X, THIRD HAS 7 BIT LO Y115 PAGE116 V=1120 READ G$130 C$=SEG(G$,1,1)140 IF C$<>"z" THEN 170150 HOME160 END170 F1=LEN(G$)/6180 FOR I=0 TO F1-1190 H$=SEG(G$,I*6+1,6)3210 P=13220 X$=SEG(H$,P,2)3225 GOSUB 33903226 A$=Y$3230 X$=SEG(H$,P+2,2)3233 GOSUB 33903235 B$=Y$3240 X$=SEG(H$,P+4,2)3242 GOSUB 33903243 C$=Y$3250 A=ASC(A$)3260 IF A=>64 THEN 32903270 M=203280 GO TO 33103290 M=213295 V=V+13300 A=A-643310 X=INT(A/8)*1283320 Y=INT(A-X/16)*128+ASC(C$)3330 X=X+ASC(B$)3331 IF M<>21 THEN 33403340 PRINT @32,M:X*130/1023,Y*100/8003350 P=P+63360 IF P<=LEN(X$)-2 THEN 32203350 NEXT I3360 GOTO 1203390 REM SUBROUTINE TO CONVERT X1$ TWO CHARACTER HEX TO ONE CHAR X2$3400 Q$=SEG(X$,1,1)3410 Q1=ASC(Q$)-483412 IF Q1<10 THEN 34203414 Q1=Q1-73420 Q$=SEG(X$,2,1)3422 Q2=ASC(Q$)-483424 IF Q2<10 THEN 34303426 Q2=Q2-73430 Q1=Q1*16+Q23440 Y$=CHR(Q1)3450 RETURN9000 DATA "553F78153B75155366156855154C41152C35151C31151631151340150C6A"9005 DATA "0D71690D566E0D4C6F0D44730D5D7C0D797F151F7E1544761567661D044D"9010 DATA "1D0E3D1D162C1D210D1D2401555C4B153D6A153472153B754D43730D376E"9015 DATA "0D1C5D0D0A4B057B36056F23056D1B057217057D100C2E760C3D710C3E69"9020 DATA "0C3C610C3A410C38300C2039047E4B04685904625D04626D056504056D1B"9025 DATA "550C6A152A6F1534724D16510D1D4D0D28570D38640D4A6E4D556E0D4460"9030 DATA "0D2A440D1E4D4D7F680D7E3E0D7D2F0D782E0D682F0D48370D2A4455725D"9035 DATA "1569555D0F3C1D103C551631150A2F0D7F2E544E6B154423154B23154E15"9040 DATA "14547A14566D144E6A145061144F581447561437540C784F4C78510D7B06"9045 DATA "0D7C1915051C150E1D154423551E13153010153C02143D7114396A143164"9050 DATA "14296114156214077114057B15080615120F151E135C237E1C24711C2451"9055 DATA "1C1B491C184F1C19561C1A6D1C1A781C237E5C12771C15761C16711C1668"9060 DATA "1C16511C15471C083F1C06421C06501C06671C07711C12775C26771C276E"9065 DATA "4C456F0C74694C466E0C42400C41330C422F0C4E2C0C6F270C71400C7368"9070 DATA "5C286D1C29501C29451C24411C123814712A144F2114211A0C73190C4F1E"9075 DATA "0C163004604C04603D046F330C0B260C271B0C46110C680C14280A146616"9080 DATA "1C08231C28341C292B4C6F630C6D530C6C4D0C654D0C5D4F0C4B530C4A59"9085 DATA "0C4B6A0C4D680C56680C706454794414693C14603E145843145452145961"9090 DATA "146367146F6714786014755D146F5C146A55146A4D147146147A444C3E66"9095 DATA "0C3E625474661474654C0B610C0B6154704614644414604A145F56146661"9100 DATA "54696114735E4C675C0C62560C59580C52590C54610C5F5F0C685E0C665D"9105 DATA "0C655D0C665E5C05601C06604C615F0C655D54045814425D54785D1C0057"9110 DATA "1C004D147A465C185D1C195D44615D04604C4C48530C495354474A144936"9115 DATA "14492F143F2D14282914122714082714082E14084214174214264414474A"9120 DATA "4C46320C47400C47460C51440C65410C6D3F0C6D380C6C300C6B2B0C612C"9125 DATA "0C502E0C4531546F47146F455472461475465C2A441C29334C7543140043"9130 DATA "1400301400290C75290C742F0C75435431411437415B601E1B551E1B5428"9135 DATA "1B54461B547B1C53151C4D2F1C45401C52411C583A1C5B321C62191C6300"9140 DATA "1B623F1B61201B5C171B540F1B50071A51381A51211A51191A4A171A3415"9145 DATA "1A2C151A2C1D1A2C331A2B661A2A771B2B071B45081A45175C2E401C4540"9150 DATA "542E40142E40543840143D3C542D3F142D3F4C503D0C553D0C643B0C6433"9155 DATA "0C5E330C50360C503D542B3D142A3C44603C045F2E04612804662404612A"9160 DATA "543D3A143D34542A39142A37542A34142C32543B3214352F5C2A321C3125"9165 DATA "1C34161B34791B343D1B341B1B2B07542D3214332F44612504690A036B6E"9170 DATA "036D36036E0E026F7F02697B02597A02527B035009034E30034C56044903"9175 DATA "04431904382D045430045D2B42517A024278023E79033D06033C22033963"9180 DATA "03387C043310042C2504262C04382D44222D041C2004191303177803185D"9185 DATA "031E0C02253F022A08012B7A012A7601257501365601404C01504B01774C"9190 DATA "016E5B016C55016054014B54014154013B5B012C7044242C04262C5C2829"9195 DATA "1C25201C27171C260E1B24581A1A1119197E19236D192B63193D64194C67"9200 DATA "194C701A4C081A4A101A400F1A280D1A2B13446325046224446725046B23"9205 DATA "04701C0479180C2A020B437B0B5D770B63780B7178133178146B071C171A"9210 DATA "1C1F1E1C2324446624046924446A23046A21446C230C02170C26080B4B7C"9215 DATA "0B60785C26211C26234469220469225C27211C271F5C261F147C0A147406"9220 DATA "146B075C17051C240C546D051468031463045C16031B10161A0A35546502"9225 DATA "13507A1339771314731302740B71740B60774B3E210B3E6A0B7261131F61"9230 DATA "134B6913656F1C0E001B0E681B0D491B0B361B0433136E2913381A130017"9235 DATA "0B66180B4D1D0B3F200B3E1C4A07250B053F0B046B0B057E0B346E43257C"9240 DATA "032B7B032E75032D6F03286B03236C03207203217803257C4B3E600B7357"9245 DATA "132D591366651B0E754A0F2A0A0E770B0E070B0E2D0B0D5B0B0D6D0B146D"9250 DATA "0B24680B2A650B2A570B2A380A2B500A2B2F0A2B220A23230A10294B336E"9255 DATA "0A34490A35220A34150A29170A181C0A0B224B3D6B0B3D6B537F5C1B0860"9260 DATA "1B0968530452132F5413595C137666137F651B0868537F5B136F51135C4A"9265 DATA "13324013063D53724D1B0D584B645413024C4B49460B4A520B50530B6353"9270 DATA "53035013034C534A40135E4513714C4B4A460B663F130443530430132B32"9275 DATA "135238137443137D431B05455B07451B053D137E3953034213033B4B3F3F"9280 DATA "0B5D390B7C364B7D35132538134B3E53513A135339537D38136A2D135626"9285 DATA "132E1E13051B4B653213032B4B49260B4A310B51320B64325B0C2F1A0864"9290 DATA "1A052F53042E13042B535D1E136F241B0B2D4B49250B4C244B4E230B631E"9295 DATA "537620137D221B04231B05191B030F1A0052127F3B127E36127B31126528"9300 DATA "125E26125D2A125E3712606913620A1364155367221369224B651E0B7A20"9305 DATA "13022113031B537521136D1B1362185B541E1B45091B4F09535C1D125843"9310 DATA "12582B12571A1A062E5B341B1B531D4B3E1B0A3E6C53100F1351184B3F18"9315 DATA "0B70100B7F0F13050F13060512066D1204640A70640A4D670A406A534718"9320 DATA "13471753531512503C124F23124F19124215121C0E120D0E120C17120D2F"9325 DATA "130F0F53370E13420E533A0C132107131B05131900121D7E12237F133600"9330 DATA "13420212487B13480313440253410C134803532B0A132E0B53250A13260A"9335 DATA "532007131E0913210A531E09131D0652197E12186712195E122660123A63"9340 DATA "12476612426B12356A121967426F7B02686F026962026C41026D2B026D1F"9345 DATA "02651F02521E02540701567F01647F01707F027106026F17026E1D02681F"9350 DATA "52197612457B52497B12497312466D12427312377212196F52447A124874"9355 DATA "423E78023971425078024C6F026770524675124373424B70024A66024C5A"9360 DATA "02511F423A6F024A6E42396D023E3402402602411F02501E52436C12456C"9365 DATA "52496C12486312425C5247651248654A405F0A465F0A595D0A59560A5356"9370 DATA "0A41570A405F52195E121C58122358123E5B4A635C0A622A0A61104A635B"9375 DATA "0A7B5A12045912054A12041F12051612030E0A7B0E0A620E4A41510A5750"9380 DATA "0A57480A52480A414A0A3F4E0A415152424212233F12193F121A44121F47"9385 DATA "123D4C12454812454412424112463C12483E124743522A49122D4B52234A"9390 DATA "12254A521E47121D48122049521D48121C464A40430A46440A57420A583A"9395 DATA "0A523A0A403C0A404352183E12172712181E12252012392312452512412B"9400 DATA "12342A1218275A453D1A503D5A2C3B1A453C5A0C331A1B3C52183512443B"9405 DATA "52483B12482A12411C5243391247344A40350A46360A57350A582D0A522C"9410 DATA "0A412F0A403552453512433112452C12472C52182F12423352422B12442C"9415 DATA "4A40280A46280A57260A581F0A521E0A41200A40285246251247255A030F"9420 DATA "115D7E125D0D125E1312661612731C127A201A02231A031E1A031142411E"9425 DATA "02430801457F01547F42611E02621E52181E121B19122217123D1B490268"9430 DATA "0A020A0A021C0A270F0A340B09357E09345D09335009265509185A090265"9435 DATA "4A401A0A461A0A57190A58120A52110A41130A401A5A4F161A4C10524B0D"9440 DATA "124C03114B7A113B76111A70110D70110C78120D02121504121D05123107"9445 DATA "124B0C5A270D1929711929655A090C19097019076C19036B1903751A0302"9450 DATA "1A04081A090C4A59050A61050A73030A7A02097B78097A6F09736E096070"9455 DATA "0958710958750A590551726011727411737E127B03117C79117A65117260"9460 DATA "41447F01417B01537B016D7B016D5C416F7D016D7C59197D191B6E192164"9465 DATA "19295C19335D194C5F19586019595A19584819584019584251535211526B"9470 DATA "115374115E79116A7C116B6E116A5C11645911535241407A01406F013F56"9475 DATA "59197119076411755A116451115E4511502B114A3911412711331F11231B"9480 DATA "110416096B19095421094F1A094912093D0E09300D51275B11295F112760"9485 DATA "112768112D68113664113C5B11396411316B11447011466311455611444D"9490 DATA "113349112F4C11254B111D50111A58594F6F19586341256F012561013050"9495 DATA "01452D49406D09506A097667097E6711076611085F11074B110545096F45"9500 DATA "09424B49416C09404D51296A11316B51264B112A4811184511124511114D"9505 DATA "11116011116711176911276A591169191B6019255719275219264D19164A"9510 DATA "19183F19193A191F3A19264119264D416D69017F5D09324609553F097E3B"9515 DATA "11163C112B3F112A2B112923112320110F1C512169111C62111A5B512C68"9520 DATA "11326111385B512954113258112F53112A5411235B111F60112667513567"9525 DATA "11346651376611366451226511276011235C411E5C011F61012361512E62"9530 DATA "112C6011315B113758511E60111C5B51295F112C6051335F113359411F5C"9535 DATA "01245301274B01264E511D5C11215C513C5B113D55113149592A5B192A49"9540 DATA "192A34192635517659117F50190453190D57192456594F52194951194551"9545 DATA "194153194157194F5719505219564D195444511C58111D56112457512958"9550 DATA "112A56513B5811314D512256112A4D511D5511254C592554191652190250"9555 DATA "51295311294F513053112F50513851113950594051193849192E45491950"9560 DATA "092140092C3109390E51365011374F512C4011514911504311584C116250"9565 DATA "517E50117F49190F49190F39190F1118107F18157D191900191A10191921"9570 DATA "19183A51774F117A26117B19117518116519116315115F14115B11106C7F"9575 DATA "180F5A181E49181E3C182B3D18383F186E4B187F4F20075120095720075F"9580 DATA "200065187B6018735F184E58184056183F5C183B6B192B28193E2A19452A"9585 DATA "194930194F34195A2C19611F200066516A4D115F2041784B01783F017D34"9590 DATA "090A3809283651514911574B51724B116C1A41404B01413641274B012A47"9595 DATA "01294941294B012A4959104919164A512A48113049517F49190335180778"9600 DATA "181B7B18227D19230519241F19242A191C2C191D3319243519253A412A48"9605 DATA "012B45012A47515A46115139412C44013E2601401F01402241493301493C"9610 DATA "014E3D014E41015043015C42015E3E01623C493B44093E3909353F595744"9615 DATA "195641515043114A39516443115A2D592B42192E38193738194E39595942"9620 DATA "195B3919543919513459554019523B51353F11322511442D516B3F11682A"9625 DATA "51743F11742759503F194F3D49303E094E1A592B3E192C3E495D3D095F2F"9630 DATA "095F20094B29093A3741473101463801493D414F3C015D3C49643B09681F"9635 DATA "510F3B110C1E51053B11052711051B096A1D41793A017924017A1E01761A"9640 DATA "017F0E01740B01690B006C79007067005F66005E5B00587C015608014C09"9645 DATA "01451301421E01481A01481F591A39191934416539016D3001742E017422"9650 DATA "016C1F01581F014F20014C2D014D2B492E3909342A093130493E3909442E"9655 DATA "590338190E39490134090C34092636590734190B35190D31190C29190829"9660 DATA "19062C19073459243519242C592A34193834193E34193E2B591A33191A2F"9665 DATA "593633193D2E492A32092C22092D1B09271809201609220E092005082179"9670 DATA "081F6C081E7D091C16091B27091F22092019417D32090317080670080C5B"9675 DATA "08145A081C5B082A5C082B6B092E1749363209441E41482F014C2D59492F"9680 DATA "19522619541A195A0F195B0418637118685E59242E192B29417E2B09292C"9685 DATA "59512B19572C413E2701452B014C27414E2B014F2A49352B09441051502B"9690 DATA "115C1C11641949342A093A1A49462A09542159412919441F195514414B27"9695 DATA "014822014122481F6C081F6208195E08145F081270090F16090F27091B27"9700 DATA "414F27014F2340793200773D00725400733A00792E006D2B005129004529"9705 DATA "004032003847002B68002678012A0001321101371C013E24413E1F014015"9710 DATA "01411741421F01421E41401E01401E414704004257003F3E003A48003653"9715 DATA "002E6A002B7401350D013D1D59441D194A0918555B413E1B013F18415509"9720 DATA "01540E015910015E1101651901751B41491A014F1501540F414F19015319"9725 DATA "015214490317090F18414116014215014214414015014014516515107B7C"9730 DATA "18017618077841621401690B414214014313014211014213492111092910"9735 DATA "09290809240709200C092011414411014410490811090B11090D0E090C07"9740 DATA "09090709070A090811414211014310515911115A0610607F106D71180D4E"9745 DATA "181E3C59481119581041441001450F01440E014310415C10016203006D70"9750 DATA "41450F014900004772004038594C0F194C0441440E014707417F0E08047E"9755 DATA "414C0900453E00432C595B03185B6E185B66185564482C6208403C08472F"9760 DATA "083F2D08292A005F23004921004122003E2800383A00296300207D00287E"9765 DATA "401F7C00226700285400372A003E15583E57181D7818207A580675181D78"9770 DATA "406D71006D6F48206C081F69405D6A005F66407166007254585B6518665E"9775 DATA "581F4918675620085D405E5B00643B00713C405F5B005F59480C5A08133B"9780 DATA "081430080D2E08052E007A2E48285A082759480D56082258403F3D003F3C"9785 DATA "40643B00662C48482D084722084020082C1E005E17004815004214003F1B"9790 DATA "004022"9800 DATA "z"