class StringCalculator
    def self.add(input_string)
        return 0 if input_string.empty?

        numbers = input_string.gsub("\n", ',').split(',')

        numbers.map(&:to_i).sum
    end
end
