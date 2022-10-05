; nasm -f elf64 rustfmt-template.asm
; ld -o rustfmt-template rustfmt-template.o

%macro prntmsg 2
    mov rdx, %2    ; lenX
    mov rsi, %1    ; msgX
    mov rax, 1     ; write system call
    syscall
%endmacro

section .data

msg1    db 'fn_args_layout="Compressed"', 0Ah
len1    equ $ - msg1
msg2    db 'use_small_heuristics="Off"', 0Ah
len2    equ $ - msg2
msg3    db 'max_width=1000', 0Ah
len3    equ $ - msg3
msg4    db 'fn_call_width=1000', 0Ah
len4    equ $ - msg4
msg5    db 'attr_fn_like_width=1000', 0Ah
len5    equ $ - msg5
msg6    db 'struct_lit_width=1000', 0Ah
len6    equ $ - msg6
msg7    db 'struct_variant_width=1000', 0Ah
len7    equ $ - msg7
msg8    db 'array_width=1000', 0Ah
len8    equ $ - msg8
msg9    db 'chain_width=225', 0Ah
len9    equ $ - msg9
msg10   db 'single_line_if_else_max_width=1000', 0Ah
len10   equ $ - msg10

file    db 'rustfmt.toml', 0h

section .text
global _start

_start:

    mov rsi, 0777o ; read, write, execute
    mov rdi, file
    mov rax, 85    ; creat system call
    syscall

    mov rdi, rax   ; append

prntmsg msg1, len1
prntmsg msg2, len2
prntmsg msg3, len3
prntmsg msg4, len4
prntmsg msg5, len5
prntmsg msg6, len6
prntmsg msg7, len7
prntmsg msg8, len8
prntmsg msg9, len9
prntmsg msg10, len10

    xor rdi, rdi   ; exit code 0
    mov rax, 60    ; exit system call
    syscall
