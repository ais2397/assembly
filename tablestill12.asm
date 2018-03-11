extern printf
extern scanf

section .data
	integer: dd 2 ,10,0
	in: dd "%d" ,10,0
	in1:dd "%d" ,0
	factor: dd 1 ,0
	char1: db "" ,10,0
	str: db "%s" ,10,0
	msg: db "Table of " 
	char: db "" ,0
	x: db "X" ,0
	sign: db "=" ,0
	
section .text
	global main
	main:
	push ebp
	mov ebp, esp

	mov edx, [factor]
	mov ebx, [integer]

	print2:

	push char
	push str
	call printf

	push msg 
	push str
	call printf

	push dword [integer]
	push in
	call printf

	push char1
	push str
	call printf

	
	multiply:
	mov edx, [factor]
	mov ebx, [integer]
	imul ebx,edx ;multiplication

	print:

	push dword [integer]
	push in1
	call printf

	push x
	call printf

	push dword [factor]
	push in1
	call printf

	push sign
	call printf

	push ebx
	push in
	call printf

	push char
	push str
	call printf

	inc dword [factor]
	mov edx, [factor] 
	mov ebx, [integer]
	cmp edx, 10 
	jle multiply

	increase:;increases integer a in(a*b)
	
	inc dword [integer]
	mov edx, 1
	mov [factor],edx
	mov ebx, [integer]
	cmp ebx, 12
	jle print2

	leave
	ret
