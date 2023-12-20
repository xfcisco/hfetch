require 'json'

# Units used:
# weight                 =>  kilograms (kg)
# time                   =>  min       (m)
# neutritional values    =>  grams     (g)

# for exercises with no added weight, weight=0 is bodyweight

class Exercise
  attr_accessor :reps, :sets, :rest, :weight

  def initialize(reps, sets, rest, weight)
    @reps = reps;
    @sets = sets;
    @rest = rest;
    @weight = weight;
  end
end

class Workout
  attr_accessor :interworkout_rest, :exercises

  def initialize
    @exercises = Hash.new
  end
end

# Workout.new(
#  interworkout_rest: 5,
#  exercises: {
#    :'push.up' => Exercise.new(reps: 5, sets: 2, weight: 5),
#    :'pull.up' => Exercise.new(reps: 2, rest: 2, sets: 3),
#    :'inclined.bench.press' => Exercise.new(reps: 5, sets: 3, weight: 15)
#  }
# )

def handle_workout(s_workout)
  j_workout = JSON.parse(s_workout);
  workout = Workout.new

  if j_workout["exercises"].nil? || j_workout["interworkout.rest"].nil? then 
    puts "an entry is missing."; exit 
  end

  workout.interworkout_rest = j_workout["interworkout.rest"];  

  j_workout["exercises"].map { |exercise, data|
    workout.exercises[exercise] = Exercise.new(
      data["reps"].nil? ? 1 : data["reps"].to_i,
      data["sets"].nil? ? 1 : data["sets"].to_i,
      data["rest"].nil? ? 0 : data["rest"].to_i,
      data["weight"].nil? ? 0 : data["weight"].to_i
    )
  }
end

