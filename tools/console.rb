# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

L1 = Lifter.new("Ali", 225)
L2 = Lifter.new("Kevin", 140)
L3 = Lifter.new("Alex", 420)
L4 = Lifter.new("Bobby", 890)
L5 = Lifter.new("Rashad", 501)

G1 = Gym.new("Floppy Smocks")
G2 = Gym.new("Santana Santa")
G3 = Gym.new("Who me?")
G4 = Gym.new("Larry Lobster Gold Ship")

M1 = Membership.new(100, G4, L1)
M2 = Membership.new(120, G1, L3)
M3 = Membership.new(200, G3, L4)
M4 = Membership.new(155, G2, L2)
M5 = Membership.new(200, G3, L5)

binding.pry

puts "Gains!"
