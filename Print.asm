;Class-2
;Printing
.model small
.data
.code

main proc
    mov bh,'N' ;bh = 'B'
    mov dl,bh  
    mov ah,2
    int 21h  
    
    mov bh,'e'
    mov dl,bh 
    mov ah,2
    int 21h  
    
    mov bh,'e'
    mov dl,bh 
    mov ah,2
    int 21h 
    
    mov bh,'L'
    mov dl,bh 
    mov ah,2
    int 21h  
    
     
    
Exit:
    mov ah,4ch
    int 21h
    main endP
end main
    
    
   
