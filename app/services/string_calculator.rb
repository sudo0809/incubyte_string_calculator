class StringCalculator
    def self.add(input_string)
        return 0 if input_string.empty?


        if input_string.starts_with?("//")
            numbers_array = input_string.split("\n")[1]
            delimiter = input_string.split("\n")[0][2..]
            numbers = numbers_array.split("#{delimiter}")
        else
            numbers = input_string.gsub("\n", ',').split(',')
        end


        numbers.map(&:to_i).sum
    end
end
