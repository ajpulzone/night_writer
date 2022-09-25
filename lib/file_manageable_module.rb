module FileManeagable

  def letter_lookup(letter)
    @alphabet.find do |eng_letter, braille|
      if letter == eng_letter
         return braille
      end
    end
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
  
end
