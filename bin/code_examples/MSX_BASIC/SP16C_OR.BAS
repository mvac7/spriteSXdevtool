10 DEFINT A-Z
12 DIM Y(100)
14 COLOR 15,14,4:SCREEN 4,2
16 RESTORE 10540:GOSUB 1030:REM palette 
20 RESTORE 10020:HL=BASE(24):GOSUB 1010:REM patrones sprites
30 RESTORE 11010:FOR I=0 to 95:READ A:Y(I)=A:NEXT:REM anim ball
40 PUT SPRITE 0,(180,175),0,0
50 PUT SPRITE 1,(180,175),0,1:REM los colores se asignan en la vram (linea 80)
60 PUT SPRITE 2,(100,130),&H1,2
70 PUT SPRITE 3,(100,130),&H42,3:REM los colores se asignan desde putsprite
80 RESTORE 10350:HL=&H1C00:GOSUB 1010:REM colores sprites
90 FOR I=0 to 95
100 PUT SPRITE 2,(100,Y(i)+95),&H1,2
110 IF INKEY$="" THEN NEXT ELSE END
120 GOTO 90
1000 REM -- LOAD DATA based on the function from Rafael Jannone
1010 READ R$: IF R$="*" THEN RETURN ELSE VPOKE HL,VAL("&H"+R$):HL=HL+1:GOTO 1010
1020 REM Set Palette
1030 FOR C=1 TO 15:READ R,G,B:COLOR=(C,R,G,B):NEXT
1040 RETURN
10000 REM colorOR
10010 REM SPRITE DATA
10020 DATA 07,0F,7F,7F,7F,1F,1F,0F,0F,17,17,1F,07,0F,1F,0F
10030 DATA E0,10,88,88,C8,C8,88,10,E0,B0,B8,B8,F8,B0,F8,F0
10040 DATA 00,07,0F,3F,0D,0D,0F,06,00,0B,0B,03,00,03,03,00
10050 DATA 00,E0,F0,F0,B0,B0,F0,E0,00,C0,D0,D0,00,40,00,00
10060 DATA 07,1F,3F,7F,7F,FF,FF,FF,FF,FF,FF,7F,7F,3F,1F,07
10070 DATA E0,18,C4,E2,E2,F1,F1,F1,F1,F1,F1,E2,E2,C4,18,E0
10080 DATA 00,07,1F,3F,3F,7F,7F,7F,7F,7F,7F,3F,3F,1F,07,00
10090 DATA 00,E0,F8,FC,FC,FE,FE,FE,FE,FE,FE,FC,FC,F8,E0,00
10330 DATA *
10340 REM COLOR MODE2 DATA
10350 DATA 01,01,01,01,01,01,01,01,01,01,01,01,01,01,01,01
10360 DATA 48,48,48,48,4A,4A,4A,4A,4A,42,42,42,42,44,44,44
10500 DATA *
10510 REM MSX2_Palette
10520 REM Red, Green, Blue
10540 DATA 0,0,0
10550 DATA 1,5,1
10560 DATA 3,6,3
10570 DATA 2,2,5
10580 DATA 3,3,7
10590 DATA 5,2,1
10600 DATA 2,6,7
10610 DATA 6,2,2
10620 DATA 7,0,0
10630 DATA 6,6,3
10640 DATA 7,7,0
10650 DATA 1,4,1
10660 DATA 7,3,0
10670 DATA 6,6,6
10680 DATA 7,7,7
11000 REM sinus 0>140 (96)
11010 DATA 79,77,74,71,69,66,64,61,59,56,54,51,49,46,44,42
11020 DATA 39,37,35,33,31,29,27,25,23,21,19,18,16,14,13,11
11030 DATA 10,9,8,7,6,5,4,3,2,2,1,1,1,0,0,0
11040 DATA 0,0,0,1,1,1,2,2,3,4,5,6,7,8,9,10
11050 DATA 11,13,14,16,18,19,21,23,25,27,29,31,33,35,37,39
11060 DATA 42,44,46,49,51,54,56,59,61,64,66,69,71,74,77,79

