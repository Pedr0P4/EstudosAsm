	.data
str1:	.asciiz "Digite o valor de k: "
str2:	.asciiz "f = "
str3:	.asciiz "k invalido!"
	.text

	.globl main

main:
	#Printando str1 e coletando o inteiro k.
	addi $v0, $zero, 4
	la $a0, str1
	syscall
	
	addi $v0, $zero, 5
	syscall
	add $t0, $zero, $v0
	
	#Definindo os valores de certas variáveis.
	addi $t2, $zero, 5
	addi $t3, $zero, 7
	addi $t4, $zero, 56
	addi $t5, $zero, 9
	
	#Se k == 0, vai para label Zero.
	beq $t0, $zero, Zero
	addi $s0, $zero, 1 #$s0 recebe 1.
	#Se k == 1, vai para label One.
	beq $t0, $s0, One
	addi $s0, $zero, 2 #$s0 recebe 2.
	#Se k == 2, vai para label Two.
	beq $t0, $s0, Two
	addi $s0, $zero, 3 #$s0 recebe 3.
	#Se k == 3, vai para label Three.
	beq $t0, $s0, Three
	j END2 #Caso nada disso ocorra, vai para a label END2.
	
Zero:
	#Soma.
	add $t1, $t4, $t5
	j END #Pula para END.
	
One:
	#Soma.
	add $t1, $t2, $t3
	j END #Pula para END.
	
Two:
	#Soma.
	sub $t1, $t2, $t3
	j END #Pula para END.

Three:
	#Soma.
	sub $t1, $t4, $t5
	j END #Pula para END.

END:
	#Printando str2 e o valor de $t1.
	addi $v0, $zero, 4
	la $a0, str2
	syscall
	
	addi $v0, $zero, 1
	add $a0, $zero, $t1
	syscall
	
	#Finalizando o programa.
	addi $v0, $zero, 10
	syscall
	
END2:
	#Printando str3 (mensagem de erro).
	addi $v0, $zero, 4
	la $a0, str3
	syscall
	
	#Finalizando o programa.
	addi $v0, $zero, 10
	syscall
