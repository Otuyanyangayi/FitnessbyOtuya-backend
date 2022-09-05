class Exercise < ActiveRecord::Base
   belongs_to :personal_trainer
   belongs_to :routine
end 