class Wrapper

    def wrap(string, num)
        return string if string.length < num

        return string[0..num-1].strip + "\n" + string[num..-1].strip
    end
end