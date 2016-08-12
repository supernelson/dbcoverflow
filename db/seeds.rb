require 'faker'

5.times do |user|
	User.create(name: Faker::Name.name, username: Faker::Internet.user_name, password: "123" )
end

5.times do |topic|
	Topic.create(heading: Faker::Lorem.sentence, description: Faker::Lorem.paragraph, user: User.find(rand(1..5)) )
end

10.times do |answer|
	Answer.create(topic: Topic.find(rand(1..5)), description: Faker::Lorem.paragraph, user: User.find(rand(1..5)) )
end

20.times do |comment|
	Comment.create(description: Faker::Lorem.paragraph, user: User.find(rand(1..5)), commentable: Topic.find(rand(1..5)))
end

20.times do |vote|
	Vote.create(user: User.find(rand(1..5)), votable: Topic.find(rand(1..5)))
end

20.times do |vote|
  Vote.create(user: User.find(rand(1..5)), votable: Answer.find(rand(1..5)))
end