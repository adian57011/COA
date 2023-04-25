.MODEL SMALL
.STACK 100H

.DATA
NUM DB 11010101B

.CODE
MAIN PROC
    
    
    MOV AX,@DATA
    MOV DS,AX
    
    MOV AH,1
    INT 21H
    MOV CL,AL
    SUB CL,30H
    XOR CH,CH
    
    MOV AH,2
    MOV DL,NUM
    INT 21H
    
    SHIFT_LOOP:
    SHR NUM,1
    LOOP SHIFT_LOOP
    
    
    MOV AH,2
    MOV DL,NUM
    INT 21H
    
    
    
    EXIT:
    MAIN ENDP
END MAIN