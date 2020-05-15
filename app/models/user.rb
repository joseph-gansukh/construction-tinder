class User < ApplicationRecord
   has_many :locations
   has_many :materials, through: :locations
end
