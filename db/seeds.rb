require 'faker'

5.times do |user|
	User.create(name: Faker::Name.name, username: Faker::Internet.user_name, password: "123" )
end

5.times do |topic|
	Topic.create(heading: Faker::Lorem.sentence, description: Faker::Lorem.paragraph, user: rand(1..5) )
end

10.times do |answer|
	Answer.create(topic: rand(1..5), description: Faker::Lorem.paragraph, user: rand(1..5) )
end

20.times do |comment|
	Comment.create(description: Faker::Lorem.paragraph, user: rand(1..5), topic: rand(1..5))
end

20.times do |comment|
	Comment.create(description: Faker::Lorem.paragraph, user: rand(1..5), answer: rand(1..10))
end
<<<<<<< HEAD
=======

>>>>>>> 51f3d4948ee5f5ed5085b297d91e80a6aa917d7b

20.times do |vote|
	Vote.create(user: rand(1..5), topic: rand(1..5))
end

20.times do |vote|
	Vote.create(user: rand(1..5), answer: rand(1..10))
end