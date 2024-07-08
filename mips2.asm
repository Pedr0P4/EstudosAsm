	.data
str1:	.asciiz "Digite o valor de k: "
str2:	.asciiz "f = "
str3:	.asciiz "k invalido!"
	.text

	.globl main

main:
	addi $v0, $zero, 4
	la $a0, str1
	syscall
	
	addi $v0, $zero, 5
	syscall
	add $t0, $zero, $v0
	
	addi $t2, $zero, 5
	addi $t3, $zero, 7
	addi $t4, $zero, 56
	addi $t5, $zero, 9
	
	beq $t0, $zero, Zero
	
	addi $s0, $zero, 1
	beq $t0, $s0, One
	
	addi $s0, $zero, 2
	beq $t0, $s0, Two
	
	addi $s0, $zero, 3
	beq $t0, $s0, Three
	
	j END2
	
Zero:
	add $t1, $t4, $t5
	j END
	
One:
	add $t1, $t2, $t3
	j END
	
Two:
	sub $t1, $t2, $t3
	j END

Three:
	sub $t1, $t4, $t5
	j END

END:
	addi $v0, $zero, 4
	la $a0, str2
	syscall
	
	addi $v0, $zero, 1
	add $a0, $zero, $t1
	syscall
	
	addi $v0, $zero, 10
	syscall
	
END2:
	addi $v0, $zero, 4
	la $a0, str3
	syscall
	
	addi $v0, $zero, 10
	syscall