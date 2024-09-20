class Exercise < ApplicationRecord
  validates :exercise_name, presence: true
  validates :muscle_group, presence: true
  validates :sub_group, presence: true
  validates :category, presence: true
  validates :image, presence: true
  validates :instructions, presence: true
end
