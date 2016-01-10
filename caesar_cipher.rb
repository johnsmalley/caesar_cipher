=begin
This program takes in a string and shift the output by a number of charters
to keep the message a secret. This is based on the Caesar Cipher project
at The Odin Project
http://www.theodinproject.com/ruby-programming/building-blocks	
=end

puts "Type in text that will be disguised"
input_message = gets.chomp

puts "Enter a number for the amount of charters your message should get" +
	 " shifted by"
shift = gets.chomp



def caesar_cipher(message, shift)
	count = 0
	message.each_char do |char|
		new_position = char.ord + shift.to_i

		if char.ord.between?(65, 90)
			while new_position > 90 # needed if shift is over 26
				new_position -= 26 # 26 letters in the alphabet
			end
			message[count] = new_position.chr
		elsif char.ord.between?(97, 122)
			while new_position > 122 #needed if shift is over 26
				new_position -= 26 # 26 letters in the alphabet
			end
			message[count] = new_position.chr
		end
		count += 1
	end
	puts message	
end

puts "Your new disguised message is shown below"
caesar_cipher(input_message, shift)

