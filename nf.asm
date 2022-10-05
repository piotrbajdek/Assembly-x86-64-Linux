; nasm -f elf64 nf.asm
; gcc -o nf nf.o

global  main
section .text

main:

   push rdi
   push rsi
    sub rsp, 8     ; align the stack

    mov rdi, [rsi] ; the file to create
    mov rsi, 0777o ; read, write, execute
    mov rax, 85    ; creat system call
    syscall

    add rsp, 8     ; restore
    pop rsi        ; restore
    pop rdi        ; restore

    add rsi, 8     ; next argument
    dec rdi        ; count down
    jnz main

    ret
