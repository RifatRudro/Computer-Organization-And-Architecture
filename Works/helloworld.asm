.model small
.stack 100h
.data
msg db "Hello World$"  
.code


; 1 takes single input 
; 2 show single output 
; 9 string output



main proc  
    mov ax,@data
    mov ds,ax   ;These two lines sets DS to point at the data segment.
    
    lea dx,msg  ;This instructions loads the Effective address of the msg variable to DX.
    mov ah,9
    int 21h
    
    
    mov ah,4ch
    int 21h
    main endp
end main
    
  
    
    
    