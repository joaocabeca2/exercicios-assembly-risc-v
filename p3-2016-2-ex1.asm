.data
STRING:
	.string "digite um numero: "
STRING1: 
	.string "é par"
STRING2:
	.string "é impar"
	
.text

	la a0 STRING
	li a7 4
	ecall
	
	li a7 5
	ecall

		
	li t0 2
	li t1 0
	
	rem s0 a0 t0
	
IMPAR: 
	beq s0 t1 PAR
	
	la a0 STRING2
	li a7 4
	ecall
	j EXIT	

PAR:
	la a0 STRING1
	li a7 4
	ecall

EXIT:
	li a7 10
	ecall
