require_relative './intcode_computer'

INPUT_FILE_PATH = './input.txt'

input = File.open(INPUT_FILE_PATH).read
codes = input.split(',').map(&:to_i)

#part 1
# result = IntcodeComputer.compute(codes)
# puts result[:codes][0]

#part 2

IntcodeComputer.compute(codes)
