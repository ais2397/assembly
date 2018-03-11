extern printf
extern scanf

section .data
	n: dd 1 ,0
	N: dd 0
	in: db "%d" ,0
	msg1: db "Enter the number ",10,0
	msg2: db "The number is a prime no. ",0
	msg3: db "The number is not a prime no. ",0

section .text
	global main
	main:
	push ebp
	mov ebp,esp

	push msg1
	call printf

	push N
	push in
	call scanf

	mov ecx,[n]

	check:
	inc ecx
	mov edx,0
	mov eax, [N]
	mov ebx, ecx
	div ebx

	cmp ebx,[N]	;if dividend is equal to divisor exit the loop
	je print2

	cmp edx, 0	;if rem=0 then not a prime no.
	jne check	;if rem!=0 ->loop
	jmp print3


	print2:  ;prime no.

	push msg2
	call printf
	jmp exit

	print3:	;not a prime no.

	push msg3
	call printf

	exit:
	leave
	ret

