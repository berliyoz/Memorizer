$success = 0
$consecutive = 0

def mem_text
	puts "Enter text to Memorize:"
	print ">> "
	@mem_text = gets.chomp
	90.times {puts ""}
end

def prompt
	puts "What was the text?"
	print ">> "
	@user_input = gets.chomp
end

def status
	puts "-----------"
	puts "Text to Memorize: #{@mem_text}"
	puts "Last entered text: #{@user_input}"
	puts "==========="
end

def main
	puts "--------------------"
	puts ""
	mem_text
	while true
		prompt

		case @user_input
		when "q"
			exit(0)
		when "clear"
			$success = 0
			$consecutive = 0
		when "clean"
			90.times {puts ""}
		when "show"
			status
		when "new"
			mem_text
		when "?"
			help
		else
			if @mem_text == @user_input
				$success += 1
				$consecutive += 1

				puts "                        You answered corecetly #{$success} times."
				puts "                        #{$consecutive} consecative."
			else
				puts "                        No"
				$consecutive = 0
			end
		end
	end
end

def intro
	puts """
	             -----[ MEMORIZER 9000 ]-----
	
	I made this tool to memorize my credit card number.
	I guess it is good for more things.
	Enjoy!

	* try not to memoerize the commands...

	? - Help
	
	----------------------------------------------------"""
	help
end

def help
	puts """
	q     - Quit
	clear - Clear score
	clean - Clean screen
	show  - Showes the destintion text
	new   - New destintion text

	                                      Berliyoz 20/9/2017
	"""
end

intro
main