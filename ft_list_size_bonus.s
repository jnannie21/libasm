global ft_list_size

ft_list_size:
	xor rcx, rcx
	cmp rdi, 0
	je return
	inc rcx
ft_list_size_loop:
	cmp qword [rdi + 8], 0
	je return
	inc rcx
	mov rdi, [rdi + 8]
	jmp ft_list_size_loop
return:
	mov rax, rcx
	ret
