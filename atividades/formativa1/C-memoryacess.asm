li $v0, 5
syscall
move $t0, $v0 

li $t9, 4

mul $t0, $t0, $t9
add $t0, $t0, $s0

li $v0, 5
syscall
move $t1, $v0 

mul $t1, $t1, $t9
add $t1, $t1, $s0
lw $t4, 0($t1) 

li $v0, 5
syscall
move $t2, $v0 

add $t4, $t4, $t2

sw 0($t0 $t4,)
