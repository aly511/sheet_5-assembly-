.586
.MODEL FLAT
INCLUDE io.h    
.STACK 4096
.DATA
; :+1::+1::+1::+1::100::thumbsup::wine_glass::wine_glass:
pen byte "enter number of pennies",0
nick byte "enter number of nickels",0
dim byte "enter number of dimes",0
quar byte "enter number of quarters",0
cent1 byte "enter number of fifty-cent pieces",0
cent2 byte "enter number of dollar coins",0
n byte 40 dup (?)    ; number that enter
numberm byte "the number of  coins is ",0
totalm byte "total value of the coins in dollars is ",0
    x    byte "and in cents is  ",0
total byte  40 dup (?)    ;dollars
count byte  40 dup (?)   ;number of  coins
y    byte  100            ;to div 100
divi  dd  40 dup (?)    ;  »«ﬁÏ «·ﬁ”„… 
divi2 byte 40 dup (?) 
   ; byte "dollars" 0
.CODE
_MainProc PROC
mov ecx,0    ; total
mov ebx,0      ;count
mov edx,0    
; 1-pennies         //
input pen,n,40
atod n
add ebx,eax   ;count
add ecx,eax     ;pennies(1)=cents(1)

; 2-nickels                //
input nick,n,40
atod n
add ebx,eax   ;count
imul eax,5
add ecx,eax     ;nickels(1)=cents(5)

; 3-dimes            //
input dim,n,40
atod n
add ebx,eax   ;count
imul eax,10
add ecx,eax     ;dimes(1)=cents(10)

; 4-quarters          //
input quar,n,40
atod n
add ebx,eax   ;count
imul eax,25
add ecx,eax     ;quarters(1)=cents(25)

; 5-fifty-cent pieces   //
input cent1,n,40
atod n
add ebx,eax   ;count
imul eax,50
add ecx,eax     ;fifty-cent pieces(1)=cents(50)

; 6-dollar   //
input cent2,n,40
atod n
add ebx,eax   ;count
imul eax,100             ;dollar(1)=cents(100)
add ecx,eax
mov eax,ecx
mov edx,0
idiv y
mov ecx,eax   
 ;mov divi,edx
 ;dtoa divi2,divi

dtoa divi,edx
dtoa total,ecx
dtoa count,ebx
output numberm,count
output totalm,total
output  x,divi

ret
_MainProc ENDP
END  