extern __errno_location

global ft_write

ft_write:
	mov rax, 1
	syscall
	cmp rax, 0
	jl set_errno
	jmp return
set_errno:
	neg rax
	mov rdx, rax
	call __errno_location
	mov [rax], rdx
	mov rax, -1
return:
	ret
