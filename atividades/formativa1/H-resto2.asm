.data
    controle: .word 1
    aux: .word 1
.text
main:
    li $v0, 5 #lê N
    syscall
    blt $v0, $zero, saida
    move $s0, $v0

    li $v0, 5
    syscall
    ble $v0, $zero, saida
    move $t0, $v0

    lw $t1, controle
    lw $t2, aux

    loop:
        addi $t0, $t0, -1
        blt $t0, $t1, operacao
        sll $t2, $t2, 1
        addi $t2, $t2, 1
        j loop

    operacao:
        and $a0, $s0, $t2
        li $v0, 1
        syscall

    saida:
        li $v0, 10
        syscall
