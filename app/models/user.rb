require 'bcrypt'

class User < ActiveRecord::Base

  # Remember to create a migration!
  has_many :topics
  has_many :answers
  has_many :votes
  has_many :comments

  validates :name, presence: true
  validates :username, presence: true
  validates :password, presence: true



  include BCrypt

  def password
    @password ||= Password.new(password_hash)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_hash = @password
  end


  def authenticate(user_password)
  	self.password == user_password
  end
end
