;PROBLEM 1: CHECK ODD/EVEN NUMBER

.MODEL SMALL
.STACK 100H
.DATA

EVEN DB 'e $'  ;DECLARING MSG VARIABLES TO PRINT RESULTS!!
ODD DB 'o $'

.CODE
MAIN PROC
    
    ;INTIALIZE OUR VARIABLES!!
    
    MOV AX,@DATA
    MOV DS,AX
    
    MOV AH,1
    INT 21H
    
    ;WE MOVE OUR INPUT FROM AL TO BL FOR CONVENTIONAL PURPOUSE
    MOV BL,AL
    
    AND BL,1 ;COMPARING BITWISE OPERATION TO CHECK EVEN OR ODD
    
    CMP BL,0 ; IF THE WHOLE BL IS 0 AFTER AN AND OPERATION THEN WE CAN
             ; DEDUCE THAT IT IS A EVEN NUMBER AS FOR EVEN NUMBER LAST
             ;BIT MUST BE ZERO!!!!
    
    JE EVEN_NUMBER ; WE JUMP IF IT IS A EVEN NUMBER
    
    LEA DX,ODD      ; IF IT IS NOT A EVEN NUMBER WE SIMPLY PRIT 'O' FOR ODD
    MOV AH,9
    JMP EXIT
    
    EVEN_NUMBER: ;WE JUMP IF IT IS A EVEN NUMBER AND PRINT 'E' FOR EVEN
    LEA DX,EVEN
    MOV AH,9
    JMP EXIT
    
    ;JMP TO EXIT AND GET A INTERRUPTOR TO PRINT!!
    EXIT:
    INT 21H
    
    MAIN ENDP
END MAIN