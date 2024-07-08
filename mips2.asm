	.data
str1:	.asciiz "Digite o primeiro numero: "
str2:	.asciiz "Digite o segundo numero: "
str3:	.asciiz "O resultado e: "

	.text
	.globl main

main:
	#Printando str1 e lendo o inteiro.
	addi $v0, $zero, 4
	la $a0, str1
	syscall
	
	addi $v0, $zero, 5
	syscall
	add $t1, $zero, $v0
	
	#Printando str2 e lendo o inteiro.
	addi $v0, $zero, 4
	la $a0, str2
	syscall
	
	addi $v0, $zero, 5
	syscall
	add $t2, $zero, $v0
	
	#Fazendo a condicional (if(1 != 0)).
	bne $t1, $zero, Else
	addi $t2, $t2, -1
	add $t1, $t1, $t2
	j END

Else:
	addi $t2, $t2, 1
	sub $t1, $t1, $t2

END:
	#Printando o resultado (str3 e $t1)
	addi $v0, $zero, 4
	la $a0, str3
	syscall
	
	addi $v0, $zero, 1
	add $a0, $zero, $t1
	syscall
	
	#Finalizando programa.
	addi $v0, $zero, 10
	syscall