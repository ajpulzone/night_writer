class NightReader
  attr_reader :file

  def file_reader(message)
    braille_file = File.open(ARGV[0], "r")
    braille_message = braille_file.read
    braille_file.close
  end

  def translator
    #braille to english
  end

  def file_writer(message)
    english_file = File.open(ARGV[1], "w")
    english_file.write(message)
    english_file.close
    puts "Created #{ARGV[1]} containing #{message.length} characters."
  end
end

night_reader = NightReader.new
night_reader.file_reader(ARGV[0])
night_reader.file_writer(ARGV[1])
