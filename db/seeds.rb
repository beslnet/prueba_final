# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


25.times do |x|
	user = User.new
	user.email = "profesor-#{x}@gmail.com"
	user.password = 'password'
	user.password_confirmation = 'password'
	user.fullname = "Profesor #{x}"
	user.user_type = 1
	user.save!
end

3.times do |y|
	user = User.new
	user.email = "alumno-#{y}@gmail.com"
	user.password = 'password'
	user.password_confirmation = 'password'
	user.fullname = "Alumno #{y}"
	user.user_type = 2
	user.save!
end