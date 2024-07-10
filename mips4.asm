	.data
	.text
	.globl main
	
main:
	addi $t1, $zero, 10 #a
	addi $t2, $zero, 1 #b
	add $t0, $zero, $zero #i
	
Loop:
	#Se i < a ($t0 < $t1), %t3 = 1, caso contrário $t3 = 0.
	slt $t3, $t0, $t1
	#Se $t3 == 0, vai para label END.
	beq $t3, $zero, END
	#Se a < b ($t1 < $t2), $t3 = 1, caso contrário $t3 = 0.
	slt $t3, $t1, $t2
	#Se $t3 == 0, vai para label Else.
	beq $t3, $zero, Else
	#Subtrai 1 de b ($t2).
	addi $t2, $t2, -1
	#Incrementa em 1 a variável i ($t0).
	addi $t0, $t0, 1
	j Loop #Volta para label Loop.
	
Else:
	#Se a != b ($t1 != $t2), vai para a label Else2.
	bne $t1, $t2, Else2
	#Incrementa em 1 a variável b ($t2).
	addi $t2, $t2, 1
	#Incrementa em 1 a variável i ($t0).
	addi $t0, $t0, 1
	j Loop #Volta para a label Loop.
	
Else2:
	#b recebe a soma de b com ele mesmo ($t2 = $t2 + $t2).
	add $t2, $t2, $t2
	#Incrementa em 1 a variável i ($t0).
	addi $t0, $t0, 1
	j Loop #Volta para a label Loop.
	
END:
	#$v0 recebe 10 (finalizar o programa).
	addi $v0, $zero, 10
	syscall #chamada de sistema.