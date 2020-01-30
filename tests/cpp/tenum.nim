discard """
targets: "cpp"
output: "{A, B, C}"
"""
type
  Enum {.importcpp: "namespaced::Enum", header: "enum.h".} = enum A, B, C

let x = {low(Enum) .. high(Enum)}
echo x
