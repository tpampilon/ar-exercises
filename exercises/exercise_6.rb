require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
@store1 = Store.find_by(id: 1)
@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Rex", last_name: "Raptor", hourly_rate: 90)
@store1.employees.create(first_name: "Megan", last_name: "Mann", hourly_rate: 50)

@store2 = Store.find_by(id: 2)
@store2.employees.create(first_name: "Sylvia", last_name: "Palmer", hourly_rate: 70)
@store2.employees.create(first_name: "Archie", last_name: "Cohen", hourly_rate: 40)
@store2.employees.create(first_name: "Chad", last_name: "Takahashi", hourly_rate: 80)