.data
STRING: .string "digite um numero: "

.text

LERINT:
	la a0 STRING 
	li a7 4	     
	ecall
	
	li a7 5
	ecall
	
NEGATIVO:
	bltz a0 LERINT
	li t0 3
	mv s0 a0
	j LOOP

LOOP:
	blez s0 EXIT
	addi s0 s0 -1
	j MULTIPLO3

MULTIPLO3:	
	rem t1 s0 t0
	beqz t1 SOMA
	j LOOP
SOMA:
	add s1 s0 s0

EXIT:
	mv a0 s1
	li a7 1
	ecall
	
	li a7 10
	ecall