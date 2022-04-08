# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Product.create(name: 'Apple', upc: 12_345, part_number: 'testing', label: 'testing', quantity: '10')
User.create(email: 'testing@gmail.com', password: 'password')
