Restaurant.destroy_all
restaurants_attributes = [
  {
    name:         "Epicure au Bristol",
    address:      "112 rue du Fg St-Honoré 75008 Paris",
    phone_number: "293 23 23",
    category:     "italian"
  },
  {
    name:         "La truffière",
    address:      "4 rue Blainville 75005 Paris",
    phone_number: "234 42 32",
    category:     "chinese"
  },
  {
    name:         "Le pré catelan",
    address:      "route de Suresnes 75016 Paris",
    phone_number: "214 23 55",
    category:     "french"
  },
  {
    name:         "Zum Storch",
    address:      "Am Seesteg 8008 Zürich",
    phone_number: "041 23 55",
    category:     "japanese"
  },
  {
    name:         "Crepenese",
    address:      "route de bibla 8008 Brussel",
    phone_number: "237 23 31",
    category:     "belgian"
  }
]
restaurants_attributes.each { |params| Restaurant.create!(params) }
