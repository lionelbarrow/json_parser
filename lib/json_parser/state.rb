module JSONParser
  class State
    def initialize(chars, position)
      @chars = chars
      @pos = position
    end

    def value
      val = determine_value
      raise_error if val.nil?
      val
    end

    def raise_error
      raise "Error at char #{@pos} for class #{self.class.to_s}: can't have #{@chars[@pos]} follow #{@chars[@pos-1]}"
    end
  end
end
