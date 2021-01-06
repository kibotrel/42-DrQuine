; This is a comment.

%define STRING "; This is a comment.%1$c%1$c%%define STRING %2$c%3$s%2$c%1$c%%define OUTPUT %2$cGrace_kid.s%2$c%1$c%1$csection .data%1$c%1$c    string: db STRING, 0%1$c    output: db OUTPUT, 0%1$c    option: db %2$cw%2$c, 0%1$c%1$csection .text%1$c%1$c    global main%1$c    extern fprintf%1$c    extern fopen%1$c    extern fclose%1$c%1$c%%macro MAIN 0%1$c%1$cmain:%1$c%1$c    push rbp%1$c    mov rbp, rsp%1$c    lea rdi, [ rel output ]%1$c    lea rsi, [ rel option ]%1$c    call fopen wrt ..plt%1$c    push rax%1$c%1$c    mov rdi, rax%1$c    mov rax, 0%1$c    lea rsi, [ rel string ]%1$c    mov rdx, 10%1$c    mov rcx, 34%1$c    lea r8, [ rel string ]%1$c    call fprintf wrt ..plt%1$c%1$c    pop rdi%1$c    call fclose wrt ..plt%1$c    mov rax, 0%1$c    ret%1$c%1$c%%endmacro%1$c%1$cMAIN%1$c"
%define OUTPUT "Grace_kid.s"

section .data

    string: db STRING, 0
    output: db OUTPUT, 0
    option: db "w", 0

section .text

    global main
    extern fprintf
    extern fopen
    extern fclose

%macro MAIN 0

main:

    push rbp
    mov rbp, rsp
    lea rdi, [ rel output ]
    lea rsi, [ rel option ]
    call fopen wrt ..plt
    push rax

    mov rdi, rax
    mov rax, 0
    lea rsi, [ rel string ]
    mov rdx, 10
    mov rcx, 34
    lea r8, [ rel string ]
    call fprintf wrt ..plt

    pop rdi
    call fclose wrt ..plt
    mov rax, 0
    ret

%endmacro

MAIN
