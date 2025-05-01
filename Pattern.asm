.model small
.stack 100h
.data
.code


main proc
    mov ax, @data
    mov ds, ax
    
    mov cx, 5
    mov bl,1
    
    
    row:
    mov dl, bl
    mov si, dx ;si inner loop counter
    
    
    
    col:
     mov dl, '*'
     mov ah,2
     int 21h
     
     
     dec si   ; decrement inner loop
     jnz col ;if si!=0 contnue inner loop
     
     ;print new line
      
     mov dl, 13
     mov ah,2
     int 21h
      mov dl, 10
      mov ah,2
      int 21h
      
      
      inc bl   ;increase the number of star
      loop row ; outer loop decrease
      
      
      mov ah, 4ch
      int 21h
    
    end main