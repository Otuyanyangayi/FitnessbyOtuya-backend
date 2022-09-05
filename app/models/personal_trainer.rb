class PersonalTrainer < ActiveRecord::Base
 has many :routines
 has many :exercises, through: :routines
end