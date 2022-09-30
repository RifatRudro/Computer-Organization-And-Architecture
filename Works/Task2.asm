.model small 
.stack 100h
.data 

a db 0ah,0dh,"Enter Input 1:$"
b db 0ah,0dh,"Enter Input 2:$" 
c db 0ah,0dh,"Output:$"
d db "$"

.code 
main proc 
   mov ax,@data
   mov ds,ax
   
   mov ah,9
   lea dx,a
   int 21h
   
   mov ah,1
   int 21h
   mov bh,al
   
   mov ah,9
   lea dx,b
   int 21h 
   
   mov ah,1
   int 21h 
   mov ch,al
   
   
   mov ah,9
   lea dx,c
   int 21h
   
   mov ah,2 
   mov dl,bh
   int 21h
   
   mov ah,9
   lea dx,d
   int 21h
   
   
   mov ah,2
   mov dl,ch
   int 21h  
   
   mov ah,4ch
   int 21h
   main endp

end main
   
  
   
   