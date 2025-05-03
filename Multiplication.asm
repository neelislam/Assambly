.model small
.code
.data

main proc
    
    mov ah,1
    int 21h
    mov bh,al
    sub bh,48
    
    mov ah,1
    int 21h 
    mov cl,al
    sub cl,48
    
    mov dl,13
    mov ah,2
    int 21h
    mov dl,10
    mov ah,2
    int 21h
  
    mov al,bh
    mul cl
    add al,48
    mov dl,al

    
    mov ah,2
    int 21h
    
end main
