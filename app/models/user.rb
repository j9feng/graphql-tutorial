class User < ApplicationRecord
    has_secure_passwod

    validates :name, presence :true    
    validates :email, presence :true, uniqueness: true   
end
