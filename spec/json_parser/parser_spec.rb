require "spec_helper"

describe JSONParser::Parser do
  describe "parse" do
    it "works for empty arrays" do
      JSONParser::Parser.parse("[]").should == []
    end

    it "works for empty hashes" do
      JSONParser::Parser.parse("{}").should == {}
    end

    it "works for arrays and hashes" do
      JSONParser::Parser.parse("[{}, {}]").should == [{}, {}]
    end

    it "works for hashes and arrays" do
      JSONParser::Parser.parse("{[]: []}").should == {[] => []}
    end

    it "works for booleans" do
      JSONParser::Parser.parse("[true, false, false]").should == [true, false, false]
    end

    it "works for integers" do
      JSONParser::Parser.parse("[12345, 123, 12]").should == [12345, 123, 12]
    end

    it "works for strings" do
      JSONParser::Parser.parse("[\"hello\", \"there\"]").should == ["hello", "there"]
    end

    it "works for null" do
      JSONParser::Parser.parse("[null, 1234, \"hello\"]").should == [nil, 1234, "hello"]
    end
  end
end
