; basic example of reading from stdin and then
; printing input to the screen


global _start
section .data
    buf: times 20 db 0


section .text
_start:
    mov rax, 0          ; syscall NR for read
    mov rdi, 0          ; fd for stdin
    mov rsi, buf        ; buffer to assign input to
    mov rdx, 20         ; max bytes to write in
    syscall
    mov rax, 1          ; syscall NR for write
    mov rdi, 1          ; fd for stdout
    mov rsi, buf        ; buffer to write to screen
    mov rdx, 20         ; number of bytes to write
    syscall
    mov rax, 60         ; syscall NR for exit
    xor rdi, rdi        ; zero out rdi register
    syscall