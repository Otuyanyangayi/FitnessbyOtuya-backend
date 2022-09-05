class CreateExercises < ActiveRecord::Migration[6.1]
  def change
    create_table :exercises do |t|
      t.string :name
      t.string :instructions
      t.integer :personal_trainer_id
      t.integer :routine_id
    end 
  end
end
