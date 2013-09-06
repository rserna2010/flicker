class User < ActiveRecord::Base
  has_many :albums
  has_many :photos, through: :albums

  validates :email, presence: true 
  validates :email, uniqueness: {
  	message: "Email already in use"}  
  validates :email, format: { with: /^.+@.+$/,
    message: "Please enter a valid email" }
  validates :password, presence: {
  	message: "Password required"}

end
