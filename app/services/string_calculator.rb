class StringCalculator
    def self.add(input_string)
        return 0 if input_string.empty?

        numbers = input_string.split(',')
        numbers = numbers.map do |number|
            number.to_i
        end

        numbers.sum
    end
end
