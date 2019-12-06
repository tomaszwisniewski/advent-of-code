# frozen_string_literal: true

require_relative '../intcode_computer'

describe IntcodeComputer do
  context '#compute' do
    it 'returns correct output for given input' do
      [
        { input_codes: [1, 0, 0, 0, 99], expected_codes: [2, 0, 0, 0, 99] },
        { input_codes: [2, 3, 0, 3, 99], expected_codes: [2, 3, 0, 6, 99] },
        { input_codes: [2, 4, 4, 5, 99, 0], expected_codes: [2, 4, 4, 5, 99, 9801] },
        { input_codes: [1, 1, 1, 4, 99, 5, 6, 0, 99], expected_codes: [30, 1, 1, 4, 2, 5, 6, 0, 99] }
      ].each do |testcase|
        expect(described_class.compute(testcase[:input_codes])).to match_array(testcase[:expected_codes])
      end
    end
  end
end
