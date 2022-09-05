class CreatePersonalTrainers < ActiveRecord::Migration[6.1]
  def change
    create_table :personal_trainers do |t|
      t.string :name
      t.string :gender 
    end
  end
end
