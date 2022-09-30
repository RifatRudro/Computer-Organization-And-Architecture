.model small 
.stack 100h
.data 

a db 0ah,0dh, "Name: Rudro Rifat Al Mamun$"
b db 0ah,0dh, "ID:   19-39909-1$"
c db 0ah,0dh, "Department: CSE$"

.code
main proc 
    mov ax,@data
    mov ds,ax
    
    
    mov ah,9
    lea dx,a
    int 21h
    
    mov ah,9
    lea dx,b
    int 21h
    
    mov ah,9
    lea dx,c
    int 21h
    
    
    mov ah,4ch
    int 21h
    main endp
end main

   



    
    
    
    
    
    
    

