class User < ActiveRecord::Base
  validates :user_name, presence: true, length: { maximum: 50 }, 
    uniqueness: { case_sensitive: false }
  validates :password, presence: true, length: { minimum: 6 }
  has_many :posts
  has_many :comments
end
