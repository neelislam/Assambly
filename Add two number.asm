;Add two Number

.model small
.data
.code
 main proc
    ;first digit input
    mov ah,1     ;He will read what u pressed in keyboard
    int 21h      ;call dos inturrupt to take this input
    sub al,'0'   ; ASCII to actual number and input saved at al reg
    mov bl,al
    
   ;second number input
   mov ah,1
   int 21h
   sub al,'0'
   mov bh,al
   
   
  ;add the number
  mov dh,48 ;store ascii code for 0 (48) in dh which is used for display
  add bl,bh ;add the two numbers result in bl
  add bl,dh ;convert number back in ascii
  
  
  
  ;new line before output
  mov dl, 10 ;new line
  mov ah,2
  int 21h
  
  mov dl,13 ;courage return
  mov ah,2
  int 21h 
   
  ;print result
  mov dl,bl ;move result from bl to dl to display
  mov ah,2
  int 21h
   
    end main


