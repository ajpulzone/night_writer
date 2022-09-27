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

  def letter_lookup(char)
    braille_letter = []
    @alphabet.find do |eng_letter, braille|
      if char == eng_letter
         braille_letter << braille
      end
    end
    braille_letter[0]
  end

  def word_convert(word)
    braille_word = []
    word.each_char do |char|
      braille_word << letter_lookup(char)
    end
    braille_word
  end

  def stack_braille_word(word)
    braille_word = word_convert(word)
    counter = 0
    stacked_braille_output = ""
    first_line = []
    second_line = []
    third_line = []
    braille_word.each do |char|
      first_line << char.slice(0..1)
      second_line << char.slice(2..3)
      third_line << char.slice(4..5)
      counter += 1
    end
    while counter > 0
      stacked_braille_output += (first_line.shift(20).join + "\n" + second_line.shift(20).join + "\n" + third_line.shift(20).join)
      stacked_braille_output += "\n" if counter > 0
      break
    end
    stacked_braille_output
  end


  def braille_letter_lookup(braille_letter)
    english_letter = []
    @alphabet.find do |eng_letter, braille|
      if braille_letter == braille
         english_letter << eng_letter
      end
    end
    english_letter[0]
end

def braille_word_convert(braille_word)
    braille_word_array = []
    counter = 0
    length = braille_word.length
    until counter == length
      braille_word.each_char do |char|
        index = 0
        braille_word_array << braille_word.slice!(index..(index+5))
        counter += 6
        index += 5
        break if counter == length
      end
    letters = []
      braille_word_array.map do |letter|
        letters << braille_letter_lookup(letter)
      end
    end
  letters.join
  end
end

# def unstack_braille_word(word)
#   def stack_braille_word(word)
#     braille_word = word_convert(word)
#     counter = 0
#     stacked_braille_output = ""
#     first_line = []
#     second_line = []
#     third_line = []
#     braille_word.each do |char|
#       first_line << char.slice(0..1)
#       second_line << char.slice(2..3)
#       third_line << char.slice(4..5)
#       counter += 1
#     end
#     while counter > 0
#       stacked_braille_output += (first_line.shift(20).join + "\n" + second_line.shift(20).join + "\n" + third_line.shift(20).join)
#       stacked_braille_output += "\n" if counter > 0
#       break
#     end
#     stacked_braille_output
#   end
# #Make a braille dictionary to have a brail letter lookup, then a whole sentance, etc
# #Focus on the translation portion, then do the same things as the english dictionary
