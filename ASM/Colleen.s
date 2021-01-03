; This is the first comment.

section .data

    string: db "%1$c This is the first comment.%2$c%2$csection .data%2$c%2$c    string: db %3$c%4$s%3$c, 0%2$c%2$csection .text%2$c%2$c    global main%2$c    global quine%2$c    extern printf%2$c%2$cquine:%2$c%2$c    push rbp%2$c    mov rbp, rsp%2$c    lea rdi, [ rel string ]%2$c    mov rsi, 59%2$c    mov rdx, 10%2$c    mov rcx, 34%2$c    lea r8, [ rel string ]%2$c    mov rax, 0%2$c    call printf wrt ..plt%2$c    ret%2$c%2$cmain:%2$c%2$c    %1$c This is the second comment.%2$c%2$c    call quine%2$c    ret%2$c", 0

section .text

    global main
    global quine
    extern printf

quine:

    push rbp
    mov rbp, rsp
    lea rdi, [ rel string ]
    mov rsi, 59
    mov rdx, 10
    mov rcx, 34
    lea r8, [ rel string ]
    mov rax, 0
    call printf wrt ..plt
    ret

main:

    ; This is the second comment.

    call quine
    ret
