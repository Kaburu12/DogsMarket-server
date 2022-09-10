puts "🌱 Seeding spices..."

# Seed your database here

puts "Deleting old data..."
# Dogs.destroy_all
# User.destroy_all

puts "Creating users..."
user= User.create(name: "Mike Kaburu" )

puts "Creating dogs..."
dog1= Dog.create(image:"http://www.dogsforsale.co.in/wp-content/uploads/2018/06/german-shepherd.jpg" ,breed:"German Shepherd", price:60000, user_id:1)
dog2=Dog.create(image:"http://www.dogsforsale.co.in/wp-content/uploads/2018/06/pomeranian.jpg", breed:"Pomeranian", price:20000, user_id:1)
dog3=Dog.create(image:"http://www.dogsforsale.co.in/wp-content/uploads/2018/06/Pug.jpg" ,breed:"Pug", price:25000, user_id:1)
dog4=Dog.create(image:"http://www.dogsforsale.co.in/wp-content/uploads/2018/06/rottweiler.jpg", breed:"Rottweiller", price:70000, user_id:1)
dog5=Dog.create(image:"https://images.unsplash.com/photo-1554235386-82e08c80c3ef?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80", breed:"Border Collie", price:50000, user_id:1)
dog6=Dog.create(image:"https://images.unsplash.com/photo-1596492784531-6e6eb5ea9993?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80", breed:"Samoyed", price:45000, user_id:1)
dog7=Dog.create(image:"https://images.unsplash.com/photo-1586392040092-88b64dc9d9e2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80", breed:"Bull Dog", price:60000, user_id:1)
dog8=Dog.create(image:"https://images.unsplash.com/photo-1580129518790-0482fc5eed65?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80" ,breed:"Eurohound", price:80000, user_id:1)

puts "Creating bookings..."
booking1= Booking.create(number:1,service:"Dog day care",location:"Ruai" ,user_id:1)
booking2= Booking.create(number:1,service:"Dog grooming",location:"Ruai" ,user_id:1)

puts "✅ Done seeding!"
