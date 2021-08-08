#
# DO NOT MODIFY!!!!
# This file is automatically generated by Racc 1.5.2
# from Racc grammar file "".
#

require 'racc/parser.rb'


require 'four_arithmetic_operations/parser_extras.rb'
module FourArithmeticOperations
  class Parser < Racc::Parser
##### State transition tables begin ###

racc_action_table = [
     5,     4,     6,     7,     8,     9,     6,     7,     8,     9,
     7,     8,     9,    10,     4,     4,     4,     4,     9,     9 ]

racc_action_check = [
     1,     0,     1,     1,     1,     1,    14,    14,    14,    14,
    11,    11,    11,     5,     6,     7,     8,     9,    12,    13 ]

racc_action_pointer = [
    -5,     0,   nil,   nil,   nil,    13,     8,     9,    10,    11,
   nil,     7,    13,    14,     4 ]

racc_action_default = [
    -1,   -11,    -2,    -3,   -10,   -11,    -1,    -1,    -1,    -1,
    15,    -5,    -6,    -7,    -8 ]

racc_goto_table = [
     1,   nil,   nil,   nil,   nil,   nil,    11,    12,    13,    14 ]

racc_goto_check = [
     1,   nil,   nil,   nil,   nil,   nil,     1,     1,     1,     1 ]

racc_goto_pointer = [
   nil,     0,   nil,   nil ]

racc_goto_default = [
   nil,   nil,     2,     3 ]

racc_reduce_table = [
  0, 0, :racc_error,
  0, 8, :_reduce_none,
  1, 8, :_reduce_none,
  1, 8, :_reduce_none,
  0, 10, :_reduce_none,
  3, 10, :_reduce_5,
  3, 10, :_reduce_6,
  3, 10, :_reduce_7,
  3, 10, :_reduce_8,
  0, 9, :_reduce_none,
  1, 9, :_reduce_10 ]

racc_reduce_n = 11

racc_shift_n = 15

racc_token_table = {
  false => 0,
  :error => 1,
  :ADD => 2,
  :SUB => 3,
  :MUL => 4,
  :DIV => 5,
  :NUM => 6 }

racc_nt_base = 7

racc_use_result_var = false

Racc_arg = [
  racc_action_table,
  racc_action_check,
  racc_action_default,
  racc_action_pointer,
  racc_goto_table,
  racc_goto_check,
  racc_goto_default,
  racc_goto_pointer,
  racc_nt_base,
  racc_reduce_table,
  racc_token_table,
  racc_shift_n,
  racc_reduce_n,
  racc_use_result_var ]

Racc_token_to_s_table = [
  "$end",
  "error",
  "ADD",
  "SUB",
  "MUL",
  "DIV",
  "NUM",
  "$start",
  "expression",
  "terminal",
  "calculation" ]

Racc_debug_parser = false

##### State transition tables end #####

# reduce 0 omitted

# reduce 1 omitted

# reduce 2 omitted

# reduce 3 omitted

# reduce 4 omitted

module_eval(<<'.,.,', 'parser.y', 15)
  def _reduce_5(val, _values)
     Nodes::Add.new(val[0], val[2])
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 16)
  def _reduce_6(val, _values)
     Nodes::Sub.new(val[0], val[2])
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 17)
  def _reduce_7(val, _values)
     Nodes::Mul.new(val[0], val[2])
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 18)
  def _reduce_8(val, _values)
     Nodes::Div.new(val[0], val[2])
  end
.,.,

# reduce 9 omitted

module_eval(<<'.,.,', 'parser.y', 20)
  def _reduce_10(val, _values)
     Nodes::Num.new(val.first)
  end
.,.,

def _reduce_none(val, _values)
  val[0]
end

  end   # class Parser
end   # module FourArithmeticOperations