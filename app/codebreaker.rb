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

      if input.include?("1") || input.include?("2") || input.include?("3") || input.include?("4")
        output.puts '-'
      end

      if input.match?("4") || input.match?("3") || input.match?("2") || input.match?("1")
        output.puts '+'
      end

      if input != @secret_number
        output.puts ''
        return
      end
    end
  end
end
