class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  Add your routes here
    get '/dogs' do
      dogs = Dog.all
      dogs.to_json
  end

  #post a dog
  post '/dogs' do
    dog = Dog.create(
      image: params[:image],
      breed: params[:breed],
      price: params[:price],
    )
    dog.to_json
  end

  delete '/dogs/:id' do
    dog = Dog.find(params[:id])
    dog.destroy
    dog.to_json
  end

  # patch '/dogs/:id' do
  #   dog = Dog.find(params[:id])
  #   dog.update(
  #     price: params[:price]
  #   )
  #   dog.to_json
  # end

end
