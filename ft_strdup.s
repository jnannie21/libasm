extern ft_strcpy
extern malloc
extern ft_strlen

global ft_strdup

ft_strdup:
	push rdi
	call ft_strlen
	mov rdi, rax
	call malloc
	cmp rax, 0
	je return
	mov rdi, rax
	pop rsi
	call ft_strcpy
	jmp return
return:
	ret