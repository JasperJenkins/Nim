discard """
  errormsg: "undeclared field: 'hello'"
  line: 14
"""
type
  FooKind = enum
    fkBar = 1, fkBaz = 2

  Foo = object
    case kind*: FooKind
    of fkBar: bar*: int
    else: discard

Foo(hello: 0)
