# frozen_string_literal: true

RSpec.describe FourArithmeticOperations::Scanner do
  describe 'InstanceMethods' do
    describe '#next_token' do
      subject { tokens }

      def tokens
        result = []

        while token = instance.next_token
          result.push(token)
        end

        result
      end

      before do
        instance.scan_setup(text)
      end

      let(:instance) { described_class.new }

      context 'give addition' do
        let(:text) { '1+2' }

        it do
          is_expected.to eq(
            [
              [:NUM, '1'],
              [:ADD, '+'],
              [:NUM, '2']
            ]
          )
        end
      end

      context 'give subtraction' do
        let(:text) { '2-1' }

        it do
          is_expected.to eq(
            [
              [:NUM, '2'],
              [:SUB, '-'],
              [:NUM, '1']
            ]
          )
        end
      end

      context 'give multiplication' do
        let(:text) { '2*1' }

        it do
          is_expected.to eq(
            [
              [:NUM, '2'],
              [:MUL, '*'],
              [:NUM, '1']
            ]
          )
        end
      end

      context 'give division' do
        let(:text) { '2/1' }

        it do
          is_expected.to eq(
            [
              [:NUM, '2'],
              [:DIV, '/'],
              [:NUM, '1']
            ]
          )
        end
      end
    end
  end
end
