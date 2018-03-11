extern printf
extern scanf

section .data
	a: dd 1 ,0
	b: dd 1 ,0
	n: dd 0 ,0
	N: dd 0
	in: db "%d" ,0
	msg1: db "Enter the term you want to retrieve ",10,0
	msg2: db "The term is : ",0

section .text
	global main
	main:
	push ebp
	mov ebp, esp

	push msg1
	call printf

	push N
	push in
	call scanf

	mov eax, [a]
	term:
	mov ebx,eax

	inc dword [n]
	mov edx, [n]
	mov ecx,[b]
	mov eax,[b]
	add ecx,ebx
	mov [b],ecx
	cmp edx, [N]
	jne term
	

	print:

	push msg2
	call printf

	push ebx
	push in 
	call printf

	

	leave
	ret

