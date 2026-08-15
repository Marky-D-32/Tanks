
                ;*************************
                ;Your Computer - Listing 2
                ;*************************
                ORG $2800

TankGraphic     FCB   $00,$01,$FF,$00,$01,$3F,$7F,$FF,$7A,$30,$06
TankGraphic2    FCB   $01,$3F,$FF,$FF,$FF,$FF,$FF,$FF,$EB,$40,$66
                FCB   $C0,$E0,$FE,$FE,$F0,$FF,$FF,$FF,$AE,$06,$64

WallGraphic     FCB       $FF,$80,$80,$80,$80,$80,$80
                FCB   $80,$FF,$80,$80,$80,$80,$80,$80
                FCB   $80,$FF,$80,$80,$80,$80,$80,$80
                FCB   $80,$FF,$80,$80,$80,$80,$80,$80
                FCB   $80,$FF,$80,$80,$80,$80,$80,$80
                FCB   $80,$FF,$80,$80,$80,$80,$80,$80
                FCB   $80,$FF,$80,$80,$80,$80,$80,$80
                FCB   $80,$FF,$80,$80,$80,$80,$80,$80
                FCB   $80,$FF,$80,$80,$80,$80,$80,$80
                FCB   $80,$FF,$80,$80,$80,$80,$80,$80
                FCB   $80,$FF,$80,$80,$80,$80,$80,$80
                FCB   $80,$FF,$80,$80,$80,$80,$80,$80
                FCB   $80,$FF,$80,$80,$80,$80,$80,$80
                FCB   $80,$FF,$80,$80,$80,$80,$80,$80
                FCB   $80,$FF,$80,$80,$80,$80,$80,$80
                FCB   $80,$FF,$80,$80,$80,$80,$80,$80
                FCB   $80,$FF,$80,$80,$80,$80,$80,$80
                FCB   $80,$FF,$80,$80,$80,$80,$80,$80
                FCB   $80,$FF,$80,$80,$80,$80,$80,$80
                FCB   $80,$FF

BombGraphic     FCB   $42,$42,$66,$7E,$7E,$7E,$7E,$7E,$3C,$18

ScoreText       FCB   $18,$0C,$0C,$1E,$0F,$80,$24,$12   ;S
                FCB   $12,$11,$08,$00,$42,$20,$21,$10   ;C
                FCB   $88,$00,$30,$20,$21,$11,$0F,$00   ;O
                FCB   $0C,$20,$21,$1F,$08,$00,$42,$20   ;R
                FCB   $21,$12,$08,$00,$24,$12,$12,$11   ;E
                FCB   $08,$00,$18,$0C,$0C,$10,$8F,$80

HiResLivesText  FCB   $40,$44,$11,$F0,$60,$40,$44,$11   ;L
                FCB   $00,$90,$40,$44,$11,$01,$08,$40   ;I
                FCB   $44,$11,$E0,$C0,$40,$44,$11,$00   ;V
                FCB   $30,$40,$42,$21,$01,$08,$40,$41   ;E
                FCB   $41,$00,$90,$7C,$40,$81,$F0,$60   ;S

HiResHiScrText  FCB   $44,$41,$80,$C0,$C1,$E0,$F8,$44   ;H
                FCB   $42,$41,$21,$21,$10,$80,$44,$44   ;I
                FCB   $22,$02,$11,$08,$80,$7C,$43,$02   ;S
                FCB   $02,$11,$10,$F0,$44,$40,$C2,$02   ;C
                FCB   $11,$E0,$80,$44,$44,$22,$02,$11   ;O
                FCB   $20,$80,$44,$42,$41,$21,$21,$10   ;R
                FCB   $80,$44,$41,$80,$C0,$C1,$08,$F8   ;E

Num0Text        FCB   $10,$28,$44,$44,$44,$44,$28,$10   ;0
Num1Text        FCB   $10,$30,$50,$10,$10,$10,$10,$7C   ;1
Num2Text        FCB   $10,$28,$44,$08,$10,$20,$40,$7C   ;2
Num3Text        FCB   $7C,$04,$08,$10,$08,$44,$28,$10   ;3
Num4Text        FCB   $40,$40,$40,$48,$48,$7C,$08,$08   ;4
Num5Text        FCB   $7C,$40,$40,$38,$04,$44,$28,$10   ;5
Num6Text        FCB   $04,$08,$10,$30,$48,$44,$28,$10   ;6
Num7Text        FCB   $7C,$04,$08,$10,$10,$20,$40,$40   ;7
Num8Text        FCB   $38,$44,$44,$38,$28,$44,$44,$38   ;8
Num9Text        FCB   $3C,$44,$44,$3C,$04,$04,$04,$04   ;9

Score           FCB   $00,$00
HiScore         FCB   $00,$00
Score_Dig1      FCB   $00
Score_Dig2      FCB   $00
Score_Dig3      FCB   $00
Score_Dig4      FCB   $00
Score_Dig5      FCB   $00
HiScore_Dig1    FCB   $00
HiScore_Dig2    FCB   $00
HiScore_Dig3    FCB   $00
HiScore_Dig4    FCB   $00
HiScore_Dig5    FCB   $00

TempCount       FCB   $41

NumLives        FCB   $37
GapStartPos     FCB   $09,$03
GapRowCnt       FCB   $99
TankPos_temp    FCB   $41,$2C
MoveTankCnt     FCB   $31                       ;Number of rows to move tank
GameLevel       FCB   $31
TankPos         FCB   $32,$35
TankGrpPtr      FCB   $20,$00

ShellColCnt     FCB   $29
ShellAtvFlag    FCB   $DB                       ;0 Active; 1 InActive
ShellPos        FCB   $2E,$0E                   ;Position of tank shell on screen
                FCB   $86,$20                   ;Not used
DelayCnt        FCB   $32,$36
ShellDir        FCB   $46

                FCB   $36,$33,$31               ;Not used

ShellScrollCnt  FCB   $33
ShellRotateCnt  FCB   $35

                FCB   $33,$30,$31,$45,$38,$43   ;Not used

TempXReg        FCB   $30,$38                   ;Temporary storage
TempYReg        FCB   $2C,$36                   ;Temporary storage

                FCB   $31,$32,$20,$00           ;Not used

BombDelay       FCB   $29,$F8                   ;Bomb Delay - Controls when bomb will appear
BombFlag        FCB   $2E
BombPosInit     FCB   $08,$BD
BombMoveCnt     FCB   $20
BombPos         FCB   $42,$43

ShellFiredFlag  FCB   $32

                FCB   $46                       ;Not used

HyperSpaceFlag  FCB   $31                       ;Indiciates if tank is in hyperspace
HyperSpaceCntDn FCB   $00,$32                   ;Countdown to when hyperspace finishes

                FCB   $36,$32,$39,$42,$39,$35,$41   ;Not used

                ;*************************
                ;Your Computer - Listing 3
                ;*************************
                ORG  $29EF

TankHitGrp      FCB   $18,$18,$FF,$FF,$18,$18,$18,$18,$18,$7E,$FF
EnemyTankGph    FCB   $10,$38,$6C,$C7,$6C,$38,$10

                FCB $92,$54,$38,$FE,$38,$54,$92     ;Not used

EnemySpiderGph  FCB   $C6,$29,$54,$DE,$54,$29,$C6

EnemyVehGrp     FCB   $C0,$60,$38,$1F,$38,$60,$C0

TankDispArray   FCB   $80,$80
                FCB   $FF,$80
                FCB   $80,$80
                FCB   $80,$80
                FCB   $80,$32
                FCB   $37,$30
                FCB   $30,$42
                FCB   $36,$31
NumEnemyTanks   FCB   $36
EnemyArrPtr     FCB   $46,$46                   ;Enemy count Array
EnemyPos        FCB   $35,$39
EnemyGrpCopy    FCB   $2C,$36,$30,$33,$20,$00,$2A
EnemyDirection  FCB   $4D
EnemyShlScrlCnt FCB   $2E
EnemyShlAtvFlag FCB   $2E
EnemyTankPosTMP FCB   $86,$20
EnemyShellPos   FCB   $43,$36
EnemyFireCntDn  FCB   $30

                FCB $32,$46                         ;Not used
NotUsed1        FCB $37,$32                         ;Not used (although referenced)

EnemyShlRotCnt  FCB $39

                ;*************************
                ;Your Computer - Listing 4
                ;*************************
                ORG   $2A3F

NumEnemies      FCB   $08

EnemyArrPtr2    FCB   $2A,$16
TankHitFlag     FCB   $00

                FCB   $00,$00                       ;Not Used
EndGameFlag     FCB   $00
                FCB   $00                           ;Not Used
SlowDownTemp    FCB   $00
                FCB   $00,$00                       ;Not Used

YourScoreTxt    FCB   $59,$4F,$55,$52,$8F,$8F
                FCB   $53,$43,$4F,$52,$45,$8F,$8F,$8F,$8F,$8F

HiScoreTxt      FCB   $48,$49,$6D,$53,$43,$4F,$52,$45
                FCB   $8F,$8F,$8F,$8F,$8F,$8F,$8F,$8F

AnotherGoTxt    FCB   $41,$4E,$4F,$54,$48,$45,$52,$8F,$8F,$47,$4F
                FCB   $8F,$8F,$8F,$8F,$8F,$68,$59,$5C,$4E,$69

ShellDirLeft    EQU  $00
ShellDirRight   EQU  $01
EnemyDirUp      EQU  $01
EnemyDirDown    EQU  $00

                ;**************************************
                ;Your Computer - Listing 5 - game start
                ;**************************************
                ORG $2B26

GameStart       LDA   #$07                          ;Set Number of lives
                STA   NumLives

                LDA   #$00
                STA   GameLevel
                LDY   #$0514                        ;Set Delay \ slowdown amount
                STY   DelayCnt

                ;******************
                ;Set Scores to ZERO
                ;******************
                LDX   #$0000
                STX   Score
                LDB   #$05
                LDY   #Score_Dig1
                LDA   #$00
SSZ_1           STA   ,Y+
                DECB
                BNE   SSZ_1

                ;PMODE 4
ResetGame       LDA   #$F5
                STA   $FFC3
                STA   $FFC5
                STA   $FFC7
                ORA   #$08
                STA   $FF22

                ;Clear Screen
                LDX   #$0600
                LDA   #$00
                LDY   #$1800
CS_1            STA   ,X+
                LEAY  -1,Y
                CMPY  #$0000
                BNE   CS_1

                ;Play relevant game level
                LDA   GameLevel
                CMPA  #$00
                LBGT  PlayGame2

                ;Bomb Data
                LDY   #$03E8
                STY   BombDelay
                LDB   #$00
                STB   BombFlag

                ;Write "SCORE" on screen
                LDY   #$0601
                LDX   #ScoreText
                LDB   #$08
LP4             LDA   #$06
                STA   TempCount
LP3             LDA   ,X+
                STA   ,Y+
                LDA   TempCount
                DECA
                STA   TempCount
                BNE   LP3
                LEAY  26,Y
                DECB
                BNE   LP4

                ;Write "Lives" on screen
                LDY   #$060E
                LDX   #HiResLivesText
                LDB   #$08
LP6             LDA   #$05
                STA   TempCount
LP7             LDA   ,X+
                STA   ,Y+
                LDA   TempCount
                DECA
                STA   TempCount
                BNE   LP7
                LEAY  27,Y
                DECB
                BNE   LP6

                ;Write "HISCORE" on screen
                LDY   #$0619
                LDX   #HiResHiScrText
                LDB   #$08
LP8             LDA   #$07
                STA   TempCount
LP9             LDA   ,X+
                STA   ,Y+
                LDA   TempCount
                DECA
                STA   TempCount
                BNE   LP9
                LEAY  25,Y
                DECB
                BNE   LP8

                ;Draw target area
                LDY   #$0902
                LDX   #WallGraphic
                LDB   #$99
LP10            LDA   ,X+
                STA   ,Y
                LEAY  32,Y
                DECB
                BNE   LP10

                ;Draw Tank
                LDY   #$1B1C
                LDX   #TankGraphic
                LDB   #$0B
LP11            LDA   ,X+
                STA   ,Y
                LEAY  32,Y
                DECB
                BNE   LP11
                LDY   #$1B1D
                LDB   #$0B
LP12            LDA   ,X+
                STA   ,Y
                LEAY  32,Y
                DECB
                BNE   LP12
                LDY   #$1B1E
                LDB   #$0B
LP13            LDA   ,X+
                STA   ,Y
                LEAY  32,Y
                DECB
                BNE   LP13

                ;Write current score to screen (zero)
                LDY   #$0761
                LDA   Score_Dig1
                BSR   DrawNums

                LDY   #$0762
                LDA   Score_Dig2
                BSR   DrawNums

                LDY   #$0763
                LDA   Score_Dig3
                BSR   DrawNums

                LDY   #$0764
                LDA   Score_Dig4
                BSR   DrawNums

                LDY   #$0765
                LDA   Score_Dig5
                BSR   DrawNums

                LDY   #$077A
                LDA   HiScore_Dig1
                BSR   DrawNums

                LDY   #$077B
                LDA   HiScore_Dig2
                BSR   DrawNums

                LDY   #$077C
                LDA   HiScore_Dig3
                BSR   DrawNums

                LDY   #$077D
                LDA   HiScore_Dig4
                BSR   DrawNums

                LDY   #$077E
                LDA   HiScore_Dig5
                BSR   DrawNums

                LBRA  WriteNumLives

                ;Draw selected number to screen
DrawNums        CMPA  #$00
                BEQ   Draw_0
                CMPA  #$01
                BEQ   Draw_1
                CMPA  #$02
                BEQ   Draw_2
                CMPA  #$03
                BEQ   Draw_3
                CMPA  #$04
                BEQ   Draw_4
                CMPA  #$05
                BEQ   Draw_5
                CMPA  #$06
                LBEQ  Draw_6
                CMPA  #$07
                LBEQ  Draw_7
                CMPA  #$08
                LBEQ  Draw_8
                CMPA  #$09
                LBEQ  Draw_9

                LBRA  WriteNumLives

                ;Draw 0 (zero)
Draw_0          LDX   #Num0Text
                LDB   #$08
D0_1            LDA   ,X+
                STA   ,Y
                LEAY  32,Y
                DECB
                BNE   D0_1
                RTS

                ;Draw 1
Draw_1          LDX   #Num1Text
                LDB   #$08
D1_1            LDA   ,X+
                STA   ,Y
                LEAY  32,Y
                DECB
                BNE   D1_1
                RTS

                ;Draw 2
Draw_2          LDX   #Num2Text
                LDB   #$08
D2_1            LDA   ,X+
                STA   ,Y
                LEAY  32,Y
                DECB
                BNE   D2_1
                RTS

                ;Draw 3
Draw_3          LDX   #Num3Text
                LDB   #$08
D3_1            LDA   ,X+
                STA   ,Y
                LEAY  32,Y
                DECB
                BNE   D3_1
                RTS

                ;Draw 4
Draw_4          LDX   #Num4Text
                LDB   #$08
D4_1            LDA   ,X+
                STA   ,Y
                LEAY  32,Y
                DECB
                BNE   D4_1
                RTS

                ;Draw 5
Draw_5          LDX   #Num5Text
                LDB   #$08
D5_1            LDA   ,X+
                STA   ,Y
                LEAY  32,Y
                DECB
                BNE   D5_1
                RTS

                ;Draw 6
Draw_6          LDX   #Num6Text
                LDB   #$08
D6_1            LDA   ,X+
                STA   ,Y
                LEAY  32,Y
                DECB
                BNE   D6_1
                RTS

                ;Draw 7
Draw_7          LDX   #Num7Text
                LDB   #$08
D7_1            LDA   ,X+
                STA   ,Y
                LEAY  32,Y
                DECB
                BNE   D7_1
                RTS

                ;Draw 8
Draw_8          LDX   #Num8Text
                LDB   #$08
D8_1            LDA   ,X+
                STA   ,Y
                LEAY  32,Y
                DECB
                BNE   D8_1
                RTS

                ;Draw 9
Draw_9          LDX   #Num9Text
                LDB   #$08
D9_1            LDA   ,X+
                STA   ,Y
                LEAY  32,Y
                DECB
                BNE   D9_1
                RTS

                ;Write number of lives (7)
WriteNumLives   LDA   NumLives
                LDY   #$0750
                JSR   DrawNums

                ;Draw scrolling barrier on left
                LDX   #$0903
                LDA   #$80
                LDB   #$A7
DGrid_1         STA   ,X
                LEAX  32,X
                DECB
                BNE   DGrid_1

                ;Draw Game Level in top box
                LDY   #$0902
                LDA   GameLevel
                LBSR  DrawNums

                LDX   #$1B1C                    ;Tank Start position
                LDY   #TankGraphic2

MainLoop        LDB   #$17                      ;Reset control values
                STB   ShellColCnt
                LDB   #$18
                STB   ShellScrollCnt
                LDA   #$00
                STA   ShellDir
                STA   HyperSpaceFlag
                LDB   #$01
                STB   ShellFiredFlag
                STB   ShellAtvFlag

                ;Check for keypress
                LBSR  $8006                     ;Scan for key Press
                CMPA  #$0C                      ;Has "clear" (fire) been pressed?
                LBEQ  FireCtrl                  ;Yes
                CMPA  #$0D                      ;Has "enter" (hyperspace) been pressed?
                LBEQ  HyperSpace                ;Yes

                JMP   BombCtrl

MainLoop_1      LBSR  ScrollGap
                LBSR  SlowDown

                LDA   $0153
                CMPA  #$EF                      ;Has 'Q' been pressed?
                BEQ   MoveTankUp                ;Yes - Move tank  up
                LDA   $0153
                CMPA  #$FB                      ;Has 'A' been pressed?
                BEQ   MoveTankDn                ;Yes - Move tank down

EndLoop         BRA   MainLoop

                ;*****************
                ;Player Pressed Up
                ;*****************
MoveTankUp      LDB   #$02                       ;Move tank twice
                STB   MoveTankCnt

                ;Erase Players tank
MTU_repeat      LEAX  $0140,X                    ;Erase 1st 1/3
                LDA   #$00
                STA   ,X
                LDB   #$0B
MTU_1           LEAX  -32,X
                LDA   ,-Y
                STA   ,X
                DECB
                BNE   MTU_1
                LEAX  $0161,X                    ;Erase 2nd 2/3
                LDA   #$00
                STA   ,X
                LDB   #$0B
                LEAY  22,Y
MTU_2           LEAX  -32,X
                LDA   ,-Y
                STA   ,X
                DECB
                BNE   MTU_2
                LEAX  $0161,X                    ;Erase 3rd 3/3
                LDA   #$00
                STA   ,X
                LDB   #$0B
                LEAY  22,Y
MTU_3           LEAX  -32,X
                LDA   ,-Y
                STA   ,X
                DECB
                BNE   MTU_3

                LEAY  -11,Y                     ;Reset tank pointers
                LEAX  -2,X
                CMPX  #$08BC                    ;Have we reached top of playing area?
                BLE   MoveTankDn                ;Yes - move tank back down
                LDB   MoveTankCnt
                DECB
                STB   MoveTankCnt
                BNE   MTU_repeat                ;Need to move tank once more
                LDB   ShellAtvFlag
                CMPB  #$00                      ;Is there an active tank sheel?
                LBEQ  FireLoop                  ;Yes

                LBRA  MainLoop

                ;*******************
                ;Player Pressed down
                ;*******************
MoveTankDn      LDB   #$02                      ;Move tank twice
                STB   MoveTankCnt

MTD_repeat      LDA   #$00                      ;Move 1st 1/3
                STA   ,X
                LDB   #$0B
                LEAY  -11,Y
MTD_1           LEAX  32,X
                LDA   ,Y+
                STA   ,X
                DECB
                BNE   MTD_1
                LEAX  $FEA1,X                   ;Move 2nd 2/3
                LDA   #$00
                STA   ,X
                LDB   #$0B
MTD_2           LEAX  32,X
                LDA   ,Y+
                STA   ,X
                DECB
                BNE   MTD_2
                LEAX  $FEA1,X                   ;Move 3rd 3/3
                LDA   #$00
                STA   ,X
                LDB   #$0B
MTD_3           LEAX  32,X
                LDA   ,Y+
                STA   ,X
                DECB
                BNE   MTD_3

                LEAY  -22,Y                     ;reset tank pointers
                LEAX  $FEBE,X
                CMPX  #$1CBC                    ;Have we reached bottom of playing area?
                LBGE  MoveTankUp                ;Yes - move tank back up
                LDB   MoveTankCnt
                DECB
                STB   MoveTankCnt
                CMPB  #$00
                BNE   MTD_repeat                ;need to move tank once more
                LDB   ShellAtvFlag
                CMPB  #$00                      ;Is there an active tank shell?
                LBEQ  FireLoop                  ;Yes

                LBRA  MainLoop

                ;Scroll Target Gap
ScrollGap       STX   TankPos_temp
                LDX   GapStartPos
                LDB   GapRowCnt
                LDA   #$80                      ;10000000 i.e. wall
                STA   ,X                        ;Draw it (i.e. overdraw gap)
                LEAX  32,X                      ;move down 1 row
                STX   GapStartPos
                LEAX  $0100,X                   ;Height of gap (32 rows)
                LDA   #$00
                STA   ,X                        ;draw gap
                DECB
                STB   GapRowCnt                 ;Save count
                CMPB  #$00                      ;reached bottom of wall area?
                BEQ   ResetScrollGap            ;Yes
SG_Exit         LDX   TankPos_temp              ;No
                RTS

                ;Slow things down
SlowDown        PSHS  Y
                LDY   DelayCnt
SD_1            LEAY  -1,Y
                CMPY  #$0000
                BNE   SD_1
                PULS  Y
                RTS

                ;reset wall\gap values
ResetScrollGap  LDX   #$0903
                STX   GapStartPos
                LDB   #$99
                STB   GapRowCnt
                BRA   SG_Exit

                ;************
                ;Fire Pressed
                ;************
FireCtrl        LDB   #$00                      ;set shell inflight values
                STB   ShellAtvFlag
                STB   ShellFiredFlag
                BSR   DrawInitShell             ;Draw it

FireLoop        LDB   ShellAtvFlag
                CMPB  #$01                      ;Shell inflight?
                LBEQ  MainLoop                  ;No
                JMP   ShellCtrl                 ;Yes

FireLoop_1      BSR   ScrollGap
                JMP   BombCtrl

FireLoop_2      BSR   SlowDown

                ;Check for key presses
                LBSR  $8006
                CMPA  #$0D                      ;Has enter been pressed
                LBEQ  HyperSpace                ;Yes
                LDA   $0153
                CMPA  #$EF                      ;Has 'Q' been pressed?
                LBEQ   MoveTankUp               ;Yes
                LDA   $0153
                CMPA  #$FB                      ;Has 'A' been pressed?
                LBEQ  MoveTankDn                ;Yes
                BRA   FireLoop

                ;Draw the tank shell
DrawInitShell   STX   TankPos
                STY   TankGrpPtr
                LEAX  63,X                      ;Calc location of cannon shell
                STX   ShellPos                  ;Store it
                LDA   #$FF                      ;Cannon shell graphic
                STA   ,X                        ;Draw it
                LBSR  CannonFireSnd
                LDX   TankPos
                LDY   TankGrpPtr
                RTS

ShellCtrl       STX   TankPos                   ;Save Tank position
                STY   TankGrpPtr
                LDX   ShellPos                  ;Get Shell pos
                LDB   ShellColCnt
                LDA   ShellDir
                CMPA  #ShellDirLeft
                BNE   ScrShellRight
ScrShellLeft    LDA   #$08                      ;Scroll shell 8 times
                LDX   ShellPos
                LEAY  ,X
SSL_1           ROL   ,Y
                ROL   -1,Y
                DECA
                BNE   SSL_1
                LEAX  -1,X                      ;Move shell pos left
                STX   ShellPos                  ;Save it
                LEAX  -1,X                      ;Get graphic to left of shell
                LDA   ,X
                CMPA  #$00                      ;Is it empty?
                BNE   BounceShell               ;No - bounce it
                DECB                            ;Reduce shell Scroll count
                STB   ShellColCnt               ;Save it
                CMPB  #$00                      ;Has shell finsihed moving left?
                LBEQ  ShellHitTgt               ;Yes - shell hit target?
                LDX   TankPos
                LDY   TankGrpPtr
                LDB   HyperSpaceFlag
                CMPB  #$00
                LBNE  HyperSpaceCtrl
                LBRA  FireLoop_1
BounceShell     LBSR  ShellBncSnd
                LDX   ShellPos

                ;Scroll the shell right
ScrShellRight   LDB   ShellScrollCnt
                LDA   #$08                      ;Scroll shell 8 times
                STA   ShellRotateCnt
                LDA   #ShellDirRight
                STA   ShellDir
                LDX   ShellPos
                LEAX  2,X
                LDA   ,X
                CMPA  #$00                      ;Has shell hit tank?
                BNE   ShellHitTank              ;Yes
                LDX   ShellPos                  ;No - scroll shell
                LEAY  ,X
SSR_1           ROR   ,Y
                ROR   1,Y
                LDA   ShellRotateCnt
                DECA
                STA   ShellRotateCnt
                CMPA  #$00                      ;Finished scrolling shell?
                BNE   SSR_1                     ;No
                LEAX  1,X                       ;Yes - move it into next byte
                STX   ShellPos
                DECB
                STB   ShellScrollCnt
                CMPB  #$00                      ;Has shell movement finished?
                BEQ   SSR_exit                  ;Yes
                LDX   TankPos                   ;No
                LDY   TankGrpPtr
                LDB   HyperSpaceFlag
                CMPB  #$00                      ;Is hyperspace active?
                LBNE  HyperSpaceCtrl            ;Yes
                LBRA  FireLoop_1                ;No

SSR_exit        LDA   #$00                      ;Erase shell graphic
                STA   ShellDir
                STA   ,X
                LEAX  -1,X
                STA   ,X
                LDX   TankPos
                LDY   TankGrpPtr
                LBRA  MainLoop

                ;*****************
                ;Tank has been hit
                ;*****************
                ;Erase shell graphic
ShellHitTank    LDX   ShellPos
                LDA   #$00
                STA   ,X
                LEAX  -1,X
                STA   ,X

                ;Reduce number of lives
                LDA   NumLives
                DECA
                STA   NumLives

                ;Erase tank Graphic
                LDB   #$0B
                LDX   TankPos
                LDA   #$00
SHTET_1         STA   ,X
                LEAX  32,X
                DECB
                BNE   SHTET_1
                LEAX  $FEA1,X
                LDB   #$0B
SHTET_2         STA   ,X
                LEAX  32,X
                DECB
                BNE   SHTET_2
                LEAX  $FEA1,X
                LDB   #$0B
SHTET_3         STA   ,X
                LEAX  32,X
                DECB
                BNE   SHTET_3

                ;Draw tank hit graphic
                LDB   #$0B
                LDX   TankPos
                LEAX  1,X
                LDY   #TankHitGrp
SHTDT_1         LDA   ,Y+
                STA   ,X
                LEAX  32,X
                DECB
                BNE   SHTDT_1

                LDA   NumLives
                CMPA  #$00                      ;Have all lives been used up?
                BEQ   SHT_NoMoreLives           ;Yes
                LBSR  ShellHitTnkSnd            ;Make sound
                LBRA  ResetGame                 ;Reset the game and start level again

SHT_NoMoreLives LDB   #$08
                STB   NumEnemies
                JMP   EndGame                   ;End the game

                NOP
                NOP
                NOP
                NOP
                NOP
                NOP
                NOP
                NOP
                NOP
                NOP
                NOP
                NOP
                NOP
                NOP
                NOP
                NOP
                NOP
                NOP
                NOP
                NOP
                NOP
                NOP
                NOP
                NOP
                NOP
                NOP
                NOP
                NOP
                NOP
                NOP
                NOP
                NOP
                NOP
                NOP
                NOP
                NOP
                NOP
                NOP
                NOP
                NOP
                NOP
                NOP
                NOP
                NOP
                NOP
                NOP
                NOP
                NOP
                NOP
                NOP
                NOP

                ;********************
                ;Bomb control routine
                ;********************
BombCtrl        STX   TankPos
                STY   TankGrpPtr

                LDB   BombFlag
                CMPB  #$00                      ;Is bomb already in flight?
                BNE   BombMove                  ;Yes
                LDY   BombDelay                 ;No - count down when to init
                LEAY  -1,Y
                STY   BombDelay
                CMPY  #$0000
                BNE   BombCtrl_Exit             ;Not ready to drop bomb

                ;Initiate Bomb
                LDB   #$01                      ;Set bomb active marker
                STB   BombFlag
                LDX   BombPosInit               ;Set its onscreen position
                STX   BombPos
                LDY   #BombGraphic              ;Draw bomb
                LDB   #$0A
BombInit_1      LDA   ,Y+
                STA   ,X
                LEAX  32,X
                DECB
                BNE   BombInit_1

                ;Move Bomb down screen
BombMove        LDB   #$04                      ;Move it 4 times
                STB   BombMoveCnt
BombMove_2      LDX   BombPos
                LDA   #$00                      ;Erase top line
                STA   ,X
                LEAX  32,X
                STX   BombPos
                LDB   #$0A                      ;Draw bomb
                LDY   #BombGraphic
BombMove_1      LDA   ,Y+
                STA   ,X
                LEAX  32,X
                DECB
                BNE   BombMove_1

                ;Has bomb hit tank?
                LEAX  32,X
                LDA   ,X
                CMPA  #$00
                BNE   BombHitTank               ;Yes

                ;Has bomb reached bottom of screen?
                CMPX  #$1C9D
                BGE   BombReset                 ;Yes - reset
                LDB   BombMoveCnt               ;No
                DECB
                STB   BombMoveCnt
                CMPB  #$00
                BNE   BombMove_2

BombCtrl_Exit   LDX   TankPos
                LDY   TankGrpPtr
                LDB   HyperSpaceFlag
                CMPB  #$02
                LBEQ  HyperSpaceCtrl
                LDB   ShellFiredFlag
                CMPB  #$00                      ;Is there a tank shell inflight?
                LBEQ  FireLoop_2                ;yes
                LBRA  MainLoop_1                ;No

                ;Bomb reached bottom of screen - reset it
BombReset       LDX   BombPos                   ;Erase bomb
                LDB   #$0A
                LDA   #$00
BombReset_1     STA   ,X
                LEAX  32,X
                DECB
                BNE   BombReset_1
                LDB   #$00                      ;Reset bomb ctrl values
                STB   BombFlag
                LDY   #$03E8
                STY   BombDelay
                BRA   BombCtrl_Exit             ;Exit

                ;Bomb has hit Tank
BombHitTank     LDX   BombPos
                LDB   #$0A
                LDA   #$00                      ;Erase bomb
BombHitTank_2   STA   ,X
                LEAX  32,X
                DECB
                BNE   BombHitTank_2
                LDB   #$00                      ;Reset bomb ctrl values
                STB   BombFlag
                LDY   #$03E8
                STY   BombDelay
                LBRA  ShellHitTank

                ;***************************
                ;Hyperspace has been pressed
                ;***************************
HyperSpace      STX   TankPos
                STY   TankGrpPtr

                ;Erase shell
                LDX   ShellPos
                LDA   #$00
                STA   ,X
                LEAX  -1,X
                STA   ,X

                LDX   TankPos
                LDB   #$02
                STB   HyperSpaceFlag

                ;Erase Tank
                LDB   #$0B
                LDA   #$00
HSET_1          STA   ,X
                LEAX  32,X
                DECB
                BNE   HSET_1
                LEAX  $FEA1,X
                LDB   #$0B
HSET_2          STA   ,X
                LEAX  32,X
                DECB
                BNE   HSET_2
                LEAX  $FEA1,X
                LDB   #$0B
HSET_3          STA   ,X
                LEAX  32,X
                DECB
                BNE   HSET_3

                LDX   TankPos
HypeSpace_exit  LBSR  ScrollGap
                JMP   BombCtrl

                NOP

                ;Count down hyperspace timer
HyperSpaceCtrl  LBSR  SlowDown
                LDY   HyperSpaceCntDn
                LEAY  -1,Y
                STY   HyperSpaceCntDn
                CMPY  #$0000                    ;Hyperspace finsihed?
                BEQ   HypeSpaceFin              ;Yes
                BRA   HypeSpace_exit            ;No

                ;Hyperspace finished
HypeSpaceFin    LDY   #$0032                    ;Reset hyperspace ctrl values
                STY   HyperSpaceCntDn

                ;Redraw Tank
                LDX   TankPos
                LDY   #TankGraphic
                LDB   #$0B
HSRT_1          LDA   ,Y+
                STA   ,X
                LEAX  32,X
                DECB
                BNE   HSRT_1
                LDX   TankPos
                LEAX  1,X
                LDB   #$0B
HSRT_2          LDA   ,Y+
                STA   ,X
                LEAX  32,X
                DECB
                BNE   HSRT_2
                LDX   TankPos
                LEAX  2,X
                LDB   #$0B
HSRT_3          LDA   ,Y+
                STA   ,X
                LEAX  32,X
                DECB
                BNE   HSRT_3

                LDX   TankPos
                LEAY  -22,Y
                LDB   #$00
                STB   HyperSpaceFlag
                LBRA  MainLoop

                ;****************
                ;Shell Hit Target
                ;****************
ShellHitTgt     LEAX  -1,X
                LDA   ,X
                CMPA  #$80                      ;Has cell already been hit?
                LBNE   BounceShell              ;Yes - go back
                LEAX  2,X                       ;Erase shell
                LDA   #$00
                STA   ,X

                ;Get location of hit cell
                LEAX  -2,X
SHT_1           LEAX  -32,X
                LDA   ,X
                CMPA  #$FF
                BNE   SHT_1

                ;Draw cell as hit
                STX   TempXReg
                STY   TempYReg
                LBSR  ShellScoredSnd
                LDX   TempXReg
                LDY   TempYReg
                LDB   #$08
                LDA   #$FF
SHT_2           STA   ,X
                LEAX  32,X
                DECB
                BNE   SHT_2

                ;Increase score
                LDY   Score
                LEAY  10,Y
                STY   Score

                ;Write new score to screen
                LDA   Score_Dig4
                INCA
                CMPA  #$09                      ;Is digit 4 above 9?
                BGT   SHT_3                     ;Yes - increase next sig bit
                STA   Score_Dig4                ;No - save and draw
                LDY   #$0764
                LDA   Score_Dig4
                LBSR  DrawNums
                LBRA  SHT_6a                    ;finished

SHT_3           LDA   #$00                      ;Set digit 4 to zero
                STA   Score_Dig4                ;Save and draw
                LDY   #$0764
                LDA   Score_Dig4
                LBSR  DrawNums
                LDA   Score_Dig3                ;increase next sig bit
                INCA
                CMPA  #$09                      ;is digit 3 above 9?
                BGT   SHT_4                     ;Yes - increase next sig bit
                STA   Score_Dig3                ;No - save and draw
                LDY   #$0763
                LDA   Score_Dig3
                LBSR  DrawNums
                LBRA  SHT_6a                    ;Finished

SHT_4           LDA   #$00                      ;Set digit 3 to zero
                STA   Score_Dig3                ;Save and draw
                LDY   #$0763
                LDA   Score_Dig3
                LBSR  DrawNums
                LDA   Score_Dig2                ;increase next sig bit
                INCA
                CMPA  #$09                      ;is digit 2 above 9?
                BGT   SHT_5                     ;Yes - increase next sig bit
                STA   Score_Dig2                ;No - save and draw
                LDY   #$0762
                LDA   Score_Dig2
                LBSR  DrawNums
                LBRA  SHT_6a                    ;Finished

SHT_5           LDA   #$00                      ;Set digit 2 to zero
                STA   Score_Dig2                ;Save and draw
                LDY   #$0762
                LDA   Score_Dig2
                LBSR  DrawNums
                LDA   Score_Dig1                ;increase next sig bit
                INCA
                CMPA  #$09                      ;is digit 1 above 9
                BGT   SHT_6                     ;Yes - reset scores
                LDY   #$0761                    ;Save and draw
                LDA   Score_Dig1
                LBSR  DrawNums
                LBRA  SHT_6a

SHT_6           LDA   #$00                      ;Set all digits to zero
                STA   Score_Dig1                ;Save and draw
                LDY   #$0761
                LDA   Score_Dig1
                LBSR  DrawNums

                STA   Score_Dig2
                LDY   #$0762
                LDA   Score_Dig2
                LBSR  DrawNums

                STA   Score_Dig3
                LDY   #$0763
                LDA   Score_Dig3
                LBSR  DrawNums

                STA   Score_Dig4
                LDY   #$0764
                LDA   Score_Dig4
                LBSR  DrawNums
                STA   Score_Dig4

                ;Check if all targets hit
SHT_6a          LDX   #$0902                    ;Pos of Zero in top box
                LDB   #$99
SHT_8           LDA   ,X
                CMPA  #$80
                LBEQ  SHT_Exit
                LEAX  32,X
                DECB
                BNE   SHT_8

                ;Increase score by 200
                LDY   Score
                LEAY  $00C8,Y
                STY   Score
                LDA   Score_Dig3
                INCA
                INCA

                CMPA  #$09                      ;Is digit 3 now above 9?
                BGT   SHT_9                     ;Yes -
                STA   Score_Dig3                ;No - save and Draw
                LDY   #$0763
                LBSR  DrawNums
                BRA   Level1Finsihed

SHT_9           CMPA  #$0A                      ;Is digit 3 = 10?
                BEQ   SHT_10                    ;Yes - set to zero
                LDA   #$01                      ;No - it will be one
                STA   Score_Dig3
                LDY   #$0763                    ;Draw it
                LBSR  DrawNums
                LDA   Score_Dig2
                INCA                            ;Need to increase next sig byte
                CMPA  #$09                      ;Is digit 2 now above 9?
                BGT   SHT_10                    ;Yes
                LDY   #$0762                    ;No - draw it

                ;Incorrect in listing - removed
                ;FCB   $87
                ;FCB   $62

                LBSR  DrawNums
                BRA   Level1Finsihed

SHT_10          LDA   #$00                      ;Set digit 3 to zero
                STA   Score_Dig3                ;Save and draw
                LDY   #$0763
                LBSR  DrawNums
                LDA   Score_Dig2                ;Need to increase next sig bit
                INCA
                CMPA  #$09                      ;is digit 2 now above 9?
                BGT   SHT_11                    ;Yes
                STA   Score_Dig2                ;No - save and draw
                LDY   #$0762
                LBSR  DrawNums
                BRA   Level1Finsihed

SHT_11          LDA   #$00                      ;Set all digits to zero
                STA   Score_Dig1                ;Save and draw
                LDY   #$0761
                LBSR  DrawNums
                STA   Score_Dig2
                LDY   #$0762
                LBSR  DrawNums
                STA   Score_Dig3
                LDY   #$0763
                LBSR  DrawNums
                STA   Score_Dig4
                LDY   #$0764
                LBSR  DrawNums
                BRA   Level1Finsihed

SHT_Exit        LDX   TankPos
                LDY   TankGrpPtr
                LBRA  MainLoop

                ;***************************
                ;Game 1 completed \ finished
                ;***************************
Level1Finsihed  LDA   GameLevel
                INCA
                STA   GameLevel

                ;Clear game area
                LDX   #$08A0
                LDA   #$00
                LDY   #$1560
L1F_1           STA   ,X+
                LEAY  -1,Y
                CMPY  #$0000
                BNE   L1F_1
                LBRA  PlayGame2

                ;***********
                ;Game sounds
                ;***********
ShellBncSnd     LDA   #$34
                STA   $FF1D
                LDA   #$35
                STA   $FF1F
                LDA   #$3F
                STA   $FF23
                LDX   #$0010
SBS_1           LDA   #$80
                BSR   SBS_2
                CLRA
                BSR   SBS_2
                LEAX  -1,X
                BNE   SBS_1
                RTS
SBS_2           LDB   #$60   `
SBS_3           STA   $FF20
                DECB
                BNE   SBS_3
                RTS

ShellScoredSnd  LDA   #$34
                STA   $FF1D
                LDA   #$35
                STA   $FF1F
                LDA   #$3F
                STA   $FF23
                LDX   #$0010
SSS_1           LDA   #$80
                BSR   SSS_2
                CLRA
                BSR   SSS_2
                LEAX  -1,X
                BNE   SSS_1
                RTS
SSS_2           LDB   #$30
SSS_3           STA   $FF20
                DECB
                BNE   SSS_3
                RTS

ShellHitTnkSnd  LDA   #$34
                STA   $FF1D
                LDA   #$35
                STA   $FF1F
                LDA   #$3F
                STA   $FF23
                LDX   #$0099
SHTS_1          LDA   #$99
                BSR   SHTS_2
                CLRA
                BSR   SHTS_2
                LEAX  -1,X
                BNE   SHTS_1
                RTS
SHTS_2          LDB   #$99
SHTS_3          STA   $FF20
                DECB
                BNE   SHTS_3
                RTS

CannonFireSnd   PSHS  A,B,X,Y
                LDX   #$0001
                LDY   #$0001
CFS_3           LEAX  1,X
                LDA   #$09
                STA   $FF20
                CLR   $0112
                CLR   $0113
                LDA   $FF23
                ORA   #$08
                STA   $FF23
                LDA   $FF01
                ANDA  #$F7
                STA   $FF01
                LDA   $FF03
                ANDA  #$F7
                STA   $FF03
CFS_2           COM   $FF20
                PSHS  X
CFS_1           LEAX  -1,X
                BNE   CFS_1
                PULS  X
                CMPY  $0112
                BLT   CFS_2
                CMPX  #$0070
                BNE   CFS_3
                PULS  A,B,X,Y
                RTS

                ;Does not appear to be used
                LDY   #$0514
                STY   DelayCnt

PlayGame2_Reset LDB   #$08
                STB   NumEnemies

PlayGame2       LDX   #TankDispArray
                STX   EnemyArrPtr2
                LDA   #$00
                STA   TankHitFlag

                ;Decide which type of enemy to display
                LDA   GameLevel
                CMPA  #$01
                BEQ   Game2Level01
                CMPA  #$02
                BEQ   Game2Level02
                LBRA  Game2Level03

                ;Draw enemy type 1 - indicates how many enemies left in play
Game2Level01    LDY   #TankDispArray            ;Array of Location of enemy tanks on screen
                STY   EnemyArrPtr               ;Store 1st array location to pointer
                LDX   #$09E2
                STX   ,Y                        ;Save position of 1st tank to 1st array position
                LDB   #$08                      ;Number of tanks to draw
                STB   NumEnemyTanks
G2L1_2          LDX   [EnemyArrPtr]             ;Get position to draw tank from array
                LDY   #EnemyTankGph             ;Draw
                LDB   #$07
G2L1_1          LDA   ,Y+
                STA   ,X
                LEAX  32,X
                DECB
                BNE   G2L1_1                    ;Not finished drawing
                LDB   NumEnemyTanks
                DECB
                STB   NumEnemyTanks
                CMPB  #$00                      ;Finished drawing all enemy indicators?
                BNE   G2L1_3                    ;No
                LBRA  PlayLevel2                ;Yes - go play
G2L1_3          LEAX  $0140,X                   ;Calculate screen position of next tank
                LDY   EnemyArrPtr               ;Point to the next array psotion
                LEAY  2,Y
                STX   ,Y                        ;store the screen poistion
                STY   EnemyArrPtr               ;point to it
                BRA   G2L1_2                    ;draw next enemy

                ;Draw enemy type 2 - indicates how many enemies left in play
Game2Level02    LDY   #TankDispArray
                STY   EnemyArrPtr
                LDX   #$09E2
                STX   ,Y
                LDB   #$08
                STB   NumEnemyTanks
G2L2_2          LDX   [EnemyArrPtr]
                LDY   #EnemySpiderGph           ;Enemy type 2 graphic
                LDB   #$07
G2L2_1          LDA   ,Y+
                STA   ,X
                LEAX  32,X
                DECB
                BNE   G2L2_1
                LDB   NumEnemyTanks
                DECB
                STB   NumEnemyTanks
                CMPB  #$00
                BNE   G2L2_3
                BRA   PlayLevel2
G2L2_3          LEAX  $0140,X
                LDY   EnemyArrPtr
                LEAY  2,Y
                STX   ,Y
                STY   EnemyArrPtr
                BRA   G2L2_2

                ;Draw enemy type 3 - indicates how many enemies left in play
Game2Level03    LDY   #TankDispArray
                STY   EnemyArrPtr
                LDX   #$09E2
                STX   ,Y
                LDB   #$08
                STB   NumEnemyTanks
G2L3_2          LDX   [EnemyArrPtr]
                LDY   #EnemyVehGrp              ;Enemy type 3 graphic
                LDB   #$07
G2L3_1          LDA   ,Y+
                STA   ,X
                LEAX  32,X
                DECB
                BNE   G2L3_1
                LDB   NumEnemyTanks
                DECB
                STB   NumEnemyTanks
                CMPB  #$00
                BNE   G2L3_3
                BRA   PlayLevel2
G2L3_3          LEAX  $0140,X
                LDY   EnemyArrPtr
                LEAY  2,Y
                STX   ,Y
                STY   EnemyArrPtr
                BRA   G2L3_2

                ;Draw players tank
PlayLevel2      LDY   #$1B1C
                LDX   #TankGraphic
                LDB   #$0B
PL2_1           LDA   ,X+
                STA   ,Y
                LEAY  32,Y
                DECB
                BNE   PL2_1
                LDY   #$1B1D
                LDB   #$0B
PL2_2           LDA   ,X+
                STA   ,Y
                LEAY  32,Y
                DECB
                BNE   PL2_2
                LDY   #$1B1E
                LDB   #$0B
PL2_3           LDA   ,X+
                STA   ,Y
                LEAY  32,Y
                DECB
                BNE   PL2_3

                ;Draw enemy in play
                LDX   #$09E4
                STX   EnemyPos
                LDY   #$09E2
                LDB   #$07
PL2_4           LDA   ,Y
                STA   ,X
                LEAY  32,Y
                LEAX  32,X
                DECB
                BNE   PL2_4

                ;Make backup copy of enemy graphic
                LDX   #$09E2
                LDY   #EnemyGrpCopy
                LDB   #$07
PL2_5           LDA   ,X
                STA   ,Y+
                LEAX  32,X
                DECB
                BNE   PL2_5

                ;Erase 1st enemy lives indicator
                LDX   #$09E2
                LDB   #$07
                LDA   #$00
PL2_6           STA   ,X
                LEAX  32,X
                DECB
                BNE   PL2_6

                ;Setup game parameters
                LDX   #$1B1C
                LDY   #TankGraphic2
                LDB   #$8F
                STB   GapRowCnt
                LDB   #$00
                STB   EnemyDirection
                LDB   #$15
                STB   EnemyShlScrlCnt
                LDB   #$33
                STB   EnemyFireCntDn
                LDA   #$00
                STA   EndGameFlag

MainLoopL2      LDB   #$16
                STB   ShellColCnt
                LDA   #$00
                STA   ShellDir
                STA   HyperSpaceFlag
                LDB   #$01
                STB   ShellFiredFlag
                STB   ShellAtvFlag

                ;Checkif fire pressed
                LBSR  $8006
                CMPA  #$0C                      ;Has Fire been pressed?
                LBEQ  FireCtrlG2                ;Yes

                LBSR  MoveEnemyG2

                LDB   EndGameFlag
                CMPB  #$01
                LBEQ  EndGame

                LBSR  SlowDownG2

                LDA   $0153
                CMPA  #$EF                      ;Player pressed Up?
                BEQ   MoveTankUpG2              ;Yes
                LDA   $0153
                CMPA  #$FB                      ;Player pressed down?
                BEQ   MoveTankDownG2            ;Yes

                BRA   MainLoopL2

                ;Move tank up
MoveTankUpG2    LDB   #$02                      ;Move two times
                STB   MoveTankCnt

                ;Erase players tank
MTUG2_1         LEAX  $0140,X                   ;Erase Bottom line of 1st third
                LDA   #$00
                STA   ,X
                LDB   #$0B                      ;Draw 1st third
MTUG2_2         LEAX  -32,X
                LDA   ,-Y
                STA   ,X
                DECB
                BNE   MTUG2_2
                LEAX  $0161,X                   ;Erase Bottom line of 2nd third
                LDA   #$00
                STA   ,X
                LDB   #$0B                      ;Draw 2nd third
                LEAY  22,Y
MTUG2_3         LEAX  -32,X
                LDA   ,-Y
                STA   ,X
                DECB
                BNE   MTUG2_3
                LEAX  $0161,X                   ;Erase Bottom line of 3rd third
                LDA   #$00
                STA   ,X
                LDB   #$0B                      ;Draw 3rd third
                LEAY  22,Y
MTUG2_4         LEAX  -32,X
                LDA   ,-Y
                STA   ,X
                DECB
                BNE   MTUG2_4

                LEAY  -11,Y
                LEAX  -2,X
                CMPX  #$08BC                    ;Has tank reached top of playing area?
                BLE   MoveTankDownG2            ;Yes - move it back down
                LDB   MoveTankCnt               ;No
                DECB
                STB   MoveTankCnt
                BNE   MTUG2_1                   ;Need to move it again
                LDB   ShellAtvFlag
                CMPB  #$00                      ;Is a shell acive?
                LBEQ  FireLoopG2                ;Yes
                LBRA  MainLoopL2                ;No

                ;Move Tank Down
MoveTankDownG2  LDB   #$02
                STB   MoveTankCnt
MTDG2_1         LDA   #$00                      ;Erase top line of 1st third
                STA   ,X
                LDB   #$0B                      ;draw 1st third
                LEAY  -11,Y
MTDG2_2         LEAX  32,X
                LDA   ,Y+
                STA   ,X
                DECB
                BNE   MTDG2_2
                LEAX  $FEA1,X
                LDA   #$00                      ;Erase top line of 2nd third
                STA   ,X
                LDB   #$0B                      ;draw 2nd third
MTDG2_3         LEAX  32,X
                LDA   ,Y+
                STA   ,X
                DECB
                BNE   MTDG2_3
                LEAX  $FEA1,X
                LDA   #$00                      ;Erase top ine of 3rd third
                STA   ,X
                LDB   #$0B                      ;draw 3rd third
MTDG2_4         LEAX  32,X
                LDA   ,Y+
                STA   ,X
                DECB
                BNE   MTDG2_4

                LEAY  -22,Y                     ;Reset tank position
                LEAX  $FEBE,X
                CMPX  #$1CBC                    ;Has tank gone off bottom of playing area?
                LBGE  MoveTankUpG2              ;Yes - move tank Up
                LDB   MoveTankCnt
                DECB
                STB   MoveTankCnt
                CMPB  #$00                      ;Has tank fisnihed moving?
                BNE   MTDG2_1                   ;No - move against
                LDB   ShellAtvFlag
                CMPB  #$00                      ;Is tank shell active?
                LBEQ  FireLoopG2                ;Yes
                LBRA  MainLoopL2                ;No

                ;Slow things down
SlowDownG2      STY   SlowDownTemp
                LDY   DelayCnt
SDG2_1          LEAY  -1,Y
                CMPY  #$0000
                BNE   SDG2_1
                LDY   SlowDownTemp
                RTS

                ;*****************
                ;Move enemy target
                ;*****************
MoveEnemyG2     STX   TankPos
                STY   TankGrpPtr

                LDX   EnemyPos
                LBSR  EnemyFireCtrl

                LDA   NumLives
                CMPA  #$00
                LBEQ  SetEndGameFlag

                LDA   EndGameFlag
                CMPA  #$01
                LBEQ  EndGame

                LDA   TankHitFlag
                CMPA  #$00
                LBNE  PlayGame2_Reset
                LDB   EnemyDirection
                CMPB  #EnemyDirDown
                BNE   MoveEnemyUp

                ;Enemy moving down
MoveEnemyDown   LDB   #$07
                LDA   #$00                      ;Erase top line of enemy
                STA   ,X
                LEAX  32,X
                STX   EnemyPos                  ;Draw enemy
                LDY   #EnemyGrpCopy
MED_1           LDA   ,Y+
                STA   ,X
                LEAX  32,X
                DECB
                BNE   MED_1

                LDB   GapRowCnt
                DECB
                STB   GapRowCnt
                CMPB  #$00                      ;Has enemy reached bottom?
                BEQ   MED_2                     ;Yes - change direction
                LDX   TankPos
                LDY   TankGrpPtr
                RTS

                ;Enemy hit bottom - start moving it up
MED_2           LDB   #EnemyDirUp               ;update direction flag
                STB   EnemyDirection
                LDB   #$8F                      ;Number of rows to move count
                STB   GapRowCnt

MoveEnemyUp     LDX   EnemyPos
                LBSR  EnemyFireCtrl
                LDA   NumLives
                CMPA  #$00
                LBEQ  SetEndGameFlag
                LDA   EndGameFlag
                CMPA  #$01
                LBEQ  EndGame
                LDA   TankHitFlag
                CMPA  #$00
                LBNE   PlayGame2_Reset

                LDA   #$00                      ;Erase bottom line of enemy
                LEAX  $00E0,X
                STA   ,X
                LEAX  -32,X
                LDY   #EnemyDirection           ;draw enemy
                LDB   #$07
MEU_1           LDA   ,-Y
                STA   ,X
                LEAX  -32,X
                DECB
                BNE   MEU_1
                STX   EnemyPos

                LDB   GapRowCnt
                DECB
                STB   GapRowCnt
                CMPB  #$00                      ;Has enemy reached top?
                BEQ   MEU_2                     ;Yes - change direction
                LDX   TankPos
                LDY   TankGrpPtr
                RTS

                ;Enemy hit top - start moving it down
MEU_2           LDB   #$8F                      ;Number of rows to count
                STB   GapRowCnt
                LDB   #EnemyDirDown             ;update direction flag
                STB   EnemyDirection
                LDX   TankPos
                LDY   TankGrpPtr
                RTS

                ;************
                ;Fire Pressed
                ;************
FireCtrlG2      LDB   #$00
                STB   ShellAtvFlag
                STB   ShellFiredFlag
                BSR   DrawInitShellG2

FireLoopG2      LDB   ShellAtvFlag
                CMPB  #$01
                LBEQ  MainLoopL2
                JMP   ShellCtrlG2

FireLoopG2_1    LBSR  SlowDownG2
                LBSR  MoveEnemyG2

                LDB   EndGameFlag
                CMPB  #$01
                LBEQ   EndGame
                LBSR  $8006

                LDA   $0153
                CMPA  #$EF                      ;Up
                LBEQ  MoveTankUpG2
                LDA   $0153
                CMPA  #$FB                      ;Down
                LBEQ   MoveTankDownG2

                BRA   FireLoopG2

DrawInitShellG2 STX   TankPos
                STY   TankGrpPtr
                LEAX  63,X
                STX   ShellPos
                LDA   #$FF
                STA   ,X
                LBSR  CannonFireSnd
                LDX   TankPos
                LDY   TankGrpPtr
                RTS

ShellCtrlG2     STX   TankPos
                STY   TankGrpPtr

                ;Move shell left
                LDX   ShellPos
                LDB   ShellColCnt
                LDA   #$09
                LDX   ShellPos
                LEAY  ,X
SCG2_1          ROL   ,Y
                ROL   -1,Y
                DECA
                BNE   SCG2_1

                LEAX  -1,X
                STX   ShellPos
                DECB
                STB   ShellColCnt
                CMPB  #$00                      ;Has shell reach left hand side?
                BEQ   ShellFinG2                ;Yes
                LEAX  -1,X                      ;No
                LDA   ,X
                CMPA  #$00                      ;Has shell hit target?
                BNE   ShellHitTgtG2             ;Yes
                LDX   TankPos                   ;No
                LDY   TankGrpPtr
                BRA   FireLoopG2_1

ShellFinG2      LEAX  -1,X
                LDA   ,X
                CMPA  #$00
                BNE   ShellHitTgtG2
                LEAX  1,X
                LDA   #$00
                STA   ,X
                LDX   TankPos
                LDY   TankGrpPtr
                LBRA  MainLoopL2

ShellHitTgtG2   LEAX  1,X
                LDA   #$00
                STA   ,X
                LBSR  ShellHitTnkSnd

                ;Erase enemy graphic
                LDX   EnemyPos
                LDA   #$00
                LDB   #$08
SHTG2_1         STA   ,X
                LEAX  32,X
                DECB
                BNE   SHTG2_1

                ;Reset enemy vars
                LDA   #$00
                STA   EnemyDirection

                LDB   NumEnemies
                DECB
                STB   NumEnemies
                CMPB  #$00                      ;Killed all enemies?
                LBEQ   ResetGameScrn            ;Yes - next Level

                ;Draw new "live" enemy on screen
                LDX   EnemyArrPtr2
                LEAX  2,X
                STX   EnemyArrPtr2
                LDX   [EnemyArrPtr2]
                LDY   #$09E4
                STY   EnemyPos
                LDB   #$07
SHTG2_2         LDA   ,X
                STA   ,Y
                LEAY  32,Y
                LEAX  32,X
                DECB
                BNE   SHTG2_2

                ;Erase next enemy lives indicator
                LDX   [EnemyArrPtr2]
                LDA   #$00
                LDB   #$07
SHTG2_3         STA   ,X
                LEAX  32,X
                DECB
                BNE   SHTG2_3

                LDA   #$8F                      ;Reset enemy position
                STA   GapRowCnt

                ;Increase score by 10 points
                LDY   Score
                LEAY  10,Y
                STY   Score
                LDA   Score_Dig4
                INCA
                CMPA  #$09
                BGT   SHTG2_4
                STA   Score_Dig4
                LDY   #$0764
                LDA   Score_Dig4
                LBSR  DrawNums
                LBRA  SHTG2_Exit
SHTG2_4         LDA   #$00
                STA   Score_Dig4
                LDY   #$0764
                LDA   Score_Dig4
                LBSR  DrawNums
                LDA   Score_Dig3
                INCA
                CMPA  #$09
                BGT   SHTG2_5
                STA   Score_Dig3
                LDY   #$0763
                LDA   Score_Dig3
                LBSR  DrawNums
                LBRA  SHTG2_Exit
SHTG2_5         LDA   #$00
                STA   Score_Dig3
                LDY   #$0763
                LDA   Score_Dig3
                LBSR  DrawNums
                LDA   Score_Dig2
                INCA
                CMPA  #$09
                BGT   SHTG2_6
                STA   Score_Dig2
                LDY   $0762
                LDA   Score_Dig2
                LBSR  DrawNums
                LBRA  SHTG2_Exit
SHTG2_6         LDA   #$00
                STA   Score_Dig2
                LDY   #$0762
                LDA   Score_Dig2
                LBSR  DrawNums
                LDA   Score_Dig1
                INCA
                CMPA  #$09
                BGT   SHTG2_7
                LDY   #$0761
                LDA   Score_Dig1
                LBSR  DrawNums
                LBRA  SHTG2_Exit
SHTG2_7         LDA   #$00
                STA   Score_Dig1
                LDY   #$0761
                LDA   Score_Dig1
                LBSR  DrawNums
                STA   Score_Dig2
                LDY   #$0762
                LDA   Score_Dig2
                LBSR  DrawNums
                STA   Score_Dig3
                LDY   #$0763
                LDA   Score_Dig3
                LBSR  DrawNums
                STA   Score_Dig4
                LDY   #$0764
                LDA   Score_Dig4
                LBSR  DrawNums
                STA   Score_Dig4

SHTG2_Exit      LDX   TankPos
                LDY   TankGrpPtr
                LBRA  MainLoopL2

ResetGameScrn   LDX   #$08A0
                LDA   #$00
                LDY   #$1560
RGC_1           STA   ,X+
                LEAY  -1,Y
                CMPY  #$0000
                BNE   RGC_1

                ;Increase score by 200
                LDY   Score
                LEAY  $00C8,Y
                STY   Score
                LDA   Score_Dig3
                INCA
                INCA

                ;Display scores
                CMPA  #$09
                BGT   RGC_2
                STA   Score_Dig3
                LDY   #$0763
                LBSR  DrawNums
                BRA   SetNextlevel
RGC_2           CMPA  #$0A
                BEQ   RGC_3
                LDA   #$01
                STA   Score_Dig3
                LDY   #$0763
                LBSR  DrawNums
                LDA   Score_Dig2
                INCA
                CMPA  #$09
                BGT   RGC_3
                STA   Score_Dig2
                LDY   #$0762
                LBSR  DrawNums
                BRA   SetNextlevel
RGC_3           LDA   #$00
                STA   Score_Dig3
                LDY   #$0763
                LBSR  DrawNums
                LDA   Score_Dig2
                INCA
                CMPA  #$09
                BGT   RGC_4
                STA   Score_Dig2
                LDY   #$0762
                LBSR  DrawNums
                BRA   SetNextlevel
RGC_4           LDA   #$00
                STA   Score_Dig1
                LDY   #$0761
                LBSR  DrawNums
                STA   Score_Dig2
                LDY   #$0762
                LBSR  DrawNums
                STA   Score_Dig3
                LDY   #$0763
                LBSR  DrawNums
                STA   Score_Dig4
                LDY   #$0764
                LBSR  DrawNums

                ;Play next level
SetNextlevel    LDA   GameLevel
                INCA
                STA   GameLevel
                CMPA  #$03                      ;Have we finished level 3
                BGT   SNL_1                     ;Yes
                LDX   #$1B1C                    ;No - play next level
                LDY   #TankGraphic2
                STX   TankPos
                STY   TankGrpPtr
                LBRA  PlayGame2_Reset

                ;Reset to level 1 and adjust game parameters
SNL_1           LDA   #$01
                STA   GameLevel
                LDY   DelayCnt
                LEAY  $FED4,Y
                STY   DelayCnt
                CMPY  #$0190
                BLT   SNL_2
                LDX   #$1B1C
                LDY   #TankGraphic2
                STX   TankPos
                STY   TankGrpPtr
                LBRA  PlayGame2_Reset
SNL_2           LDY   #$0190
                STY   DelayCnt
                LDX   #$1B1C
                LDY   TankGraphic2
                STX   TankPos
                STY   TankGrpPtr
                LBRA  PlayGame2_Reset

                ;******************
                ;Enemy fire Control
                ;******************
EnemyFireCtrl   LDB   EnemyShlAtvFlag           ;Get enemy shell flag
                CMPB  #$00                      ;Is enemy shell in flight?
                BEQ   EFC_1                     ;No - count down to firing
                CMPB  #$01
                BEQ   MoveEnemyShell            ;Yes - move it
EFC_1           LDB   EnemyFireCntDn            ;Count down for enemy shell firing
                DECB
                STB   EnemyFireCntDn
                CMPB  #$00                      ;Ready to fire
                BEQ   FireEnemyShell            ;Yes - initiate firing
                RTS                             ;No - return

                ;****************
                ;Fire enemy shell
                ;****************
FireEnemyShell  STX   EnemyTankPosTMP
                LDX   EnemyPos
                LEAX  $0081,X
                LDB   #$01
                STB   EnemyShlAtvFlag
                LDA   #$FF
                STA   ,X
                STX   EnemyShellPos
                LBSR  ShellScoredSnd
                LDX   EnemyTankPosTMP

MoveEnemyShell  STX   EnemyTankPosTMP
                STY   NotUsed1
                LDX   EnemyShellPos
                LDB   EnemyShlScrlCnt
                LDA   #$08
                STA   EnemyShlRotCnt
                LEAY  ,X
MES_1           ROR   ,Y
                ROR   1,Y
                LDA   EnemyShlRotCnt
                DECA
                STA   EnemyShlRotCnt
                CMPA  #$00
                BNE   MES_1
                LEAX  1,X
                STX   EnemyShellPos
                DECB
                STB   EnemyShlScrlCnt
                CMPB  #$00
                BEQ   MES_2
                LDX   EnemyTankPosTMP
                RTS

                ;Enemy shell finished
MES_2           LDB   #$16
                STB   EnemyShlScrlCnt
                LDB   #$00
                STB   EnemyShlAtvFlag
                LDB   #$33
                STB   EnemyFireCntDn

                ;Has shell hit tank?
                LEAX  1,X
                LDA   ,X
                CMPA  #$00
                BNE   MES_3                     ;Yes

                LDA   #$00                      ;no - erase shell
                LEAX  -1,X
                STA   ,X
                LDX   EnemyTankPosTMP
                RTS

                ;Tank hit - erase enemy shell
MES_3           LDA   #$00
                LEAX  -1,X
                STA   ,X
                LDA   NumLives
                DECA
                STA   NumLives
                LDY   #$0750
                LBSR  DrawNums

                ;Erase tank
                LDB   #$0B
                LDX   TankPos
                LDA   #$00
MES_4           STA   ,X
                LEAX  32,X
                DECB
                BNE   MES_4
                LEAX  $FEA1,X
                LDB   #$0B
MES_5           STA   ,X
                LEAX  32,X
                DECB
                BNE   MES_5
                LEAX  $FEA1,X
                LDB   #$0B
MES_6           STA   ,X
                LEAX  32,X
                DECB
                BNE   MES_6

                ;Draw tank hit graphic
                LDB   #$0B
                LDX   TankPos
                LEAX  1,X
                LDY   #TankHitGrp
MES_7           LDA   ,Y+
                STA   ,X
                LEAX  32,X
                DECB
                BNE   MES_7

                LBSR  ShellHitTnkSnd

                ;Reset screen
                LDX   #$08A0
                LDA   #$00
                LDY   #$1560
MES_8           STA   ,X+
                LEAY  -1,Y
                CMPY  #$0000
                BNE   MES_8

                LDA   #$01
                STA   TankHitFlag
                RTS

SetEndGameFlag  LDB   #$01
                STB   EndGameFlag
                RTS

                ;*********
                ;Game over
                ;*********
EndGame         LDY   Score
                CMPY  HiScore
                BLT   EG_1
                LDA   Score_Dig1
                LDX   #HiScore_Dig1
                STA   ,X+
                LDA   Score_Dig2
                STA   ,X+
                LDA   Score_Dig3
                STA   ,X+
                LDA   Score_Dig4
                STA   ,X+
                LDA   Score_Dig5
                STA   ,X+
                LDX   Score
                STX   HiScore
EG_1            LBSR  $B54A                 ;Output Character in A Reg to DEVN

                ;Clear Screen
                LDX   #$0400
                LDA   #$AF
EG_2            STA   ,X+
                CMPX  #$0600
                BLT   EG_2

                ;Write "YOUR SCORE"
                LDX   #$0466
                LDY   #YourScoreTxt
                LDB   #$10
EG_3            LDA   ,Y+
                STA   ,X+
                DECB
                BNE   EG_3
                LDA   Score_Dig1
                ADDA  #$70
                STA   ,X+
                LDA   Score_Dig2
                ADDA  #$70
                STA   ,X+
                LDA   Score_Dig3
                ADDA  #$70
                STA   ,X+
                LDA   Score_Dig4
                ADDA  #$70
                STA   ,X+
                LDA   Score_Dig5
                ADDA  #$70
                STA   ,X

                ;Write "HI-SCORE"
                LDX   #$04A6
                LDY   #HiScoreTxt
                LDB   #$10
EG_4            LDA   ,Y+
                STA   ,X+
                DECB
                BNE   EG_4
                LDA   HiScore_Dig1
                ADDA  #$70
                STA   ,X+
                LDA   HiScore_Dig2
                ADDA  #$70
                STA   ,X+
                LDA   HiScore_Dig3
                ADDA  #$70
                STA   ,X+
                LDA   HiScore_Dig4
                ADDA  #$70
                STA   ,X+
                LDA   HiScore_Dig5
                ADDA  #$70
                STA   ,X

                ;Write "ANOTHER GO"
                LDX   #$0526
                LDY   #AnotherGoTxt
                LDB   #$15
EG_5            LDA   ,Y+
                STA   ,X+
                DECB
                BNE   EG_5

                LDB   #$05
                LDA   #$00
                LDX   #Score_Dig1
EG_6            STA   ,X
                LEAX  1,X
                DECB
                BNE   EG_6

                ;Wait for key press
EG_7            LBSR  $8006
                CMPA  #$59
                BNE   EG_7
                LBRA  GameStart
                RTS
