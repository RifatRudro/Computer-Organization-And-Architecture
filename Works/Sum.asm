.MODEL SMALL
 .STACK 100H

 .DATA
    INPUT_1  DB  'Enter the First digit : $'
    INPUT_2  DB  'Enter the Second digit : $'
    INPUT_3  DB  'Sum of First and Second digit : $'

 .CODE
   MAIN PROC
     MOV AX, @DATA                ; initialize DS
     MOV DS, AX

     LEA DX, INPUT_1             ; load and display the INPUT_1
     MOV AH, 9
     INT 21H

     MOV AH, 1                    ; read a digit
     INT 21H

     MOV BL, AL                   ; save First digit in BL in ASCII code
     SUB BL, 30H

     MOV AH, 2                    ; carriage return
     MOV DL, 0DH
     INT 21H

     MOV DL, 0AH                  ; line feed
     INT 21H

     LEA DX, INPUT_2             ; load and display the INPUT_2
     MOV AH, 9
     INT 21H

     MOV AH, 1                    ; read a character
     INT 21H

     MOV BH, AL                   ; save Second digit in BH in ASCII CODE
     SUB BH, 30H

     MOV AH, 2                    ; carriage return
     MOV DL, 0DH
     INT 21H

     MOV DL, 0AH                  ; line feed
     INT 21H

     LEA DX, INPUT_3             ; load and display the INPUT_3
     MOV AH, 9
     INT 21H

     ADD BL, BH                   ; add First and Second digit
     ADD BL, 30H                  ; convert ASCII to DECIMAL code

     MOV AH, 2                    ; display the character
     MOV DL, BL     
     INT 21H

     MOV AH, 4CH                  ; return control 
     INT 21H
   MAIN ENDP
   END MAIN