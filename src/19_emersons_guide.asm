; ----- XA -----
GRAB 300
SEEK 1
COPY F T
COPY F X
DROP

LINK 800

; EAST
MARK A
FJMP HORI
SUBI T 1 T
LINK 801
JUMP A

; SOUTH NORTH
MARK HORI

; WHAT DIRECTION?
TEST X < 0
TJMP SOUTH
; NORTH
COPY X T
MARK C
FJMP EDIT
SUBI T 1 T
LINK 800
JUMP C


;SOUTH
MARK SOUTH
MULI X -1 T
MARK B
FJMP EDIT
SUBI T 1 T
LINK 802
JUMP B


MARK EDIT
GRAB 200

; FIND NAME
COPY M X
MARK B2
TEST F = X
FJMP Y
COPY F X
@REP 4
COPY X F
@END

; LOOK FOR OTHER NAME
MARK Y
SEEK 5
JUMP B2

; ----- XB -----
@REP 5
NOOP
@END

GRAB 300
COPY F M
