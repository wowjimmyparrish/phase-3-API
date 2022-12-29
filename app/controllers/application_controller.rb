class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project, Big Jim!" }.to_json
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

  

end
