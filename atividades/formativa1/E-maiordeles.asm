.data

.text
main:
move $t0, $zero
li $a0, -2147483648

li $v0, 5
syscall

move $s0, $v0

bge $s0, 1, loop
li $v0, 10
syscall

loop:
    beq $t0, $s0, saida
    addi $t0, $t0, 1
    li $v0, 5
    syscall
    blt $a0, $v0, setarMaior1
    j loop

setarMaior1:
    move $a0, $v0
    j loop

saida:
    li $v0, 1
    syscall

    li $v0, 10
    syscall
