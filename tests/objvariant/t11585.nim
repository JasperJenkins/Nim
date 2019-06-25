discard """
  errormsg: "undeclared field: 'hello'"
  line: 13
"""
type
  FooKind = enum
    fkBar = 1

  Foo = object
    case kind*: FooKind
    of fkBar: bar*: int

Foo(hello: 0)
