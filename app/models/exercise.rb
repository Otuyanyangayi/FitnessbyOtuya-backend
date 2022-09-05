class Exercise < ActiveRecord::Base
   belonds_to :personal_trainer
   belongs_to :routine
end 