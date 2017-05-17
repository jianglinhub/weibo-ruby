class User < ApplicationRecord 
    has_many :posts

# presence存在验证，length长度验证,maximum最大长度，format格式验证，uniqueness，case_sensitive false  大小写不明感
validates :userName, presence: true, length: {maximum: 20}
EMAL = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
validates :email, presence: true, length: {maximum: 255}, format: {with: EMAL},
    uniqueness: { case_sensitive: false }

has_secure_password
validates :password, length: {minimum: 6}

end
