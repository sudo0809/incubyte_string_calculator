class StringCalculator
    def self.add(input_string)
        return 0 if input_string.empty?

        delimiter = /,|\n/

        if input_string.starts_with?("//")
            custom_delimiter, input_string = input_string.split("\n", 2)
            custom_delimiter = custom_delimiter[2..]
            delimiter = /#{custom_delimiter}|\n/
        end

        numbers = input_string.split(delimiter).map(&:to_i)

        negatives = numbers.select { |n| n < 0 }
        if negatives.present?
            raise "negative numbers not allowed #{negatives.join(',')}"
        end

        numbers.sum
    end
end
