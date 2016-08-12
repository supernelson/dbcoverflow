class Topic < ActiveRecord::Base
  # Remember to create a migration!
  has_many :comments, as: :commentable
  has_many :votes, as: :votable
  has_many :answers

  belongs_to :user

  #write votecount function
end
