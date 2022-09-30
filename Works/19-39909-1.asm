.model small 
.stack 100h
.data     

  msg db 10,13, "Enter Two Digit Number:$"    ; user input
  num db ?                                    ; store data variable 
  
.code

main proc   
    mov ax,@data  
    mov ds,ax
    
    mov dx,offset msg ; show msg
    mov ah,9          ; string output
    int 21h           ; black screen
    
    mov ah,01         ; single input 
    int 21h           ; black screen
                     
    cmp al,09         ; compare 
    jbe number:       ; jump below if given al =/> 
    
    number:           ; create a procedure 
    mov cl,04         ; halt the number 
    rol al,cl         ; rotate the number 
    mov ah,01         
    int 21h
     
     Exit:
     mov ah,04ch
     int 21h
     end main
   
 ret