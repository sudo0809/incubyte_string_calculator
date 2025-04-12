require 'rails_helper'

RSpec.describe StringCalculator do
  describe '#add' do
    it 'returns 0 for an empty string' do
      expect(StringCalculator.add('')).to eq(0)
    end

    it 'returns the sum of two numbers' do
      expect(StringCalculator.add('1,2')).to eq(3)
    end
  end
end
