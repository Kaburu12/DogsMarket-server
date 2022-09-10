class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
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

  #delete route for dogs
  delete '/dogs/:id' do
    dog = Dog.find(params[:id])
    dog.destroy
    dog.to_json
  end

  # get bookings
  get '/bookings' do
    bookings = Booking.all
    bookings.to_json
end

#post bookings
post '/bookings' do
  booking = Booking.create(
    number: params[:number],
    service: params[:service],
    location: params[:location],
  )
  booking.to_json
end


  patch '/bookings/:id' do
    bookig = Booking.find(params[:id])
    booking.update(
      price: params[:price]
    )
    dog.to_json
  end

end
