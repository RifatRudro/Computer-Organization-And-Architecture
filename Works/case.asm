.model small
.stack 100h
.data 




.code
main proc
    
   
    
    
    ;int 21h 
    mov bh,61h
    
    sub bh,32
    
    mov ah,2
    mov dl,bh
    int 21h
    
    
    mov ah,4ch
    int 21h
    main endp

end main
endp
