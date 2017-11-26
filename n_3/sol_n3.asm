.586
.MODEL FLAT
INCLUDE io.h    
.STACK 4096
; :+1::+1::+1::+1::100::thumbsup::wine_glass::wine_glass:
.DATA
p1 BYTE "Enter length",0
p2 BYTE "Enter width",0
n BYTE 40 DUP(?)
value BYTE 11 DUP(?),0
res BYTE "the result perimeter is",0
.CODE
_MainProc PROC
input p1,n,40
atod n    ;convert from (ASCII to int)  put eax
mov ecx,eax         ;length=ecx

input p2,n,40
atod n          ;eax=width

;perimeter (2*length+ 2*width)==2*(length+width)

add  eax , ecx       ;x +y
imul  eax , 2        ;2(x+y)
dtoa value,eax
mov eax,0
output res,value
ret
_MainProc ENDP
END          