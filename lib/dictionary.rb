class Dictionary
  attr_reader :alphabet

  def initialize
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
                "z" => "0..000",
                " " => "......"
                }
  end

  def letter_lookup(letter)
    braille_letter = []
    @alphabet.find do |eng_letter, braille|
      if letter == eng_letter
         braille_letter << braille
      end
    end
    braille_letter[0]
  end

  def stack_braille(letter)
    braille_letter = letter_lookup(letter)
      first_line = braille_letter.slice(0..1)
      second_line = braille_letter.slice(2..3)
      third_line = braille_letter.slice(4..5)
      first_line.insert(2, "\n")
      second_line.insert(2, "\n")
      (first_line + second_line + third_line)
  end

  def word_convert(word)
    braille_word = []
    word.each_char do |char|
      braille_word << letter_lookup(char)
    end
    braille_word.join
  end

  def sentence_convert(message)
  end 

end

#Make a braille dictionary to have a brail letter lookup, then a whole sentance, etc
#Focus on the translation portion, then do the same things as the english dictionary
