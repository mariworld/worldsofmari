# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
vick = User.create(name: "vick")
rita = User.create(name: "rita")
ted = User.create(name: "ted")

Video.destroy_all
v1 = Video.create(title:'Atlas', video_url:'https://www.youtube.com/embed/riK_3WNZ9m0')
v2 = Video.create(title:'Matter', video_url:'https://www.youtube.com/embed/HY6oYBf9i3s')
v3 = Video.create(title:'Sermon Sippin', video_url:"https://www.youtube.com/embed/4ARd8BmEHNw")

Comment.destroy_all
c1 = Comment.create(user: vick,message:"good stuff",video: v1) 
c2 = Comment.create(user: rita,message:"this is mmm",video: v2) 
c3 = Comment.create(user: ted,message:"this is good",video: v3) 


puts 'done'