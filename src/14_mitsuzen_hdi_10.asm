; ----- XA -----
LINK 800

COPY 1 X ; USED FOR LINK

REPL LEFT
REPL RIGHT

MARK READ
COPY #NERV X
DIVI X -10 X
SUBI X 2 M
SUBI X 2 M
JUMP READ

; ---

MARK RIGHT
ADDI 2 X X
MARK LEFT
LINK X
LINK X

; ===
; WRITE

; FIRST RO
MARK A
MULI X -55 T
ADDI T 95 #NERV

; SECOND ROW
MULI X 55 T
SUBI T 125 #NERV

; REMAINING ROWS
COPY M T

MARK R
COPY -70 #NERV
SUBI T 1 T
TJMP R
JUMP A
