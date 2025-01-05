.data

.text
main:
    li $v0, 5
    syscall

    ble $v0, $zero, saida

    li $t1, 50
    bge $v0, $t1, saida

    move $t5, $v0

    loop:
        beq $t5, $zero, saida
        li $v0, 12
        syscall

        move $t3, $v0

        li $v0, 12
        syscall

        li $v0, 12
        syscall

        move $t4, $v0

        li $v0, 12
        syscall

        bne $t3, $t4, imprimeV

        li $a0, 1

        li $v0, 1
        syscall

        li $v0, 11
        li $a0, 10
        syscall

        addi $t5, $t5, -1
        j loop

    imprimeV:
        li $a0, 2

        li $v0, 1
        syscall

        li $v0, 11
        li $a0, 10
        syscall

        addi $t5, $t5 -1
        j loop

    saida:
        li $v0, 10
        syscall