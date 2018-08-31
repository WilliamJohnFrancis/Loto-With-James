# PAIR PROGRAMMING CHALLENGE: Make a terminal app using the Faker gem + one other gem

require "faker"
require "rainbow"

class Loto
# Get 1 winning number
attr_accessor :winning_number, :people_number, :name
    def initialize 
        @winning_number = Faker::Number.number(1)
        @people_number = Faker::Number.number(1)
     end
     
    def match_number
        if @winning_number == @people_number
            puts Rainbow("You're the winner #{@name}!!!").green.bright.blink
        else
            puts Rainbow("Better luck next time #{@name}!").red.bright
        end
     end
end

first = Loto.new
puts "What's your name?"
first.name = gets.chomp
puts "winning number: #{first.winning_number}"
puts "your number: #{first.people_number}"
puts first.match_number