class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here

  get '/meals' do
    meals = Meal.all
    meals.to_json include: :foods
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

patch "/exercises/:id" do
    exercise = Exercise.find(params[:id])
    exercise.update(
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

  patch "/routines/:id" do
    routine = Routine.find(params[:id])
    routine.update(
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


 




