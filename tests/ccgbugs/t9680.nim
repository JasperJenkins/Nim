type GoGoGo = enum A, B
var gv {.goto.} = A
case gv
of A: discard
of B: discard
