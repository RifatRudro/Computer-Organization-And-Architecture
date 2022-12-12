.MODEL SAMLL 
.STACK 100H 
.CODE 
     
INSERT PROC 
    
    
    LABEL1: 
    CMP AL,0DH 
    JE LABEL2
    PUSH AX
    INC CX 
    INT 21H
    JMP LABEL1
    RET
    ENDP

EXTRACT PROC 

    
    LABEL2: 
    MOV AH,2
    MOV DL,10
    INT 21H
    MOV DL,13
    INT 21H 
    
    JCXZ EXIT
    
    TOP: 
    POP DX
    INT 21H
    LOOP TOP
    RET 
ENDP 

     
MAIN PROC
   
     
    MOV CX,0
    MOV AH,1
    INT 21H 
    
    CALL INSERT
    CALL EXTRACT
    EXIT: 
    MOV AH,4CH
    INT 21H
    MAIN ENDP 
END MAIN
 