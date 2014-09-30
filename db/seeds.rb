# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Cat.create!(
  name: "Lucifer Sam",
  sex: "F",
  color: "black",
  birth_date: 18.years.ago
)

Cat.create!(
  name: "Spotty Thorpe",
  sex: "M",
  color: "blue",
  birth_date: 5.years.ago
)

Cat.create!(
  name: "Bartholomew",
  sex: "M",
  color: "black"
)

CatRentalRequest.create!(
  cat_id: 1,
  start_date: 5.years.ago,
  end_date: Date.current
)

CatRentalRequest.create!(
  cat_id: 1,
  start_date: 1.years.ago,
  end_date: Date.current
)