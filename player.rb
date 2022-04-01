class Player
	def initialize(char_class)
		@char_class = char_class
		_set_items(char_class)
	end
	
	def items
		@items
	end
	
	private
	
	def _set_items(char_class)
		case char_class
		when "1"
			@items = {
				"Staff" => {
					:description => "An old stick that might hold magical powers",
					:damage => 3
				}, 
				"Robes" => {
					:description => "A set of grey Wizard robes",
					:resistance => 1
				}
			}
		when "2"
			@items = {
				"Sword" => {
					:description => "A large rusty sword",
					:damage => 3
				}, 
				"Heavy armor" => {
					:description => "Heavy armor which offers great protection",
					:resistance => 3
				}
			}
		when "3"
			@items = {
				"Bow" => {
					:description => "An old tattered bow",
					:damage => 3
				}, 
				"Light armor" => {
					:description => "A set of light armor, offers some protection",
					:resistance => 2
				}
			}
		end
	end
end
