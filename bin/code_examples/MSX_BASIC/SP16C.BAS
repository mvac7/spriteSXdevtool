10 DEFINT A-Z
12 COLOR 15,4,4:SCREEN 4,2
14 RESTORE 10540:GOSUB 1030 
20 RESTORE 10020:HL=BASE(9):GOSUB 1010
30 N=7:X=0:Y=0
40 for i=0 to N
50 PUT SPRITE I,(X*16,Y*16),15,I
60 X=X+1
70 NEXT
72 RESTORE 10350:HL=&H1C00:GOSUB 1010
80 IF INKEY$="" THEN 80 ELSE END 
1000 REM -- LOAD SPRITES by Rafael Jannone
1010 READ R$: IF R$="*" THEN RETURN ELSE VPOKE HL,VAL("&H"+R$):HL=HL+1:GOTO 1010
1020 rem Set Palette
1030 FOR C=1 TO 15:READ R,G,B:COLOR=(C,R,G,B):NEXT
1040 RETURN
10000 REM Frutas 16x color
10010 REM SPRITE DATA
10020 DATA 0F,1F,3D,3F,7B,7C,BF,BF,9F,EF,6F,1F,0F,05,05,1D
10030 DATA C0,E0,60,C0,40,80,80,84,86,DE,C0,C0,80,00,00,C0
10040 DATA 03,07,4F,CF,4D,4F,2C,1E,3F,3F,3F,3F,1F,02,02,06
10050 DATA C0,E2,E6,E2,A2,F4,38,7C,FE,FE,FE,FC,F8,40,40,60
10060 DATA 05,07,1A,2E,6F,5B,5C,5B,5F,58,6F,2D,16,02,02,06
10070 DATA 40,C0,B8,D4,D4,6A,EA,6A,EA,6A,D4,D4,F8,40,40,60
10080 DATA 05,07,1F,3F,7F,7F,7F,7D,7F,7F,78,3F,1F,04,04,0C
10090 DATA 40,C0,F0,F8,FC,FC,FC,7C,FC,FC,3C,F8,F0,40,40,60
10100 DATA 07,1F,3F,3F,7F,71,7F,7F,7F,7E,3E,3F,1F,07,02,06
10110 DATA E0,F8,FC,FC,FE,8E,FE,FE,FE,7E,7C,FC,F8,E0,40,60
10120 DATA 00,07,1F,3F,7F,71,FF,FF,7B,7C,3F,1F,07,02,02,06
10130 DATA 00,E0,F8,FC,FE,8E,FF,FF,DE,3E,FC,F8,E0,40,40,60
10140 DATA 05,1E,3F,6F,57,6E,3F,00,07,05,07,04,06,03,02,06
10150 DATA 60,F8,F4,EA,76,BE,7C,00,E0,60,E0,20,60,C0,40,60
10160 DATA 05,1E,3F,6F,57,6E,3F,07,07,05,07,04,06,03,02,06
10170 DATA 60,F8,F4,EA,76,BE,7C,E0,E0,60,E0,20,60,C0,40,60
10180 DATA *
10340 REM COLOR MODE2 DATA
10350 DATA 0C,0C,0C,0C,02,02,03,03,03,03,03,02,0C,0F,0F,07
10360 DATA 0C,02,02,02,0C,02,02,02,02,02,02,02,0C,0E,0E,05
10370 DATA 0A,0A,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0E,0E,05
10380 DATA 0C,0C,09,09,09,09,09,09,09,09,09,09,09,05,0F,07
10390 DATA 0D,0D,0D,0D,0D,0D,0D,0D,0D,0D,0D,0D,0D,0D,07,07
10400 DATA 0D,0A,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0A,0E,05,05
10410 DATA 08,09,09,09,09,09,08,0E,0D,0D,0D,0D,0D,0D,0E,0E
10420 DATA 0A,0E,0A,0E,0A,0E,0A,05,0F,0F,0F,0F,0F,0F,0E,0E
10430 DATA *
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
