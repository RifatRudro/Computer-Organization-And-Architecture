.model small
.stack 100h 


.data 
input1 db "Enter the Digit:$"




.code
 
main proc
    mov ax,@data
    mov ds,ax       ; initialize the DS
    
    lea Dx,input1   ; load and display
    mov ah,9
    int 21h
    
    mov ah,1
    int 21h
    
    mov bl,al
    int 21h
    
    
    
    mov ah,4ch
    int 21h
    main endp
end main
    