# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# db/seeds.rb
Restaurant.destroy_all
restaurants_attributes = [
  {
    name:         "Epicure au Bristol",
    address:      "112 rue du Fg St-Honoré 75008 Paris",
    category:  "Face au jardin, on découvre une salle lumineuse... et la cuisine d'Éric Frechon.",
    phone_number: "35829058490"
  },
  {
    name:         "La truffière",
    address:      "4 rue Blainville 75005 Paris",
    category:     "Une valeur sûre que cette belle maison du 17e et les recettes de Jean-Christophe Rizet",
    phone_number: "35829058490"
  },
  {
    name:         "Le pré catelan",
    address:      "route de Suresnes 75016 Paris",
    category:  "Oeil vif, geste sûr: impossible de distinguer, dans les créations de Frédéric Anton...",
    phone_number: "35829058490"
  }
]
restaurants_attributes.each { |params| Restaurant.create!(params) }
