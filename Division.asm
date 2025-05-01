;division
.model small
.stack 100h
.code

main proc
    
    
    ;first dig input
    mov ah,1
    int 21h 
    sub al,48   ;convert the number ascii
    mov bl,al    ;store in bl as devident
    
    
    
    ;secodn dig input
    mov ah,1
    int 21h
    sub al,48
    mov cl,al ;store in cl
    
    
    ;division
    mov al,bl
    mov ah,0 ;clear ah
    mov bl,cl
    div bl    ;al/bl? Quotient in al, reminder in ah


   ;save reminder in cl before overriting   
   mov cl,ah
   
   ;print quotient
   mov dl, al
   add dl, 48
   mov ah,2
   int 21h
   
   ;print space
   mov dl,' '
   mov ah,2
   int 21h
   
   ;print reminder
   mov dl, cl
   add dl,48
   mov ah,2
   int 21h      
   
   
   
   mov ah, 4ch
   int 21h
   end main