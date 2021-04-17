.data
STRING: .string "digite um numero: "

.text

LERINT:
	la a0 STRING      #carregar uma label em no registrador a0
	li a7 4	     	  #carregar um imediato de instrução de printar uma string que está em a0
	ecall		  #fazer procedimento
	
	li a7 5		  #carregar um imediato de instrucão de ler um inteiro que será armazenado em a0
	ecall		  
	
NEGATIVO:
	bltz a0 LERINT 	  #pular para a label se a0 for menor que zero
	li t0 3		  #carregar um imediato em t0
	mv s0 a0	  #mover o conteudo de a0 para s0
	j LOOP	          #pular para a label LOOP

LOOP:
	blez s0 EXIT	  #pular para  a label se for menor ou igual a zero
	addi s0 s0 -1	  #somar um imediato em s
	j MULTIPLO3 		

MULTIPLO3:	
	rem t1 s0 t0	 #colocar em t1 o resto da divisao de s0 com t0
	beqz t1 SOMA     #pular para label se for igual a zero
	j LOOP
SOMA:
	add s1 s0 s0

EXIT:
	mv a0 s1
	li a7 1          #carregar um imediato de instrução de printar um inteiro
	ecall
	
	li a7 10         #carregar um imediato de instrução de sair do programa
	ecall