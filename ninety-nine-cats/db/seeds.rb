# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Cat.destroy_all

["cats"].each do |table_name|
    ApplicationRecord.connection.reset_pk_sequence!(table_name)
  end

Cat1 = Cat.create!(name: "Milo",birth_date: "2010-05-02"  , color: "black",sex: "M", description: "Sad")
Cat2 = Cat.create!(name: "Max",birth_date: "2010-05-03" , color: "gray",sex: "M", description: "Annoying")
Cat3 = Cat.create!(name: "Kitty",birth_date: "2010-05-04" , color: "white",sex: "F", description: "Mean")
Cat4 = Cat.create!(name: "Luna",birth_date: "2010-05-05" , color: "gray",sex: "F", description: "Independent")
Cat5 = Cat.create!(name: "Mochi",birth_date: "2010-05-06" , color: "brown",sex: "M", description: "Hobo")
Cat6 = Cat.create!(name: "Mungo",birth_date: "2010-05-07" , color: "orange",sex: "M", description: "Crazy")
Cat7 = Cat.create!(name: "Bella",birth_date: "2010-05-08" , color: "black",sex: "F", description: "Gigantic")
Cat8 = Cat.create!(name: "Miso",birth_date: "2010-05-09" , color: "orange",sex: "M", description: "Cuddly")
Cat9 = Cat.create!(name: "Oliver",birth_date: "2022-01-10" , color: "black",sex: "M", description: "Demon")
