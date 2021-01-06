section .data

    string: db "section .data%2$c%2$c    string: db %3$c%1$s%3$c, 0%2$c    filename: db %3$cSully_%%d.s%3$c, 0%2$c    command: db %3$cSully_%%d%3$c, 0%2$c    option: db %3$cw%3$c, 0%2$c    nasm: db %3$cnasm -f elf64 %%s%3$c, 0%2$c    gcc: db %3$cgcc %%s.o -o %%s; ./%%s%3$c, 0%2$c%2$csection .text%2$c%2$c    global main%2$c    extern fprintf%2$c    extern fopen%2$c    extern fclose%2$c    extern sprintf%2$c    extern system%2$c%2$cmain:%2$c%2$c    push rbp%2$c    mov rbp, rsp%2$c    mov r12, %4$d%2$c    cmp r12, 0%2$c    jle end%2$c%2$c    sub rsp, 16%2$c    lea rdi, [ rel rsp ]%2$c    lea rsi, [ rel filename ]%2$c    mov rdx, r12%2$c    call sprintf wrt ..plt%2$c%2$c    mov rdi, rsp%2$c    mov rsi, 0%2$c    mov rax, 21%2$c    syscall%2$c    cmp rax, 0%2$c    jnz quine%2$c    dec r12%2$c%2$cquine:%2$c%2$c    sub rsp, 16%2$c    lea rdi, [ rel rsp ]%2$c    lea rsi, [ rel filename ]%2$c    mov rdx, r12%2$c    call sprintf wrt ..plt%2$c%2$c    mov rdi, rsp%2$c    lea rsi, [ rel option ]%2$c    call fopen wrt ..plt%2$c    push rax%2$c%2$c    mov rdi, rax%2$c    mov rax, 0%2$c    lea rsi, [ rel string ]%2$c    lea rdx, [ rel string ]%2$c    mov rcx, 10%2$c    mov r8, 34%2$c    mov r9, r12%2$c    call fprintf wrt ..plt%2$c%2$c    pop rdi%2$c    call fclose wrt ..plt%2$c%2$c    lea rdx, [ rel rsp ]%2$c    sub rsp, 16%2$c    lea rdi, [ rel rsp ]%2$c    lea rsi, [ rel nasm ]%2$c    call sprintf wrt ..plt%2$c%2$c    lea rdi, [ rel rsp ]%2$c    call system wrt ..plt%2$c%2$c    sub rsp, 16%2$c    lea rdi, [ rel rsp ]%2$c    lea rsi, [ rel command ]%2$c    mov rdx, r12%2$c    call sprintf wrt ..plt%2$c%2$c    lea rdx, [ rel rsp ]%2$c    sub rsp, 32%2$c    lea rdi, [ rel rsp ]%2$c    lea rsi, [ rel gcc ]%2$c    lea rcx, [ rel rsp + 32 ]%2$c    lea r8, [ rel rsp + 32 ]%2$c    call sprintf wrt ..plt%2$c%2$c    lea rdi, [ rel rsp ]%2$c    call system wrt ..plt%2$c%2$cend:%2$c%2$c    leave%2$c    mov rax, 0%2$c    ret%2$c", 0
    filename: db "Sully_%d.s", 0
    command: db "Sully_%d", 0
    option: db "w", 0
    nasm: db "nasm -f elf64 %s", 0
    gcc: db "gcc %s.o -o %s; ./%s", 0

section .text

    global main
    extern fprintf
    extern fopen
    extern fclose
    extern sprintf
    extern system

main:

    push rbp
    mov rbp, rsp
    mov r12, 5
    cmp r12, 0
    jle end

    sub rsp, 16
    lea rdi, [ rel rsp ]
    lea rsi, [ rel filename ]
    mov rdx, r12
    call sprintf wrt ..plt

    mov rdi, rsp
    mov rsi, 0
    mov rax, 21
    syscall
    cmp rax, 0
    jnz quine
    dec r12

quine:

    sub rsp, 16
    lea rdi, [ rel rsp ]
    lea rsi, [ rel filename ]
    mov rdx, r12
    call sprintf wrt ..plt

    mov rdi, rsp
    lea rsi, [ rel option ]
    call fopen wrt ..plt
    push rax

    mov rdi, rax
    mov rax, 0
    lea rsi, [ rel string ]
    lea rdx, [ rel string ]
    mov rcx, 10
    mov r8, 34
    mov r9, r12
    call fprintf wrt ..plt

    pop rdi
    call fclose wrt ..plt

    lea rdx, [ rel rsp ]
    sub rsp, 16
    lea rdi, [ rel rsp ]
    lea rsi, [ rel nasm ]
    call sprintf wrt ..plt

    lea rdi, [ rel rsp ]
    call system wrt ..plt

    sub rsp, 16
    lea rdi, [ rel rsp ]
    lea rsi, [ rel command ]
    mov rdx, r12
    call sprintf wrt ..plt

    lea rdx, [ rel rsp ]
    sub rsp, 32
    lea rdi, [ rel rsp ]
    lea rsi, [ rel gcc ]
    lea rcx, [ rel rsp + 32 ]
    lea r8, [ rel rsp + 32 ]
    call sprintf wrt ..plt

    lea rdi, [ rel rsp ]
    call system wrt ..plt

end:

    leave
    mov rax, 0
    ret
