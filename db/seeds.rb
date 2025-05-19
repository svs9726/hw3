# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Seeding places..."
Place.create("name" => "Chicago")
Place.create("name" => "Phuket")
Place.create("name" => "Colombo")
Place.create("name" => "Galle")
Place.create("name" => "Singapore")

puts "Seeding entries..."
chicago = Place.find_by("name" => "Chicago")
Entry.create([{"title" => "Navy Pier", 
              "description" => "Took the architectural boat tour", 
              "occurred_on"=> "2024-08-23", 
              "place_id" => chicago.id},
            {"title" => "Millennium Park", 
            "description" => "Saw the bean, took a walk",
            "occurred_on" => "2024-11-11",
            "place_id" => chicago.id}])

puts "Done seeding"
