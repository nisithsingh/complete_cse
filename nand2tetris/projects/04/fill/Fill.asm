// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input.
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel;
// the screen should remain fully black as long as the key is pressed. 
// When no key is pressed, the program clears the screen, i.e. writes
// "white" in every pixel;
// the screen should remain fully clear as long as no key is pressed.

// Put your code here.

@SCREEN
D=A
@addr
M=D
@addrtemp
M=D

@32
D=A
@colLen
M=D

@256
D=A
@rowLen
M=D
@rowLenTemp
M=D

(LISTEN)
@KBD
D=M


@CLEAR
D; JEQ

@rowLen
D=M
@rowLenTemp
M=D
@addr
D=M
@addrtemp
M=D


(GODOWN)
@GODOWNOUT
D;JEQ


@colLen
D=M


(GORIGHT)
@GORIGHTOUT
D;JEQ

@addrtemp
A=M
M=-1
@addrtemp
M=M+1

D=D-1

@GORIGHT
0;JMP 

(GORIGHTOUT)
@32
D=A
@addrTemp
M=M+D
@rowLenTemp
M=M-1
D=M

@GODOWN
0;JMP

(GODOWNOUT)

@LISTEN
0; JMP



(CLEAR)

@rowLen
D=M
@rowLenTemp
M=D
@addr
D=M
@addrtemp
M=D

(GODOWNclr)
@GODOWNOUTclr
D;JEQ


@colLen
D=M


(GORIGHTclr)
@GORIGHTOUTclr
D;JEQ

@addrtemp
A=M
M=0
@addrtemp
M=M+1

D=D-1

@GORIGHTclr
0;JMP 

(GORIGHTOUTclr)
@32
D=A
@addrTemp
M=M+D
@rowLenTemp
M=M-1
D=M

@GODOWNclr
0;JMP

(GODOWNOUTclr)



@LISTEN
0; JMP


