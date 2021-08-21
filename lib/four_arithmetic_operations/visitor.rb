# frozen_string_literal: true

module FourArithmeticOperations
  class Visitor
    def initialize(context)
      @context = context
    end

    def accept(node)
      visit(node)
    end
  end
end

