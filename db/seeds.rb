# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Habit.destroy_all
UserHabit.destroy_all
UserInstance.destroy_all
UserBook.destroy_all


kiyana = User.create(name:"Kiyana", username:"kiki", password: "love")

read = Habit.create(name:"Read")
sleep = Habit.create(name:"Sleep")
eat = Habit.create(name:"Eat")

one = UserHabit.create(user: kiyana, habit: read)
two = UserHabit.create(user: kiyana, habit: sleep)
three = UserHabit.create(user: kiyana, habit: eat)



UserInstance.create(user_habit: one, status: false, date: "1-3")
UserInstance.create(user_habit: one, status: false, date: "1-6")
UserInstance.create(user_habit: two, status: false, date: "1-12")
UserInstance.create(user_habit: three, status: false, date: "1-9")
UserInstance.create(user_habit: three, status: false, date: "1-14")
UserInstance.create(user_habit: two, status: false, date: "1-2")
UserInstance.create(user_habit: three, status: false, date: "1-3")
UserInstance.create(user_habit: one, status: false, date: "1-5")
UserInstance.create(user_habit: two, status: false, date: "1-10")



one1 = UserBook.create(user: kiyana, name: "Harry Potter and The Chamber of Secrets", author: "J.K. Rowling", shortname:"Harry Potter", status:true)
two2 = UserBook.create(user: kiyana, name: "The Great Big Land With Everything Forever", author: "Bob Flmming", shortname:"Great Big Land", status:false)
three3 = UserBook.create(user: kiyana, name: "I love to read Books with really long titles", author:"Mary Jenkins", shortname:"Books", status: false)
four = UserBook.create(user: kiyana, name: "This is a really long title book oh man", author:"Mary Joanie", shortname:"Whoa Check it Out", status: true)
five = UserBook.create(user: kiyana, name: "Heres another really long title oh man", author:"Mary Jenkins", shortname:"Books", status: true)
six = UserBook.create(user: kiyana, name: "I love to read Books with really long titles", author:"Mary Jenkins", shortname:"CookBook", status: true)
seven = UserBook.create(user: kiyana, name: "I love to read Books with really long titles", author:"Mary Jenkins", shortname:"Big Book", status: true)
UserBook.create(user: kiyana, name: "I love to read Books with really long titles", author:"Mary Jenkins", shortname:"Big estBook", status: true)
