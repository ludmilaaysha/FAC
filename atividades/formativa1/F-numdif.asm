elemDistintos:
    li $t0, 0
    beq $a1, $zero, saida
    addi $t0, $t0, 1
    move $t1, $a0
    move $t5, $a0

    sll $t4, $a1, 2
    add $t4, $a0, $t4
    
    
    loop:
        addi $t5, $t5, 4
        bge $t5, $t4, saida
        lw $t2, 0($t1)
        lw $t3, 0($t5)
        bne $t2, $t3, desvio
        j loop

    desvio:
        move $t1, $t5
        addi $t0, $t0, 1
        j loop

    saida:
        move $v0, $t0
        jr $ra