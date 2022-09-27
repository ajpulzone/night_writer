require "./lib/dictionary.rb"

class NightReader
  attr_reader :file

  def file_reader(message)
    braille_file = File.open(ARGV[0], "r")
    braille_message = braille_file.read
  end

  def file_writer(message)
    dictionary = Dictionary.new
    file = File.open(ARGV[0], 'r')
    message_text = file.read
    message = dictionary.braille_letter_lookup(message_text)
    file = File.open(ARGV[1], "w")
    file.write(message)
    puts "Created #{ARGV[1]} containing #{message.length} characters."
  end
end

night_reader = NightReader.new
night_reader.file_reader(ARGV[0])
night_reader.file_writer(ARGV[1])
