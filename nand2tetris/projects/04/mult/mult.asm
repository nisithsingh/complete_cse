// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

// Put your code here.

// Setting result to R0
@R0
D=M

//Check if R0 is zero
@ZEROINP
D;JEQ

@result
M=D

@R1
D=M

//Check if R1 is zero
@ZEROINP
D;JEQ

// Setting i to R1
@i
M=D

(LOOP)
//Check if i is R1, which signals end of loop
@i
D=M
@STOP
D-1;JLE

@R0
D=M
@result
M=M+D

@i
M=M-1

@LOOP
0;JMP

(STOP)
@result
D=M
@R2
M=D

(END)
@END
0;JMP


(ZEROINP)
@R2
M=0
@END
0;JMP
