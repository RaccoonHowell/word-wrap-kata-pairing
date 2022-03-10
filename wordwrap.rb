class Wrapper

    def wrap(string, num)
        return string if string.length < num

        whitespace = string[0...num].rindex(" ")

        whitespace && whitespace < num ? range = whitespace : range = num

        return string[0..range-1].strip + "\n" + string[range..-1].strip
    end
end