class NightWriter
  attr_accessor :message, :braille_writer
#
  def initialize
  @message = ARGV[0]
  @braille_writer = ARGV[1]
  end
end

night_writer = NightWriter.new



#this takes the first argument from the terminal
#   # incoming_text = message.read
#   # message.close



  # def self.from_txt(input)


# File.open(message, "r") do |file|  #this lets me iterate through the message
#   file.read
#
# message = File.open(ARGV[0], "r")  #this takes the first argument from the terminal. Dont put these in the initialize
# incoming_text = message.read  #turn these into methods) **frosting to the file .open method
# message.close   #(turn these into methods)  **frosting to the file within the open method
#
#
# char_num = incoming_text.length
#
# braille_writer = File.open(ARGV[1], "w")
# braille_writer.write(incoming_text)
# braille_writer.close
#
# p "Created '#{ARGV[1]}' containing #{char_num} characters"




# end
# handle = File.open("filename.txt", "r")   #example of how to write code to open a file

# Need to make an instance of the class outside of the class itself to have access to the info within

# file = File.open(ARGV[0], "r") do |file|
#
# for line in file.readlines()
#   puts line.length
# end
#
# puts file.read()
#
# end


#
#
# input = ARGV[0] #for this project/purpose, ARGV[0] will be info to be read, ARGV[1] will be info to be written
# #Hey this is a file, now I want you to read it, now I want you to write it
#  Say input
#
# #Look up File.open - research how to access files to interact with them.
# #File.open(input, "r")
#
# path = "message.txt"
# night_writer = NightWriter.from_txt(path)
#
# p message.txt
#
# # message.txt
# #
# # braille.txt
# # message.txt is the name of an existing text file in your project directory. 256 is the count of characters in this file
#
# # braille.txt is the name that we woule like to give to a file that we will create in iteration 2
#
#
# #interacting with your terminal to give it information and get information back
#
#
# #What have I done?
#
# #created a directory called night_writer
#   #created sub-directories for lib, coverate (SimpleCov)
#   #created lib and spec files
#   #created tentative class files for a couple items (spec helper, dictionary)
#   #initialized
# # Because of the *, Ruby knows to assign ARGV[0] to first_arg, and the rest of the arguments to the_rest. Let’s prove it:
