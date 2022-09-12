puts "🌱 Seeding spices..."

# Destroying all data before reseeding each time. 
PersonalTrainer.destroy_all
Routine.destroy_all
Exercise.destroy_all

# Seed your database here

# Create Personal Trainers 
PersonalTrainer.create([
    {
        name: "Yasmin Rios",
        gender: "Male"
    },
    {
        name: "Harley Pollard",
        gender: "Female"
    }
])    


# Creating Routines
Routine.create(
    routine_name: "LEG DAY", 
    muscle_group: "Lower Body: Glutes, Quadriceps, Hamstrings, and Calves", 
    personal_trainer_id: PersonalTrainer.first.id,
    routine_image: "https://darebee.com/images/workouts/muscles/leg-day-workout.jpg"
)

Routine.create(
    routine_name: "LIFT ME", 
    muscle_group: "Upper Body: thenar, hypothenar, interossei and the lumbrical muscles", 
    personal_trainer_id: PersonalTrainer.last.id,
    routine_image:"https://darebee.com/images/workouts/muscles/keyboard-warrior-workout.jpg"
)

Routine.create(
    routine_name: "ALL ROUND", 
    muscle_group: "Full Body: chest, back, shoulders, core, legs and glutes", 
    personal_trainer_id: PersonalTrainer.first.id,
    routine_image: "https://darebee.com/images/workouts/muscles/dragon-lord-workout.jpg"
)
Routines.create(
    routine_name: "HARDY",
    muscle_group: "Upper Body",
    personal_trainer_id: PersonalTrainer.last.id,
    routine_image: "https://darebee.com/images/workouts/muscles/hardy-workout.jpg"
)

# Creating Exercises
Exercise.create(
    name: "Barbell Squat",
    instructions: "4 sets of 6-10 reps, lighten the load after the first 2 sets",
    personal_trainer_id: PersonalTrainer.first.id,
    routine_id: Routine.first.id
)

Exercise.create(
    name: "Leg Press",
    instructions: "4 sets of 8-10 reps",
    personal_trainer_id: PersonalTrainer.last.id,
    routine_id: Routine.first.id
)

# create Meals 
Meal.create([
    {
    meal_name: "Pinapple oats",
    food_groups: "Protein, Cabs",
    meal_url: "https://darebee.com/images/recipe/oats-pineapple-intro.jpg"
    },
    {
        meal_name: "Sesame cucumber salad",
        food_groups: "Cabs, vegetables",
        meal_url: "https://darebee.com/images/recipe/sesame-cucumber-salad-intro.jpg"

    }

])

Food.create([
    {
        food_name: "pinapple",
        meal_id: Meal.first.id
    },
    {
        food_name: "cucumber",
        meal_id: Meal.last.id
    }
])

puts "✅ Done seeding!"
