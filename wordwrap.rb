class Wrapper

    def wrap(string, num)
        return string if string.length < num

        # "the top"
        # if whitespace (3) is less than num (5) then range should be 0..whitespace
        whitespace = string[0...num].rindex(" ")

        if whitespace && whitespace < num
            return string[0..whitespace].strip + "\n" + string[whitespace..-1].strip
        end
        
        return string[0..num-1].strip + "\n" + string[num..-1].strip
    end
end