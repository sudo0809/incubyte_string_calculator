require 'rails_helper'

RSpec.describe StringCalculator do
  describe '#add' do
    it 'returns 0 for an empty string' do
      expect(StringCalculator.add('')).to eq(0)
    end

    it 'returns the sum of two numbers' do
      expect(StringCalculator.add('1,2')).to eq(3)
    end

    it 'handles newlines between numbers' do
      expect(StringCalculator.add("1\n2,3")).to eq(6)
    end

    context 'with custom delimiter defined at start' do

      it 'supports custom single-character delimiters' do
        expect(StringCalculator.add("//;\n1;2")).to eq(3)
      end

      it 'handles multiple newlines between numbers' do
        expect(StringCalculator.add("//;\n1;2\n3")).to eq(6)
      end
    end

    it 'raises an exception for a single negative number' do
      expect {
        StringCalculator.add("1,-2,3")
      }.to raise_error("negative numbers not allowed -2")
    end
  end
end
