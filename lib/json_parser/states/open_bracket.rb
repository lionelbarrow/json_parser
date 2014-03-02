module JSONParser
  module States
    class StartArray < State
      def next_state
        case @char
        when "]"
          []
        end
      end
    end
  end
end
