# frozen_string_literal: true

require 'bigdecimal'

module FourArithmeticOperations
  class Visitor
    def accept(node)
      visit(node)
    end

    private

    def visit(node)
      send("visit_#{node.type}", node)
    end

    def visit_ADD(node)
      visit(node.left) + visit(node.right)
    end

    def visit_SUB(node)
      visit(node.left) - visit(node.right)
    end

    def visit_MUL(node)
      visit(node.left) * visit(node.right)
    end

    def visit_DIV(node)
      visit(node.left) / visit(node.right)
    end

    def visit_NUM(node)
      BigDecimal(node.left)
    end
  end
end

