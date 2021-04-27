require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...
store4 = Store.create(name: "Surrey", annual_revenue: 224_000, mens_apparel: false, womens_apparel: true)
store5 = Store.create(name: "Whistler", annual_revenue: 1_900_000, mens_apparel: true, womens_apparel: false)
store6 = Store.create(name: "Yaletown", annual_revenue: 430_000, mens_apparel: true, womens_apparel: true)

@mens_store = Store.where(mens_apparel: true)
puts ""
puts "Mens Apparel stores:"

@mens_store.each do |store|
  puts "#{store.name}: $#{store.annual_revenue}"
end

puts ""
@womens_store = Store.where("womens_apparel= true AND annual_revenue < 1000000")
# alternate way of doing it
# @womens_store = Store.where(womens_apparel: true).where("annual_revenue < 1000000")

puts "Womens Apparel stores that has an annual revenue < 1,000,000"
@womens_store.each do |store|
  puts "#{store.name}"
end