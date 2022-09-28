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

  describe "#stack_braille" do
    it "will return the braile word in 2 x 3 layout" do
      expect(@dictionary.stack_braille_word("cat")).to eq("000..0\n" +
                                                          "....00\n" +
                                                          "....0.\n")
      expect(@dictionary.stack_braille_word("hello world")).to eq("0.0.0.0.0....00.0.0.00\n" +
                                                                  "00.00.0..0..00.0000..0\n" +
                                                                  "....0.0.0....00.0.0...\n")
    end

    it "will create a new line if thre are more than 40 brail pairs" do
      expect(@dictionary.stack_braille_word("happy days are here again")).to eq("0.0.000000..000.00.0..0.0.0...0.0.0.0...0.000..000\n" +
                                                                                "00..0.0..0...0...00.....00.0..00.000.0....00..0..0\n" +
                                                                                "....0.0.00......000.....0.........0.............0.\n")
    end
  end

  describe "#braille_letter_lookup" do
    it "can translate a letter in braille to english" do
      expect(@dictionary.braille_letter_lookup("00....")).to eq("c")
      expect(@dictionary.braille_letter_lookup("00..00")).to eq("x")
    end
  end

  describe "#braille_word_convert" do
    it "can translate a word in braille to english" do
      expect(@dictionary.braille_word_convert("00....0......0000.")).to eq("cat")
      expect(@dictionary.braille_word_convert("0.00..0..0..0.0.0.0.0.0.0..00........000.00..00.0.000.0.0.0.00.0..")).to eq("hello world")

    end
  end

  describe "#unstack_braille" do
    it "will return an english message from stacked braille" do
      expect(@dictionary.unstack_braille("000..0\n" +
                                        "....00\n" +
                                        "....0.\n")).to eq(["00....", "0.....", ".0000."])
    end
  end

  # describe "#braille_translator" do
  #   it "translates a stacked braille message to english" do
  #     expect(@dictionary.braille_translator("000..0\n" +
  #                                       "....00\n" +
  #                                       "....0.\n")).to eq("cat")
  #     expect(@dictionary.braille_translator())
  #   end
  # end
end
