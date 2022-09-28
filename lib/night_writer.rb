require "./lib/dictionary.rb"

class NightWriter
  attr_reader :file

  def file_reader(message)
    file = File.open(ARGV[0], "r")
    message = file.read
    file.close
  end

  def file_writer(message)
    dictionary = Dictionary.new
    file = File.open(ARGV[0], 'r')
    message_text = file.read
    braille_message = dictionary.word_convert(message_text).join
    braille_writer = File.open(ARGV[1], 'w')
    braille_writer.write(braille_message)
    puts "Created #{ARGV[1]} containing #{braille_message.length} characters"
    braille_writer.close
  end
end

night_writer = NightWriter.new
night_writer.file_reader(ARGV[0])
night_writer.file_writer(ARGV[1])
