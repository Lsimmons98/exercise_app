require 'json'

namespace :db do
  desc "Load exercises from JSON"
  task load_exercises: :environment do
    file_path = Rails.root.join('db', 'exercises.json')
    file = File.read(file_path)
    data = JSON.parse(file)

    data['exercises'].each do |exercise_data|
      Exercise.create!(
        exercise_name: exercise_data['exercise_name'],
        muscle_group: exercise_data['muscle_group'],
        sub_group: exercise_data['sub_group'],
        category: exercise_data['category'],
        image: exercise_data['image'],
        instructions: exercise_data['instructions']
      )
    end

    puts "Exercises have been imported successfully!"
  end
end
