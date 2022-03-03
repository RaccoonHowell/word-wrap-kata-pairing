class Wrapper

    def wrap(string, num)
        return string if string.length < num

        "racco\non"

        return string[0..num-1] + "\n" + string[num..-1]
    end
end