extern malloc

global ft_list_push_front

ft_list_push_front:
	push rdi
	push rsi
	mov rdi, 16
	call malloc
	cmp rax, 0
	je return
	pop rsi
	pop rdi
	mov [rax], rsi
	push qword [rdi]
	pop qword [rax + 8]
	mov [rdi], rax
return:
	ret
