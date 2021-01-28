#Creates the computer's random_number
require 'pry'
def computer_number
 number = rand(6) + 1
end 

#asks for user input
def user_prompt
  puts "Guess a number between 1 and 6."
end 

#collects user input 
def user_input
  gets.chomp.to_i
end

#invalid user input message
def invalid_input
  puts "Please input a valid number or 'exit'."
end

#compares input to computer number 
def compare (user_input, computer_number)

    if user_input == computer_number
      puts "You guessed the correct number!"
    elsif (user_input != computer_number) && (user_input > 0) && (user_input < 6)
      puts "Sorry! The computer guessed #{computer_number}."
    elsif user_input == "exit".to_i
     puts "Goodbye!"
   else 
      invalid_input
    end

end 

def run_guessing_game

 user_prompt
 compare(user_input, computer_number)

end 