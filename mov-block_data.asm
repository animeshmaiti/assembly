; Write 8085 ALP to move block of data (5 bytes) from source location
; 5000H to destination location 6000H.
jmp start

;data

;code
start:mvi h,05h;5 bytes
lxi b,5000h;[bc]=5000h
lxi d,5010h;[de]=5010h
back:ldax b;[a]<=[[bc]]=[5000h]=10h
stax d;[a]=>[[de]]=[5010h]
inx b;
inx d;
dcr h;
jnz back;
hlt;