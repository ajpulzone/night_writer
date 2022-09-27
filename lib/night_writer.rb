require "./lib/dictionary.rb"

class NightWriter
  attr_reader :file

  def file_reader(message)
    file = File.open(ARGV[0], "r")
    message = file.read
  end

  def file_writer(message)
    dictionary = Dictionary.new
    file = File.open(ARGV[0], 'r')
    message_text = file.read
    message = dictionary.word_convert(message_text)
    braille_message = message.join
    # test = dictionary.stack_braille_word(braille_message)  #attempt to get braille stacked when transfered. Not working
    braille_writer = File.open(ARGV[1], 'w')
    braille_writer.write(braille_message)
    puts "Created #{ARGV[1]} containing #{braille_message.length} characters"
    braille_writer.close
  end
end

night_writer = NightWriter.new
night_writer.file_reader(ARGV[0])
night_writer.file_writer(ARGV[1])

#   def translator
#     english_translator = Dictionary.new
#     handle = File.open(ARGV[0], 'r')
# message_text = handle.read
# char_nums = message_text.length
# braille_writer = File.open(ARGV[1], 'w')
# puts "CREATED #{ARGV[1]} CONTAINING #{char_nums} CHARACTERS"
# braille_writer.write(english_translator.write_braille(message_text))
#   end



# english_file = File.open(ARGV[0], "r")
# english_message = english_file.read
# english_file.close

# braille_file = File.open(ARGV[1], "w")
# braille_file.write(english_message)
# braille_file.close
# puts "Created #{ARGV[1]} containing #{english_message.length} characters."

























# # require "./lib/file_manageable_module.rb"
# class NightWriter
#   # include FileManeagable
#   attr_reader :file
#
#   def file_reader(message)
#     file = File.read(message)
#   end
#
#   def translator
#   end
#
#   def file_writer(message)
#     incoming_text = file_reader(ARGV[0])
#     file = File.open(message)
#     text = file.write(incoming_text)
#     puts "Created #{ARGV[1]} containing #{incoming_text.length} characters."
#   end
# end
#
# night_writer = NightWriter.new
# night_writer.file_reader(ARGV[0])
# night_writer.file_writer(ARGV[1])
#
# # File.open(message, "r") do |file|  #this lets me iterate through the message
# #   file.read
#
# # message = File.open(ARGV[0], "r")  #this takes the first argument from the terminal. Dont put these in the initialize
# # incoming_text = message.read  #turn these into methods) **frosting to the file .open method
# # message.close   #(turn these into methods)  **frosting to the file within the open method
# #
# #
# # char_num = incoming_text.length
# #
# # braille_writer = File.open(ARGV[1], "w")
# # braille_writer.write(incoming_text)
# # braille_writer.close
#
#
#
# #this takes the first argument from the terminal
# #   # incoming_text = message.read
# #   # message.close
#
#
#
#   # def self.from_txt(input)
#
#
# # File.open(message, "r") do |file|  #this lets me iterate through the message
# #   file.read
# #
# # message = File.open(ARGV[0], "r")  #this takes the first argument from the terminal. Dont put these in the initialize
# # incoming_text = message.read  #turn these into methods) **frosting to the file .open method
# # message.close   #(turn these into methods)  **frosting to the file within the open method
# #
# #
# # char_num = incoming_text.length
# #
# # braille_writer = File.open(ARGV[1], "w")
# # braille_writer.write(incoming_text)
# # braille_writer.close
# #
# # p "Created '#{ARGV[1]}' containing #{char_num} characters"
#
#
#
#
# # end
# # handle = File.open("filename.txt", "r")   #example of how to write code to open a file
#
# # Need to make an instance of the class outside of the class itself to have access to the info within
#
# # file = File.open(ARGV[0], "r") do |file|
# #
# # for line in file.readlines()
# #   puts line.length
# # end
# #
# # puts file.read()
# #
# # end
#
#
# #
# #
# # input = ARGV[0] #for this project/purpose, ARGV[0] will be info to be read, ARGV[1] will be info to be written
# # #Hey this is a file, now I want you to read it, now I want you to write it
# #  Say input
# #
# # #Look up File.open - research how to access files to interact with them.
# # #File.open(input, "r")
# #
# # path = "message.txt"
# # night_writer = NightWriter.from_txt(path)
# #
# # p message.txt
# #
# # # message.txt
# # #
# # # braille.txt
# # # message.txt is the name of an existing text file in your project directory. 256 is the count of characters in this file
# #
# # # braille.txt is the name that we woule like to give to a file that we will create in iteration 2
# #
# #
# # #interacting with your terminal to give it information and get information back
# #
# #
# # #What have I done?
# #
# # #created a directory called night_writer
# #   #created sub-directories for lib, coverate (SimpleCov)
# #   #created lib and spec files
# #   #created tentative class files for a couple items (spec helper, dictionary)
# #   #initialized
# # # Because of the *, Ruby knows to assign ARGV[0] to first_arg, and the rest of the arguments to the_rest. Let’s prove it:
