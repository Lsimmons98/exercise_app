class ExercisesController < ApplicationController
  def index
    @exercises = Exercise.all

    respond_to do |format|
      format.html
      format.json { render json: @exercises }
    end
  end

  def create
    @exercise = Exercise.new(exercise_params)
    if @exercise.save
      render json: @exercise, status: :created
    else
      render json: @exercise.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @exercise = Exercise.find(params[:id])
    @exercise.destroy
    head :no_content
  end

  private

  def exercise_params
    params.require(:exercise).permit(:exercise_name, :muscle_group, :sub_group, :category, :image, :instructions)
  end
end
