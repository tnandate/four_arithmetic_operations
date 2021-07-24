# frozen_string_literal: true

module FourArithmeticOperations
  class Scanner
    def scan_setup(str)
      @string_scanner = StringScanner.new(str)
    end

    def eos?
      @string_scanner.eos?
    end

    def pos
      @string_scanner.pos
    end

    def pre_match
      @string_scanner.pre_match
    end

    def next_token
      scan unless @string_scanner.eos?
    end

    private

    def scan
      if @string_scanner.scan(/\+/)
        [:ADD, @string_scanner.matched]
      elsif @string_scanner.scan(/\-/)
        [:SUB, @string_scanner.matched]
      elsif @string_scanner.scan(/\*/)
        [:MUL, @string_scanner.matched]
      elsif @string_scanner.scan(%r{/})
        [:DIV, @string_scanner.matched]
      elsif @string_scanner.scan(/(?:[+\-])?\d+(?:\.\d*)?/)
        [:NUM, @string_scanner.matched]
      end
    end
  end
end
