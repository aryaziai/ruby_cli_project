require_relative '/Users/aryaziai/Development/Final_Project/config/environment.rb'
require 'sinatra/activerecord/rake'

# The seeds file is a quick way to populate the database

desc 'starts a console'
task :console do
  ActiveRecord::Base.logger = Logger.new(STDOUT)
  Pry.start
end

  
sfo = Flight.new("sfo")
sfo.desintation

# Flight.find_or_create_by(name: "Domestic")
# Flight.find_or_create_by(name: "International")

# 8.times do
# 	Doctor.find_or_create_by(
# 		name: Faker::Name.name, 
# 		department_id:  Faker::Number.between(from: 1, to: 3)
# 	)
# end

# 8.times do
# 	Patient.find_or_create_by(
# 		name: Faker::Name.name, 
# 		age: Faker::Number.between(from: 1, to: 100)
# 	) 
# end

# 15.times do
# 	Appointment.find_or_create_by(
# 		doctor_id: Faker::Number.between(from: 1, to: 8), 
# 		patient_id: Faker::Number.between(from: 1, to: 8), 
# 		time: Faker::Time.between(from: DateTime.now - 1, to: DateTime.now)
# 	)
# end
 