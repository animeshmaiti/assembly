
jmp start

;data

;code
start:LXI H, 5000h;
MVI C, 08h;	C <- 08
MVI B, 00h;	B <- 00
MVI D, 01h;	D <- 01
MOV M, B;	M <- B
INX H;	M <- M + 01
MOV M, D;	M <- D
back:MOV A, B;	A <- B
ADD D;	A <- A + D
MOV B, D;	B <- D
MOV D, A;	D <- A
INX H;	M <- M + 01
MOV M, A;	M <- A
DCR C;	C <- C – 01
JNZ back;	Jump if ZF = 0
hlt;