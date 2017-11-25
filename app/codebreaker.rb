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

      output.puts match

      if input != @secret_number
        output.puts ''
        return
      end

    end
  end
end
