class User < ApplicationRecord 
validates :username, presence: true ,    uniqueness: { case_sensitive: false },  length: {minimum: 6 , maximum: 100}
Valid_Email_Formate = \A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z
    validates :email, presence: true ,    uniqueness: { case_sensitive: false },  length: {minimum: 6 , maximum: 100}, format: {with: Valid_Email_Formate}

end 