class Task < ApplicationRecord
	 has_many :solutions

     has_many :users, through: :solutions
     
end
