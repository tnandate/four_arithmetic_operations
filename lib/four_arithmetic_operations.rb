# frozen_string_literal: true

require 'racc'
require 'four_arithmetic_operations/version'
require 'four_arithmetic_operations/nodes/node'
require 'four_arithmetic_operations/scanner'
require 'four_arithmetic_operations/parser'
require 'four_arithmetic_operations/visitor'

module FourArithmeticOperations
  class Error < StandardError; end
  # Your code goes here...
end
