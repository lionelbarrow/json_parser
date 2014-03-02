module JSONParser
  module States
    class InitialState < State
      def value
        case @chars.first
        when "[" then States::Array.new(@chars, @pos + 1).value
        when "{" then StartObject.new(@chars, @pos + 1).value
        end
      end
    end
  end
end
