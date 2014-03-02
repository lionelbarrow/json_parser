module JSONParser
  class Number < State
    attr_reader :token_length

    def determine_value
      @start_pos = @pos
      loop do
        char = @chars[@pos]
        case char
        when ".", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9"
          @pos += 1
        when ",", "]", "}"
          break
        else
          raise_error
        end
      end

      @token_length = @pos - @start_pos
      number_string = @chars.slice(@start_pos, @token_length).join("")
      number_string.to_i
    end
  end
end
