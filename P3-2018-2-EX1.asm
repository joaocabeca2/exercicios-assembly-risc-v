.data
STRING: .string "digite um numero: "
STRING2: .string " não é primo"
STRING3: .string "é primo"
.text

LERINT:
	la a0 STRING 	 #carregar uma label em a0
	li a7 4     	 #carregar um imediato de instrução de printar uma string armazenada em a0
	ecall
	
	li a7 5          #carregar um imediato de instrução de ler um inteiro em a0
	ecall

	li t0 1          #carregar um imediato em t0
	
LOOP1:
	blt a0 t0 LERINT #pular para a label se a0 for menor que t0
	mv s0 a0
	addi s1 s0 0
	j LOOP2

LOOP2:
	blt s0 t0 NOTPRIMO # SE S0 FOR MENOR QUE ZERO SAIR DO LOOP
	rem t1 s1 s0       #resto da divisao 
	addi s0 s0 -1	   #somando um imediato
	j DIVISIVEL
	
DIVISIVEL:
	bnez t1 LOOP2      #pular para label se não for igual a zero
	addi s2 s2 1
	j LOOP2

NOTPRIMO:
	li t2 2		   #carregar um imediato em t2
	beq s2 t2 PRIMO    #pular para a label se s2 for igual a t2
	la a0 STRING2      #carregar uma label em a0
	j EXIT
PRIMO:
	la a0 STRING3      #carregar uma label em a0
	j EXIT
EXIT:
	li a7 4     	   #carregar um imediato de instrução de printar uma string que está em a0
	ecall
	
	li a7 10           #carregar um imediato de instrução de sair do programa
	ecall