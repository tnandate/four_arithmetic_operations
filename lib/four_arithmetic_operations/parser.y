class FourArithmeticOperations::Parser

options no_result_var
token ADD SUB MUL DIV NUM

prechigh
  left MUL SUB
  left ADD SUB
preclow

rule
  expression:
    | terminal
    | calculation
  calculation:
    | expression ADD expression { Nodes::Add.new(val[0], val[2]) }
    | expression SUB expression { Nodes::Sub.new(val[0], val[2]) }
    | expression MUL expression { Nodes::Mul.new(val[0], val[2]) }
    | expression DIV expression { Nodes::Div.new(val[0], val[2]) }
  terminal:
    | NUM { Nodes::Num.new(val.first) }
  end

---- header

require 'four_arithmetic_operations/parser_extras.rb'
