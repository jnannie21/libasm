global ft_strcmp

ft_strcmp:
	mov rcx, 0
	mov rdx, 0
	mov rax, 0
	ft_strcmp_loop:
		mov dl, [rsi + rcx]
		cmp byte [rdi + rcx], 0
		je return
		cmp dl, [rdi + rcx]
		jne return
		inc rcx
		jmp ft_strcmp_loop
	return:
		mov al, byte [rdi + rcx]
		sub rax, rdx
		ret