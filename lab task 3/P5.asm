.MODEL SMALL
.STACK 100H
.DATA

.CODE
MAIN PROC
    
    MOV AL,'F'
    OR AL,00100000b
    
    MOV AH,2
    MOV DL,AL
    INT 21H
    
    MAIN ENDP
END MAIN






