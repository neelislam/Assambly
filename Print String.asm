;printString
.model small  
.data
    var1 db 'Hello',10,13,'Girls ;)$'

.code 


main proc
    
    mov ax, @data
    mov ds, ax

    mov dl, offset var1
    mov ah, 9
    int 21h
    
main endp
end main








