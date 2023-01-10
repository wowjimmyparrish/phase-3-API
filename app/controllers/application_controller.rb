class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/pets" do
    pets = Pet.all
    pets.to_json(include: :comments)

  end
  
  get '/dogs' do
    dogs = Pet.where(species: "dog") 
    dogs.to_json
  end

  get '/cats' do
    cats = Pet.where(species: "cat")
    cats.to_json
  end

  get '/comments' do
    comments = Comment.all
    comments.to_json
  end

  get '/pets/:id' do
    show = Pet.find(params[:id])
    show.to_json(include: :comments)
  end

  post '/pets' do
    pet = Pet.create(
      image: params[:image],
      name: params[:name],
      species: params[:species],
      breed: params[:breed],
      age: params[:age]
    )
    pet.to_json
  end
 
  post '/comments' do
    comment = Comment.create(
      comment: params[:comment],
      pet_id: params[:pet_id],
    )
    comment.to_json
  end

  delete '/comments/:id' do
    comment = Comment.find(params[:id])
    comment.destroy
    comment.to_json
  end

  delete '/pets/:id' do
    pet = Pet.find(params[:id])
    pet.destroy
    pet.to_json
  end

  delete '/dogs/:id' do
    dog = Pet.find(params[:id])
    dog.destroy
    dog.to_json
  end

  delete '/cats/:id' do
    cat = Pet.find(params[:id])
    cat.destroy
    cat.to_json
  end

  patch '/comments/:id' do
    comment = Comment.find(params[:id])
    comment.update(
      comment: params[:comment]
      )
    comment.to_json
  end


end
