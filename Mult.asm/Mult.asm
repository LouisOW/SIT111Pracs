// Program: Mult.asm
// Computes RAM[2] = RAM[0] * RAM[1]
// Usage: assign values to R0 and R1 to get the multiplication

@R0
D=M
@firstnum
M=D // n = R0  is equal to the number we are multiplying by

@i
M=1 // i = 1

@product
M=0 // product = 0

(LOOP)
@i
D=M
@firstnum
D=D-M
@STOP
D;JGT // if i > firstnum goto STOP

@R1 // M = second number 
D=M // D=second number

@product
D=D+M // D = second number + product
M=D // product = product + second number
@i
M=M+1 // i = i + 1
@LOOP
0;JMP

(STOP)
@product
D=M
@R2
M=D // RAM[2] = product
(END)
@END
0;JMP
