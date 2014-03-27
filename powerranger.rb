
module Fight

def punch(person, strength)
		if @strength.to_i > 5
			puts "Whoa! #{person.name} went flying!"
		  person.caffeine_level -= 5
			@strength -= 10
		else
			person.caffeine_level -= 2
			@strength -= 5
		end
	end

end

class Person

	attr_accessor :name, :caffeine_level

	def initialize(name, caffeine_level)
		@name = name
		@caffeine_level = caffeine_level
	end

	def run
		puts "Sheesh! #{@name} needs more exercise, or more coffee, running is hard!"
		@caffeine_level -= 2
		puts @caffeine_level
	end

	def scream
		puts "I need coffee!!"
	end

	def drink_coffee
		@caffeine_level += 1000
		puts "#{@name}'s new caffeine level is #{@caffeine_level}"
	end


end

class PowerRanger < Person

	include Fight

	attr_accessor :strength

	def initialize(color, strength)
		@color = color
		@strength = strength
	end

	def rest
		puts "#{@color} needs to recover"
		@strength += 500
	end

	def self.use_megazord(person, ranger)
		ranger.strength -= 200
		person.caffeine_level -= 5000
		puts "MEGAZORD!! #{person.name} is frozen."
	end

end

class EvilNinja < Person

	include Fight

	attr_accessor :strength

	def initialize(strength, evilness)
		@strenth = strength
		@evilness = evilness
	end

	def cause_mayhem(person)
	    person.caffeine_level = 0
		puts "#{person.name} is on the ground!"
		puts "#{person.name}'s caffeine level is now #{person.caffeine_level}"
	end

end

public

def fight_scene(ninja_a, ninja_b, sam, sadie, yellow, purple)
		puts "NINJAS!!!!."
		p "SUPER PUNCH"
		# yield ninja_a, sam
		# yield ninja_b, sadie
		ninja_a.call()
		ninja_b.call()
		puts "Quick! We need more COFFEE!"
		sam.call()
		sadie.call()
		puts "Two Power Rangers have landed. PUNCH!"
		yellow.call()
		purple.call()
end









