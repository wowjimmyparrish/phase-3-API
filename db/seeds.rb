puts "🌱 Seeding spices..."

# Seed your database here
# run a loop 15 times
15.times do
    # create a cat with random data
    pet = Pet.create(
      name: Faker::Pet.name,
      breed: Faker::Pet.breed,
      species: Faker::Pet.species,
      age: Faker::Pet.age
    )
  
    # create between 1 and 5 comments for each cat
    rand(1..5).times do
      Comment.create(
        comment: Faker::Lorem.sentence,
        pet_id: Pet.id # use the ID (primary key) of the cat as the foreign key
      )
    end
  end

puts "✅ Done seeding!"
