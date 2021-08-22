# frozen_string_literal: true

RSpec.describe FourArithmeticOperations::Visitor do
  describe '.accept' do
    subject do
      described_class.new.accept(node)
    end

    let(:node) { FourArithmeticOperations::Parser.parse(text) }

    context 'give addition' do
      let(:text) { '1 + 1' }

      it { is_expected.to eq 2 }
    end
  end
end
