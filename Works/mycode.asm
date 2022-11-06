.model small 
.stack 100h 
.data
a db 0ah,0dh,"Hello$"
b db 0ah,0dh, "Bye World$" 
.code 

main proc 
    mov ax, @data 
    mov ds, ax 
    
    
    mov cx,0
    
    Hello:
    mov ah,9
    lea dx,a
    int 21h
    inc cx 
    
    cmp cx,5
    jne Hello
    je Bye
    
    
    Bye: 
    mov ah,9
    lea dx,b
    int 21h
    
    mov ah,4ch 
    int 21h 
    main endp 
end main
    