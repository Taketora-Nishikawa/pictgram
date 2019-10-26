class User < ApplicationRecord
  validates :name, presence: true, length: { maximum: 15 }
  validates :email, presence: true, format: { with:/^\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$/}
  validates :password, format:{ with:/\A(?=.*?[a-z])(?=.*?[A-Z])(?=.*?\d)[a-zA-Z\d]{8,32}+\z/}
  validates :password_confirmation
  
  has_secure_password
  
  has_many :topics
  has_many :favorites
  has_many :favorite_topics, through: :favorites, source: 'topic'
end
