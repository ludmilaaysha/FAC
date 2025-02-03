contaBits:
    move $t0, $a0
    andi $t2, $t2, 0

    loop:
        beq $t0, $zero, saida
        andi $t1, $t0, 1
        add $t2, $t2, $t1
        srl $t0, $t0, 1
        j loop 
    
    
    saida:
        move $v0, $t2
        jr $ra