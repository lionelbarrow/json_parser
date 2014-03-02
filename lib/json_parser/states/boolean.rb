module JSONParser
  module States
    class Boolean < State
      attr_reader :token_length

      def determine_value
        case @chars[@pos]
        when "t"
          string = @chars.slice(@pos, 4).join("")
          raise_error unless string == "true"
          @token_length = 4
          true
        when "f"
          string = @chars.slice(@pos, 5).join("")
          raise_error unless string == "false"
          @token_length = 5
          false
        else
          raise_error
        end
      end
    end
  end
end
