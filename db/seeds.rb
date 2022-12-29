puts "🌱 Seeding spices..."

# Seed your database here
Pet.create({
  image: "https://images.pexels.com/photos/733416/pexels-photo-733416.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
  name: "Rory",
  species: "dog",
  breed: "weiner",
  age: 11
})

Pet.create({
  image: "https://images.pexels.com/photos/1805164/pexels-photo-1805164.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260",
  name: "Margot",
  species: "dog",
  breed: "chi",
  age: 8
})

Comment.create({
  comment: Faker::Lorem.sentence,
  pet_id: 1
})

Comment.create({
  comment: Faker::Lorem.sentence,
  pet_id: 2
})


puts "✅ Done seeding!"
