class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
 # food routes 
  get '/foods' do
    foods = Food.all
    foods.to_json
  end
  
  
  post "/foods" do
    food = Food.create(
      food_name: params[:food_name],
      meal_id: params[:meal_id]
    )
    food.to_json
  end

  delete "/foods/:id" do
    food = Food.find(params[:id])
    food.destroy
end

# meal routes 
  
  get '/meals' do
    meals = Meal.all
    meals.to_json include: :foods
  end

  get "/meals/:id" do
    meal = Meal.find_by_id(params[:id])
    meal.to_json include: :foods
  end
  
  post "/meals" do
    meal = Meal.create(
      meal_name: params[:meal_name],
      food_groups: params[:food_groups],
      meal_url: params[:meal_url]
    )
    meal.to_json
  end

  delete "/meals/:id" do
    meal = Meal.find(params[:id])
    meal.destroy
    Meal.all.to_json
  end



  
 # add execercise routes 

 get "/exercises" do
    exercise = Exercise.all
    exercise.to_json
  end

get "/exercises/:id" do
    exercise = Exercise.find_by_id(params[:id])
    exercise.to_json
end

post "/exercises" do
    exercise = Exercise.create(
      name: params[:name],
      instructions: params[:instructions],
      personal_trainer_id: params[:personal_trainer_id],
      routine_id: params[:routine_id]
    )
    exercise.to_json
  end

delete "/exercises/:id" do
    exercise = Exercise.find(params[:id])
    exercise.destroy
end
  # routine routes 
  get "/routines" do
    routines = Routine.all
    routines.to_json include: :exercises
  end

  get "/routines/:id" do
    routine = Routine.find_by_id(params[:id])
    routine.to_json
  end

  post "/routines" do
    routine = Routine.create(
      routine_name: params[:routine_name],
      muscle_group: params[:muscle_group],
      personal_trainer_id: params[:personal_trainer_id],
      routine_image: params[:routine_image],
    )
    routine.to_json
  end

  delete "/routines/:id" do
    routine = Routine.find(params[:id])
    routine.destroy
    Routine.all.to_json
  end
end


 




