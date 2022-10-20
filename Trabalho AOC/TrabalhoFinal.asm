.data

	str2: .asciiz "   "
	
	
.text 
	add $s0, $zero, $zero # i <- 0 + 0
	
	addi	$s3, $zero, 0	#fib(0)	/ anterioranterior
	addi	$s1, $zero, 1	#fib(1)	/ anterior
	addi	$s2, $zero, 1	#fib(n=0v1) = 1 / atual
	addi 	$t3,$zero, 20
	
FOR1:
	slt $t1, $s0, $t3
	beq $t1, $zero, SAI1
	
	addi	$v0, $zero, 4
	la	$a0, str2
	syscall
	
	li $v0, 1
	add $a0, $s2, $zero
	syscall
	
	#corpo do for
	add $s2, $s1, $s3 # atual = anterior + anterioranterior
		
	#atualiza o anterioranterior
	add $s3, $zero, $s1 #anterioranterior <= anterior
		
	#atualiza o anterior
	add $s1, $zero, $s2 #anterior <= atual  
	
	
	
		
	#/corpo do for
	addi	$s0, $s0, 1
	j FOR1
	
SAI1:

	#return 0
	addi	$v0, $zero, 10
	syscall
	
	
	
	
	
	
	
	
