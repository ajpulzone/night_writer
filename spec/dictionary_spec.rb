require "./lib/dictionary.rb"

RSpec.describe Dictionary do

  before(:each) do
    @dictionary = Dictionary.new(alphabet = {"a" => "0.....",
                                            "b" => "0.0...",
                                            "c" => "00....",
                                            "d" => "00.0..",
                                            "e" => "0..0..",
                                            "f" => "000...",
                                            "g" => "0000..",
                                            "h" => "0.00..",
                                            "i" => ".00...",
                                            "j" => ".000..",
                                            "k" => "0...0.",
                                            "l" => "0.0.0.",
                                            "m" => "00..0.",
                                            "n" => "00.00.",
                                            "o" => "0..00.",
                                            "p" => "000.0.",
                                            "q" => "00000.",
                                            "r" => "0.000.",
                                            "s" => ".00.0.",
                                            "t" => ".0000.",
                                            "u" => "0...00",
                                            "v" => "0.0.00",
                                            "w" => ".000.0",
                                            "x" => "00..00",
                                            "y" => "00.000",
                                            "z" => "0..000"
                                })
  end

  describe "#initialize" do
    it "exists" do
      expect(@dictionary).to be_an_instance_of(Dictionary)
    end

    it "has readable attributes" do
      expect(@dictionary.alphabet).to eq(alphabet = {"a" => "0.....",
                                              "b" => "0.0...",
                                              "c" => "00....",
                                              "d" => "00.0..",
                                              "e" => "0..0..",
                                              "f" => "000...",
                                              "g" => "0000..",
                                              "h" => "0.00..",
                                              "i" => ".00...",
                                              "j" => ".000..",
                                              "k" => "0...0.",
                                              "l" => "0.0.0.",
                                              "m" => "00..0.",
                                              "n" => "00.00.",
                                              "o" => "0..00.",
                                              "p" => "000.0.",
                                              "q" => "00000.",
                                              "r" => "0.000.",
                                              "s" => ".00.0.",
                                              "t" => ".0000.",
                                              "u" => "0...00",
                                              "v" => "0.0.00",
                                              "w" => ".000.0",
                                              "x" => "00..00",
                                              "y" => "00.000",
                                              "z" => "0..000"
                                  })
    end
  end

  describe "#letter_lookup" do
    it "will take an english letter as an argument and return the braille equivilent" do
      expect(@dictionary.letter_lookup("c")).to eq("00....")
  end
end

  describe "#stack_braille" do
    it "will return the braile letter in 2 x 3 setup" do
      expect(@dictionary.stack_braille("c")).to eq("00\n" +
                                                   "..\n" +
                                                   "..")
      expect(@dictionary.stack_braille("q")).to eq("00\n" +
                                                   "00\n" +
                                                   "0.")
    end
  end
end
