require_relative "classes"
require_relative "player"

puts("Welcome to the world of Fendrisk!")
puts("Please choose your starting class (type the number):")
puts("")

Classes::CLASS_MAP.each do |k, v|
	puts(k + ". " + v)
end

char_class = gets.chomp

puts("Hmm.. so you choose a " + Classes::CLASS_MAP[char_class] + " eh? Good choice.")

puts("")
p = Player.new(char_class)

puts("You will be given the following items: ")
puts("")

p.items.each do |description, stats|
	puts(description + ": " + stats[:description])
end
