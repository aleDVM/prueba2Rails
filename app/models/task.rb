class Task < ApplicationRecord
	 has_many :solutions, -> { order('id DESC') }

     has_many :users, through: :solutions
     
end
