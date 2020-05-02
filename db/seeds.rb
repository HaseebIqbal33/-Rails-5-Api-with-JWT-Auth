# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Todo.destroy_all
Item.destroy_all
User.destroy_all
# todo = Todo.create!([
#   {
#     title: 'Some Work to do',
#     created_by: 'Danial'
#   },
#   {
#     title: 'New Work to do',
#     created_by: 'Danial'
#   },
#   {
#     title: 'Another Work to do',
#     created_by: 'Danial'
#   },
#   {
#     title: 'Office Work to do',
#     created_by: 'Danial'
#   }
# ])

# p "Todos Count #{Todo.count}"

User.create(name: 'Danial Munsif', email: 'danial@gmail.com', password: 'secret')

p "User Count #{User.count}"

10.times do |index|
  Todo.create!(
    title: 'Todo Work #{index}',
    created_by: User.first.id
  )
end

p "Todos Count #{Todo.count}"

Todo.all.each_with_index do |todo, index|
  Item.create!([
    {
    name: 'Some Item name here #{index}',
    done: false,
    todo_id: todo.id
    }
  ])

end

p "Item Count #{Item.count}"

