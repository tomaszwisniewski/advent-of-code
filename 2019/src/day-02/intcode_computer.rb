class IntcodeComputer

  module OptCodes
    ADD = 1
    MULTIPLY = 2
    HALT = 99
  end

  def self.compute(codes)
    current_position = 0
    opcode = codes[current_position]

    while opcode != OptCodes::HALT do
      first_input_position = codes[current_position + 1]
      second_input_position = codes[current_position + 2]
      result_position = codes[current_position + 3]

      case opcode
      when OptCodes::ADD
        codes[result_position] = codes[first_input_position] + codes[second_input_position]
      when OptCodes::MULTIPLY
        codes[result_position] = codes[first_input_position] * codes[second_input_position]
      else
        raise "Unknown optcode #{opcode}"
      end

      current_position += 4
      opcode = codes[current_position]
    end

    codes
  end
end
