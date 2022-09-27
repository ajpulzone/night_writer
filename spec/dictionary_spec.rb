require "./lib/dictionary.rb"
require "./lib/file_manageable_module.rb"

RSpec.describe Dictionary do

  before(:each) do
    @dictionary = Dictionary.new
  end

  describe "#initialize" do
    it "exists" do
      expect(@dictionary).to be_an_instance_of(Dictionary)
    end

    it "has readable attributes" do
      # expect(@dictionary.word).to eq("hello world")
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
                                                    "z" => "0..000",
                                                    " " => "......"
                                        })
    end
  end

  describe "#letter_lookup" do
    it "will take an english letter as an argument and return the braille equivilent" do
      expect(@dictionary.letter_lookup("c")).to eq("00....")
  end
end

  describe "#word_convert" do
    it "will convert a word to braille" do
      expect(@dictionary.word_convert("cat")).to eq(["00....", "0.....", ".0000."])
      expect(@dictionary.word_convert("pudding")).to eq(["000.0.", "0...00", "00.0..", "00.0..", ".00...", "00.00.", "0000.."])
    end
  end

  describe "#stack_braille_word" do
    it "will return the braile word in 2 x 3 layout" do
      expect(@dictionary.stack_braille_word("cat")).to eq("000..0\n" +
                                                          "....00\n" +
                                                          "....0.")
      expect(@dictionary.stack_braille_word("hello world")).to eq("0.0.0.0.0....00.0.0.00\n" +
                                                                  "00.00.0..0..00.0000..0\n" +
                                                                  "....0.0.0....00.0.0...")
    end
  end

  xdescribe "#line_control" do
    it "will create a new line if braile characters are over 40 lines long" do
      expect(@dictionary.line_control("hello world hello world hello world hello world")).to
                                   eq("0.0.0.0.0....00.0.0.000.0.0.0.0....00.0.0.000.0.0.0.0....00.0.0.000.0.0.0.0....00.0.0.00\n" +
                                      "00.00.0..0..00.0000..000.00.0..0..00.0000..000.00.0..0..00.0000..000.00.0..0..00.0000..0\n" +
                                      "....0.0.0....00.0.0.......0.0.0....00.0.0.......0.0.0....00.0.0.......0.0.0....00.0.0...")
    end
  end

  describe "#braille_letter_lookup" do
    it "can translate a letter in braille to english" do
      expect(@dictionary.braille_letter_lookup("00....")).to eq("c")
    end
  end

  describe "#braille_word_convert" do
    it "can translate a word in braille to english" do
      expect(@dictionary.braille_word_convert("00....0......0000.")).to eq("cat")
    end
  end
end
