global ft_strcpy

ft_strcpy:
	mov rcx, 0
	mov rdx, 0
	ft_strcpy_loop:
		cmp byte [rsi + rcx], 0
		je return
		mov dl, [rsi + rcx]
		mov [rdi + rcx], dl
		inc rcx
		jmp ft_strcpy_loop
	return:
		mov rax, rdi
		ret