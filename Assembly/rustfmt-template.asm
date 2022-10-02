; nasm -f elf64 rustfmt-template.asm
; ld -o rustfmt-template rustfmt-template.o

section .data

cnt1    db 'fn_args_layout="Compressed"', 0Ah
len1    equ $ - cnt1
cnt2    db 'use_small_heuristics="Off"', 0Ah
len2    equ $ - cnt2
cnt3    db 'max_width=1000', 0Ah
len3    equ $ - cnt3
cnt4    db 'fn_call_width=1000', 0Ah
len4    equ $ - cnt4
cnt5    db 'attr_fn_like_width=1000', 0Ah
len5    equ $ - cnt5
cnt6    db 'struct_lit_width=1000', 0Ah
len6    equ $ - cnt6
cnt7    db 'struct_variant_width=1000', 0Ah
len7    equ $ - cnt7
cnt8    db 'array_width=1000', 0Ah
len8    equ $ - cnt8
cnt9    db 'chain_width=225', 0Ah
len9    equ $ - cnt9
cnt10   db 'single_line_if_else_max_width=1000', 0Ah
len10   equ $ - cnt10

file    db 'rustfmt.toml', 0h

section .text
global _start

_start:

    mov rcx, 0777o
    mov rbx, file
    mov rax, 8
    int 80h

    mov rdx, len1
    mov rcx, cnt1
    mov rbx, rax
    mov rax, 4
    int 80h

    mov rdx, len2
    mov rcx, cnt2
    mov rax, 4
    int 80h

    mov rdx, len3
    mov rcx, cnt3
    mov rax, 4
    int 80h

    mov rdx, len4
    mov rcx, cnt4
    mov rax, 4
    int 80h

    mov rdx, len5
    mov rcx, cnt5
    mov rax, 4
    int 80h

    mov rdx, len6
    mov rcx, cnt6
    mov rax, 4
    int 80h

    mov rdx, len7
    mov rcx, cnt7
    mov rax, 4
    int 80h

    mov rdx, len8
    mov rcx, cnt8
    mov rax, 4
    int 80h

    mov rdx, len9
    mov rcx, cnt9
    mov rax, 4
    int 80h

    mov rdx, len10
    mov rcx, cnt10
    mov rax, 4
    int 80h

    mov rbx, 0
    mov rax, 1
    int 80h
