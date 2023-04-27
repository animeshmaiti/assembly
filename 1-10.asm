; Write an assembly language program to generate numbers from OOH to OAH and store them
; from 8020H to 802AH. in 8051
ORG 0000H
MOV R0, #0OH
MOV R2, #8020H
MOV R3, #802AH
L1: MOV @R2, R0
INC R0
INC R2
CJNE R2, R3, L1
END