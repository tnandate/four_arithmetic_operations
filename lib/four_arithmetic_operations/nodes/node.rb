# frozen_string_literal: true

module FourArithmeticOperations
  module Nodes
    class Node
      include Enumerable

      attr_reader :left

      def initialize(left)
        @left = left
      end

      def type
        raise NotImplementedError
      end
    end

    class Terminal < Node
    end

    class Binary < Node
      attr_reader :right

      def initialize(left, right)
        super(left)
        @right = right
      end

      def children
        [left, right]
      end
    end

    # Terminal classes
    class Num < Terminal
      def type
        :NUM
      end
    end

    # Binary classes
    class Add < Binary
      def type
        :ADD
      end
    end

    class Sub < Binary
      def type
        :SUB
      end
    end

    class Mul < Binary
      def type
        :Mul
      end
    end

    class Div < Binary
      def type
        :DIV
      end
    end
  end
end
