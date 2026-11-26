// Box.asm
// Name: Siya Singh
// Roll No: 2501730417
// K = 17; K mod 3 = 2; K mod 4 = 1
// Box: starts at row 0, 20 rows tall, 32 pixels (2 words) wide.
// Extra feature: assembler writes labels and variables to symbols.txt.

(START)
    @color
    M=0             // default colour = white (no key)
    @KBD
    D=M
    @DRAW
    D;JEQ           // KBD = 0 -> no key, keep white
    @color
    M=-1            // key pressed -> black

(DRAW)
    @SCREEN
    D=A
    @addr
    M=D             // first word of row 0
    @20
    D=A
    @rows
    M=D             // 20 rows

(ROW)
    @2
    D=A
    @width
    M=D             // 2 words = 32 pixels in each row

(COL)
    @color
    D=M
    @addr
    A=M
    M=D             // draw one 16-pixel word
    @addr
    M=M+1           // next word in this row
    @width
    MD=M-1
    @COL
    D;JGT           // draw remaining words

    @30
    D=A
    @addr
    M=D+M           // after 2 words, move 30 more to next row (+32 total)
    @rows
    MD=M-1
    @ROW
    D;JGT           // draw remaining rows
    @START
    0;JMP           // check the keyboard again
