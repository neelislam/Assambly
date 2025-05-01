;Array
.model small
.data
arr db 1,2,3,4,5,6
.code

main proc 
    mov ax, @data
    mov ds,ax
    
    
    mov si, offset arr
                          
    mov dl, [si]
    mov dl, 48
    
    mov ah,2
    int 21h
    
    
    mov cl, 4
    
    
    array:
    
    mov dl,[si]
    add dl, 48
    mov ah,2
    int 21h
    
    
    mov dl,10
    mov ah,2
    int 21h 
    mov dl, 13
    mov ah,2
    int 21h
    
    inc si
    
    loop array
    end main
    