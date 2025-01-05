# syscall
O syscall é usado apenas quando o comando li $v0, n é chamado, pois ele indica ao sistema que realize alguma ação
- n = 1: imprime um inteiro
- n = 4: imprime uma string
- n = 5: lê um inteiro
- n = 8: lê uma string
- n = 10: encerra o programa
- n = 11: lê caracter
- n = 12: imprime caracter
o li $v0, n sempre executa a ação com base no que está alocado no registrador $a0

# Operações
## Multiplicar inteiros
mul, reg1, reg2, reg3

## Shift Left/Right
- para multiplicar por 2, basta dar um shift left
	-> cada n movida à esquerda multiplica o número por 2^n
- shift right segue a mesma logica, mas com divisão por 2^n (srl)

comando (shift left logico)
```assembly
    sll $t0, $t1, n #em que n corresponde às casas à esquerda que se quer mover $t1
```

## Divisão inteira
div $t0, $t1: faz divisão inteira entre $t0 e $t1
- parte inteira vai para lo
- resto vai para hi
para usá-los, devem ser movidos para um dos 32 registradores com $, mas com uma instrução especial
ex.: mflo $s0: move lo para $s0// parte inteira

# CONDICIONAIS
- beq (branch if equal) $t0, $t1, label: salta para a label se forem iguais
- bne (branch if not equal) $t0, $t1, label: salta para a label se forem diferentes
- blt (branch if less than) $t0, $t1, label: salta para a label se $t0 for menor que $t1
- bgt (branch if greater than) $t0, $t1, label: salta para a label se $t0 for maior que $t1
- ble (branch if less or equal to) $t0, $t1, label: salta para a label se $t0 for menor ou igual a $t1
- bge (branch if greater or equal to) $t0, $t1, label: salta para a label se $t0 for maior ou igual a $t1