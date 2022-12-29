puts "🌱 Seeding spices..."

# Seed your database here
# run a loop 15 times
15.times do
    # create a cat with random data
    cat = Cat.create(
      name: Faker::Cat.name,
      breed: Faker::Cat.breed,
      age: Faker::Cat.age
    )
  
    # create between 1 and 5 comments for each cat
    rand(1..5).times do
      Comment.create(
        comment: Faker::Lorem.sentence,
        cat_id: Cat.id # use the ID (primary key) of the cat as the foreign key
      )
    end
  end

puts "✅ Done seeding!"
