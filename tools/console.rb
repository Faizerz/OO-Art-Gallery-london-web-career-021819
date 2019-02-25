require_relative '../config/environment.rb'

gal1 = Gallery.new('Phibbo', 'London')
gal2 = Gallery.new('Treyak', 'New York')

fez = Artist.new('Fez', 15)
ali = Artist.new('Ali', 10)
khang = Artist.new('Khang', 2)

p1 = Painting.new('The Chugly', 1000, fez, gal1)
p2 = Painting.new('Pryzm', 550, fez, gal1)
p3 = Painting.new('Wob Wob', 3000, fez, gal2)
p4 = Painting.new('Shlimmy', 2200, ali, gal2)
p5 = Painting.new('Rackoflak', 1700, ali, gal2)
p6 = Painting.new('Poop', 25, khang, gal1)


binding.pry

puts "Bob Ross rules."
