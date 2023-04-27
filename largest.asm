;larger

jmp start

;data

;code
start:lxi h,5000h;
mov a,m;
mvi b,04h;
back:inx h;
cmp m;
jnc next;
mov a,m;
next:dcr b;
jnz back;
sta 5008h;
hlt;