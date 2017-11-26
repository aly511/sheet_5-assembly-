.586
.MODEL FLAT
INCLUDE io.h 
; :+1::+1::+1::+1::100::thumbsup::wine_glass::wine_glass:
.STACK 4096
.DATA
p1 BYTE "Enter x",0
p2 BYTE "Enter y",0
p3 BYTE "Enter z",0
n byte 40 DUP(?)
value BYTE 11 DUP(?),0
res BYTE "the result is",0
.CODE
_MainProc PROC
input p1,n,40
atod n   ; convert from ack string to integer and put 
mov ecx,eax ;x=ecx

input p2,n,40
atod n
mov ebx,eax ;y=ebx

input p3,n,40
atod n         ;z=eax

;–(x+y-2z+1)
imul  eax , -2      ;    -2z
add  ecx , ebx         ;x+y
add  eax , ecx       ;x+y-2z
inc eax      ; x+y-2z+1
neg  eax
dtoa value,eax

output res,value
ret
_MainProc ENDP
END          