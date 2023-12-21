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

def analyze
end

