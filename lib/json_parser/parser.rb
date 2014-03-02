module JSONParser
  class Parser
    def self.parse(string)
       States::InitialState.new(string.chars, 0).value
    end
  end
end
