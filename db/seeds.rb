# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

puts "Starting db seed process"

puts "Destroy previous records"
Dose.destroy_all
Ingredient.destroy_all
Cocktail.destroy_all

puts "Initialise variables"

cocktails = []
ingredients = %w(vodka whiskey rum ice lemon tonic mint lime vermouth coke)
ingredient_instances = []

puts "Seed cocktails"
5.times do
  cocktails << Cocktail.create({
    name: Faker::Beer.name
    })
end

puts "Seed ingredients"

10.times do
  i = rand(0..9)
  ingredient_instances << Ingredient.create({
    name: ingredients[i]
    })
end

puts "Seed doses"

20.times do
  i = rand(0..9)
  c = rand(0..4)
  Dose.create({
    cocktail: cocktails[c],
    ingredient: ingredient_instances[i],
    description: "#{i+1}cl"
    })
end

puts "DB seeding complete"
