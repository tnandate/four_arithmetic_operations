# frozen_string_literal: true

RSpec.describe FourArithmeticOperations::Parser do
  describe 'Class methods' do
    describe '.parse' do
      subject { described_class.parse(text) }

      context 'give addition' do
        let(:text) { '1' }

        it { is_expected.to be_a FourArithmeticOperations::Nodes::Num }
      end
    end
  end
end
