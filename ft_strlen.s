global ft_strlen

ft_strlen:
    mov rcx, 0
    ft_strlen_loop:
        cmp byte [rdi + rcx], 0
        je return
        inc rcx
        jmp ft_strlen_loop
    return:
        mov rax, rcx
        ret
