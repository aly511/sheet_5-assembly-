.586
.MODEL FLAT
INCLUDE io.h    
.STACK 4096
; :+1::+1::+1::+1::100::thumbsup::wine_glass::wine_glass:
.DATA
prompt1 BYTE    " Enter Grade 1?",0
prompt2 BYTE    " Enter Grade  2?",0
prompt3 BYTE    " Enter Grade  3?",0
prompt4 BYTE    " Enter Grade  4?",0
prompt5 BYTE    "Final?",0
sumtext BYTE    " is the sum",0
avgtext BYTE    " is the average",0
num  BYTE    11 DUP (?)
sum     WORD   ?
aver     word   ?
.CODE
_MainProc PROC
mov ebx,0
        input   prompt1, num, 40    ;input grade 1
        atod    num                 ;convert to integer
        mov     ebx, eax               ;copy grade 1 to sum

        input   prompt2, num, 40    ;input grade 2
        atod    num                 ;convert to integer
        add     ebx, eax               ;add grade 2 to sum

        input   prompt3, num, 40    ;input grade 3
        atod    num                 ;convert to integer
        add     ebx, eax               ;add grade 3 to sum

        input   prompt4, num, 40    ;input grade 4
        atod    num                 ;convert to integer
        add    ebx ,eax              ;add grade 4 to sum
		 dtoa sum,ebx 
		output sumtext,sum  
		
		mov edx,0
		mov eax,ebx
		mov ebx,4
		mov edx,0
		div ebx
		dtoa aver,eax
		output avgtext , aver
		;mov eax,0
		;mov ebx,0
ret
_MainProc ENDP
END  