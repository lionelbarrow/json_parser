module JSONParser
  module States
    class Array < State
      def determine_value
        val = []
        loop do
          char = @chars[@pos]
          case char
          when "]"
            break
          when "0", "1", "2", "3", "4", "5", "6", "7", "8", "9"
            number = Number.new(@chars, @pos)
            val << number.value
            @pos += number.token_length
          when "t", "f"
            puts "val: #{val}"
            bool = Boolean.new(@chars, @pos)
            val << bool.value
            @pos += bool.token_length
          else # whitespace
            @pos += 1
          end
        end
        val
      end
    end
  end
end
