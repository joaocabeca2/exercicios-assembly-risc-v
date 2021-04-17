.data
STRING: .string "digite um numero: "

.text
	
LERINT:
	la a0 STRING
	li a7 4
	ecall
	
	li a7 5
	ecall
	
	mv s0 a0
	li t0 10
LOOP:
	blez s0 EXIT
	rem s1 s0 t0
	div s0 s0 t0
	mv a0 s1
	li a7 1
	ecall
	j LOOP 

EXIT:
	li a7 10
	ecall