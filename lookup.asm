; Write 8085 ALP to find the square of a number using LOOK-UP table
; located at 5000H and store the result at 6000H memory location.
jmp start

;data

;code
start:lxi h,5000h;
mvi a,04h;
add l;
mov l,a;
mov a,m;
sta 5010h;
hlt;