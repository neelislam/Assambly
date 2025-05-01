.model small
.data
    arr db 3 dup(?)

.code
main proc

    mov ax, @data
    mov ds,ax

    mov si, offset arr

    mov cl,4

    array: 
        mov ah,1
        int 21h

        mov [si], al
        inc si

    loop array 

    mov dl,10
    mov ah,2
    int 21h
    mov dl,13
    mov ah,2
    int 21h

    mov si,offset arr

    mov cl,4

    array2:

        mov dl,[si]
        mov ah,2
        int 21h

        mov dl,10
        mov ah,2
        int 21h

        mov dl,13
        mov ah,2
        int 21h

        inc si
    loop array2

main endp
end main




