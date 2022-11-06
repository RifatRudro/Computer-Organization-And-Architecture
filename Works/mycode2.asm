.model small
.stack 100h
.data 
A db "AAA$"
B DB "BBB$"
C DB "CCC$"
D EQU 10
E EQU 13

.CODE 
MAIN PROC 
    MOV AX,@DATA
    MOV DS,AX
    MOV CX,5
    
    
    AA:
    LEA DX,A
    MOV AH,9
    INT 21H
    
    MOV AH,2
    MOV DL,D
    INT 21H
    MOV DL,E
    INT 21H
    
    DEC CX
    CMP CX,3
    JG AA
    
    BB:
    LEA DX,B
    MOV AH,9
    INT 21H
    MOV AH,2
    MOV DL,D
    INT 21H
    
    DEC CX
    CMP CX,0
    JNLE BB
    
    LEA DX,C
    MOV AH,9
    INT 21H
    
    MOV AH,2
    MOV DL,D
    INT 21H
    MOV DL,E
    INT 21H
    
    EXIT: 
    LEA DX,C
    MOV AH,9
    INT 21H
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN