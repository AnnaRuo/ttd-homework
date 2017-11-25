class Codebreaker
  class Game
    attr_reader :output

    def initialize(output)
      @output = output
    end

    def start(secret_number)
      @secret_number = secret_number

      output.puts "Welcome to Codebreaker " + secret_number
      output.puts "Enter guess:"
    end

    def guess(input)
      # Make sure to replace next line with the actual implemented marking algorithm,
      # using the @secret_number
      if input.length > 4 || input.length < 4
        output.puts "Try guessing a number with four digits"
      elsif
        input != @secret_number
        output.puts ''
      else input.include? "1" || input.include? "2" || input.include? "3" || input.include? "4"
        output.puts "-"
      end
    end
  end
end
