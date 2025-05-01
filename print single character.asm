;print single characters
.model small
.data
.code
main proc
mov ah, 1        ; Function 1: read a character
int 21h          ; AL = input character

mov bl, al       ; store it in BL

mov dl, 13       ; carriage return (go to beginning of line)
mov ah, 2        ; Function 2: print character in DL
int 21h

mov dl, 10       ; line feed (move to next line)
mov ah, 2
int 21h

mov dl, bl       ; load saved character into DL
mov ah, 2        ; Function 2: display character
int 21h

         end main