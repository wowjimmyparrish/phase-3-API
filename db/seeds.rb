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

Pet.create({
  name: "Sam",
  species: "cat",
  breed: "tabby",
  age: 9
})

Pet.create({
  name: "Meatloaf",
  species: "cat",
  breed: "calico",
  age: 4
})

Comment.create({
  comment: Faker::Lorem.sentence,
  pet_id: 1
})

Comment.create({
  comment: Faker::Lorem.sentence,
  pet_id: 2
})

Comment.create({
  comment: Faker::Lorem.sentence,
  pet_id: 3
})

Comment.create({
  comment: Faker::Lorem.sentence,
  pet_id: 4
})

puts "✅ Done seeding!"
