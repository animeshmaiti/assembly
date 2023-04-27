.MODEL small
.STACK 100h

.DATA
    my_data DB 58h, 2Ah, 3Eh, 25h, 5Fh

.CODE
main PROC
    ; set up data segment
         MOV   AX, @DATA
         MOV   DS, AX

    ; store data in memory starting at offset 600
         MOV   SI, OFFSET my_data    ; load offset of my_data into SI
         MOV   DI, 600h              ; load offset 600 into DI
         MOV   CX, 5                 ; load number of bytes to copy into CX
         CLD                         ; clear direction flag to move forward through memory
         REP   MOVSB                 ; move byte from DS:SI to ES:DI for CX times

         MOV   AX, 2000h              ; loads the value 2000 into the AX register
         MOV   DI, 600h               ; loads the value 600 into the DI register, which is the starting offset of the memory block to be searched
         MOV   AL, 25h                ; loads the value 25 into the AL register, which is the value to be searched for in the memory block
         MOV   CX, 5h              ; loads the value 0005 (hexadecimal for 5) into the CX register, which specifies the number of bytes to search
         MOV   BX, CX                ; copies the value of CX to BX for later use
         CLD                         ; clears the direction flag in the flags register, which ensures that the string search operation moves forward through memory
         REPNE SCASB              ; performs a repeated string search for the byte value in AL, starting at the memory location specified by DI, for the number of bytes specified by CX
         DEC   DI                    ; decrements the DI register by 1, which moves it to the memory location of the last byte searched that did not match the value in AL
         MOV   DX, DI                ; copies the value of DI to the DX register, which now holds the offset of the last byte searched that did not match the value in AL
         SUB   BX, CX                ; subtracts the original value of CX from BX, which now holds the number of bytes searched that did not match the value in AL
         DEC   BX                    ; decrements BX by 1, which corrects it to hold the total number of bytes searched


         MOV   AH, 4Ch               ; exit to DOS
         INT   21h
main ENDP

END main
