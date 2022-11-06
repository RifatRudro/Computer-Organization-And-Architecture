.model small
.stack 100h 
.data 


.code 

main proc 
    mov ax,@data
    mov ds,ax
    
    mov bl,'5'
    mov al,'2'
    
    cmp al,bl
    
    ;jne level
    jg level
    
    
    mov ah,2
    mov dl,bl
    int 21h
    jmp exit
    
    
    
    level:
    mov ah,2
    mov dl,al
    int 21h
    
    
    
    exit:
    mov ah,4ch
    int 21h 
    main endp 
end main
    
    
    