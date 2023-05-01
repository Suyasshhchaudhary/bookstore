# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

categories = 5.times.map {|index| Category.create!(name: "book category#{index}")}

5.times do|index|
  user = User.create(username: "username#{index+1}", 
  lastname: "lastname#{index+1}", 
  email: "email#{index+1}@test.com", 
  gender: ['male', 'female'].sample, 
  password: 'Welcome@123', 
  phone: '+91' + (1111111111 * (index+1)).to_s,
  age: 30)

  (rand *10.to_i).times do|bk_index|
    book = user.books.create!(title: "book #{bk_index+1}", 
    description: "book description #{bk_index}", 
    price: (rand * 100).round(2),
    author: "book author #{bk_index}")

    book.categories <<  categories.sample((rand*5).to_i)
  end  
end