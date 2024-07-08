	.data
str1:	.asciiz "Digite o primeiro numero: "
str2:	.asciiz "Digite o segundo numero: "
str3:	.asciiz "O resultado e: "

	.text
	.globl main

main:
	#print do str1
	addi $v0, $zero, 4
	la $a0, str1
	syscall
	
	#read do inteiro
	addi $v0, $zero, 5
	syscall
	add $t0, $zero, $v0
	
	#print do str2
	addi $v0, $zero, 4
	la $a0, str2
	syscall
	
	#read do inteiro
	addi $v0, $zero, 5
	syscall
	add $t1, $zero, $v0
	
	#print do str3 e resultado
	addi $v0, $zero, 4
	la $a0, str3
	syscall
	
	sub $s0, $t0, $t1
	addi $v0, $zero, 1
	add $a0, $zero, $s0
	syscall