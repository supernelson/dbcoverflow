class Answer < ActiveRecord::Base
  # Remember to create a migration!
   has_many :comments, as: :commentable
   has_many :votes, as: :votable

   belongs_to :user, :topic
end
