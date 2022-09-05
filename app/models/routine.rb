class Routine < ActiveRecord::Base
 belongs_to :personal_trainer
 has_many :exercises
end 