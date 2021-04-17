.data
STRING: 
	.string "digite um numero: "
STRING2:
	.string "SOMA = "

.text

READINT: 
	la a0 STRING
	li a7 4
	ecall
	
	li a7 5
	ecall
	

LOOP:
	bltz a0 READINT
	mv s0 a0

LOOP2:
	beqz s0 EXIT
	addi s0 s0 -1

LOOP3:
	li t0 2
	rem t1 s0 t0
	bnez t1 IMPAR
	j LOOP2

IMPAR:
	add s1 s1 s0
	j LOOP2
EXIT: 
	la a0 STRING2
	li a7 4
	ecall
	
	mv a0 s1
	li a7 1
	ecall
	
	li a7 10
	ecall
	
