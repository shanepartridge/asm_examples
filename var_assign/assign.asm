global _start
section .data
    eqstat: db "equal"
    neqstat: db "nequal"
    num: dd 0

section .text
_start:
    mov rax, 0
    cmp rax, 0
    je equal
    jmp nequal



nequal:
    mov rax, 1
    mov rdi, 1
    mov rsi, neqstat
    mov rdx, 6
    syscall
    jmp exit

equal:
    mov rax, 1
    mov rdi, 1
    mov rsi, eqstat
    mov rdx, 5
    syscall
    jmp exit


exit:
    mov rax, 60
    xor rdi, rdi
    syscall