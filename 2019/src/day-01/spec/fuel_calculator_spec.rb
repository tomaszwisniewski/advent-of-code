# frozen_string_literal: true

require_relative '../fuel_calculator'

describe FuelCalculator do
  let(:described_klass) { FuelCalculator }

  it 'should return 0 for mass less or equal to 0 after calculations' do
    [4, 2, -1].each do |mass|
      expect(described_klass.fuel_for(mass)).to equal(0)
    end
  end

  it 'should return expected fuel mass for masses bigger than 0 after calculations' do
    test_cases = [
      { input: 14, expected: 2 },
      { input: 1969, expected: 966 },
      { input: 100756, expected: 50346 }
    ]
    test_cases.each do |test_case|
      expect(described_klass.fuel_for(test_case[:input])).to equal(test_case[:expected])
    end
  end
end
