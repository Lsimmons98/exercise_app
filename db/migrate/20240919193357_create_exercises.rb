class CreateExercises < ActiveRecord::Migration[6.1]
  def change
    create_table :exercises do |t|
      t.string :exercise_name
      t.string :muscle_group
      t.string :sub_group
      t.string :category
      t.string :image
      t.text :instructions

      t.timestamps
    end
  end
end
