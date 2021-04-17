.data
STRING: .string "digite um numero: "
STRING2: .string "\nDobro: "
STRING3: .string "\nMetade: "

.text

READINT:
	li a7 4
	la a0 STRING
	ecall
	
	li a7 5 
	ecall
	
	slli s0 a0 1 #multiplicação
	srai s1 a0 1  #divisão	
	
	li a7 1
	ecall
	
DOBRO:	
	li a7 4
	la a0 STRING2
	ecall
	
	mv a0 s0
	li a7 1
	ecall
	
METADE:
	li a7 4
	la a0 STRING3
	ecall
	
	mv a0 s1
	li a7 1
	ecall

EXIT:
	li a7 10
	ecall	