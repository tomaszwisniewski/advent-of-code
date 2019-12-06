# frozen_string_literal: true

class IntcodeComputer
  module OptCodes
    ADD = 1
    MULTIPLY = 2
    HALT = 99
  end

  THRESHOLD = 19_690_720

  def self.compute(codes)
    (0..99).each do |noun|
      (0..99).each do |verb|
        working_codes = codes.clone

        working_codes[1] = noun
        working_codes[2] = verb

        current_position = 0
        opcode = working_codes[current_position]

        while opcode != OptCodes::HALT
          first_input_position = working_codes[current_position + 1]
          second_input_position = working_codes[current_position + 2]
          result_position = working_codes[current_position + 3]

          case opcode
          when OptCodes::ADD
            working_codes[result_position] = working_codes[first_input_position] + working_codes[second_input_position]
          when OptCodes::MULTIPLY
            working_codes[result_position] = working_codes[first_input_position] * working_codes[second_input_position]
          else
            raise "Unknown optcode #{opcode}"
          end

          current_position += 4
          opcode = working_codes[current_position]
        end

        puts "#{noun} #{verb}" if working_codes[0] == THRESHOLD
      end
    end

    puts "couldn't find factors!"
  end
end
