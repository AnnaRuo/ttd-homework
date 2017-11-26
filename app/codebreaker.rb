class Codebreaker
  class Game
    attr_reader :output

    def initialize(output)
      @output = output
    end

    def start(secret_number)
      @secret_number = secret_number

      output.puts "Welcome to Codebreaker"
      output.puts "Enter guess:"
    end

    def guess(input)

      if input.length > 4 || input.length < 4
        output.puts "Try guessing a number with four digits"
        return
      end

      match = ''

      if input.include?("1")
        match = match + "-"
      end

      if input.include?("2")
        match = match + "-"
      end

      if input.include?("3")
        match = match + "-"
      end

      if input.include?("4")
        match = match + "-"
      end

      input_array = input.split(//)
      secret_number_array = @secret_number.split(//)
      exact_match = ''

      result = input_array.zip(secret_number_array).map { | x , y | x == y }

      result.each do |match_number|
        if match_number == true
          exact_match = exact_match + '+'
          match = match.chop
        end
      end

      output.puts exact_match + match

      if input != @secret_number
        output.puts ''
        return
      end
    end
  end
end
