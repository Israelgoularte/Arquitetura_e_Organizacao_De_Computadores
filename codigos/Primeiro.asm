#Crie um Progrma que faca qualquer coisa.
#DDA 07.06.2022

.data
	str1: 	.asciiz	"digite o valor a ser somado: "
	str2:	.asciiz	"o resultado e: "
	str3:	.asciiz "Programa que faz qualquer coisa "
	A:	.word 2
	B:	.space 4

.text
MAIN:
	li $v0, 4
	la $a0, str3
	syscall
	
	add $s1, $zero, $zero #Int i=0
	add $s5, $zero, $zero #jaspoin==0

	jal For	

	#print string
	li $v0,4
	la $a0, str2
	syscall
	#print resultado.
	li $v0, 1
	add $a0,$zero,$s5
	syscall
	
	#return 0
	li $v0, 10
	syscall
For:
	slti	$t5, $s1, 5 # i < t1==valor que vai ser lido acima.
	beq 	$t5,$zero,SAI
	
	#####
	
	li $v0,4
	la $a0, str1
	syscall
	li $v0,5
	syscall
	add $s5,$s5,$v0
	
	#####
	
	addi $s1,$s1,1 #i++
	j For
SAI:
	jr $ra
	
	