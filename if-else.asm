.data
	msg1: .asciiz "Digite o primeiro numero: "
	msg2: .asciiz "Digite o segundo numero: "
	msg3: .asciiz "O resultado e:  "
	
.text 
	li $v0, 4
	la $a0, msg1
	syscall
	
	li $v0, 5
	syscall
	
	move $t0, $v0
	
	li $v0, 4
	la $a0, msg2
	syscall
	
	li $v0, 5
	syscall
	
	move $t1, $v0
	

	beq   $t0, 0, subtracao
	sub $t2, $t0, $t1
	addi $t2, $t2, 1
	
	j end

subtracao:
	add $t2, $t0, $t1
	sub $t2, $t2, 1
	

	

end:
	li $v0, 4
	la $a0, msg3
	syscall
	
	li $v0, 1
	move $a0, $t2
	syscall
	
	li $v0, 4
	


	