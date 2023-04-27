; Write 8085 ALP to find the square of a number using LOOK-UP table
; located at 5000H and store the result at 6000H memory location.
jmp start

;data

;code
start:lxi h,5000h;[h]=50,[l]=00
mvi a,04h;
add l;a<=a+l
mov l,a;
mov a,m;
sta 5010h;
hlt;