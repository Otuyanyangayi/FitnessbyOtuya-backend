class CreateMeals < ActiveRecord::Migration[6.1]
  def change
    create_table :meals do |t|
      t.string :meal_name
      t.string :food_groups
      t.string :meal_url
    end
  end
end
