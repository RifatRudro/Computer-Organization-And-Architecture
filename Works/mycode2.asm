.model small
.stack 100h
.data
msg db "Hello World$"  
.code


; 1 takes single input 
; 2 show single output 
; 9 string output



main proc  
   mov ax,1
   int 21h
   mov bh,al
   
   mov ax,2
   int 21h
   
   
   
    
    mov ah,4ch
    int 21h
    end
    
  