class Dictionary
  attr_reader :alphabet

  def initialize(alphabet)
    @alphabet = {"a" => "0.....",
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
                }
  end

  def letter_lookup(letter)
    @alphabet.find do |eng_letter, braille|
      if letter == eng_letter
         return braille
      end
    end
  end

  def stack_braille(letter)
    braille_letter = letter_lookup(letter)
      a = braille_letter.slice(0..1)
      b = braille_letter.slice(2..3)
      c = braille_letter.slice(4..5)
      a.insert(2, "\n")
      b.insert(2, "\n")
      test = (a + b + c)
      require "pry";binding.pry
  end

end
