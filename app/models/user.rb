class User < ApplicationRecord
    validates :name, presence: true, length: {maximum: 15}
    
    VALID_EMAIL_REGEXID = /\A([\w+\-].?)+@[a-z.\d]+(\.[a-z]+)*\.[a-z]+\z/
    validates :email, presence: true ,format: {with: VALID_EMAIL_REGEXID}
    
    VALID_PASSWORD_REGEX = /\A(?=.*?[a-z])[a-z.\d]{8,32}+\z/
    validates :password, presence: true,
    length: {minimam: 8, maximum: 32},
    format: {with: VALID_PASSWORD_REGEX}
        
    has_secure_password
       
    has_many :topics
end
