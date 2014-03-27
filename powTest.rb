require_relative 'powerranger.rb'

sadie = Person.new("Sadie", 10000)
sam = Person.new("Sam", 9000)
nick_cave = Person.new("Nick", 10000)

sadie.run
sadie.drink_coffee

yellow = PowerRanger.new("Yellow", 12000)
purple = PowerRanger.new("Purple", 14000)
blue = PowerRanger.new("Blue", 12000)
yellow.punch(sadie, 1000)
purple.punch(sam, 10)

yellow.rest

PowerRanger.use_megazord(sadie, yellow)

ninja_a = EvilNinja.new(20000, 10)
ninja_b = EvilNinja.new(20000, 15)
ninja_c = EvilNinja.new(20000, 10)
ninja_c.cause_mayhem(sam)
sam.drink_coffee

# fight_scene(ninja_b, ninja_a, sam, sadie, yellow, purple)
# fight_scene(ninja_a, sam, ninja_b, sadie) {|ninja_a| ninja_a.cause_mayhem(sam)}
# fight_scene(lambda{ninja_b.cause_mayhem(sadie)})
fight_scene -> {ninja_a.cause_mayhem(sam)}, -> {ninja_b.cause_mayhem(sadie)}, -> {sam.drink_coffee}, -> {sadie.drink_coffee}, -> {yellow.punch(nick_cave,4)}, -> {purple.punch(sadie, 6)}
