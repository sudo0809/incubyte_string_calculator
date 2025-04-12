class StringCalculator
    def self.add(input_string)
        return 0 if input_string.empty?

        delimiter = /,|\n/

        if input_string.starts_with?("//")
            custom_delimiter, input_string = input_string.split("\n", 2)
            custom_delimiter = custom_delimiter[2..]
            delimiter = /#{custom_delimiter}|\n/
        end

        numbers = input_string.split(delimiter)

        numbers.map(&:to_i).sum
    end
end
