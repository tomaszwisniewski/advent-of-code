require_relative './intcode_computer'

INPUT_FILE_PATH = './input.txt'

input = File.open(INPUT_FILE_PATH).read
codes = input.split(',').map(&:to_i)

result_codes = IntcodeComputer.compute(codes)
puts result_codes[0]
