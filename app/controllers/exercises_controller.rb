# frozen_string_literal: true

class ExercisesController < ProtectedController
  before_action :set_exercise, only: %i[show update destroy]

  # GET /exercises
  def index
    @exercises = current_user.exercises.all

    render json: @exercises
  end

  # GET /exercises/1
  def show
    render json: @exercise
  end

  # POST /exercises
  def create
    @exercise = current_user.exercises.build(exercise_params)

    if @exercise.save
      render json: @exercise, status: :created, location: @exercise
    else
      render json: @exercise.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /exercises/1
  def update
    if @exercise.update(exercise_params)
      render json: @exercise
    else
      render json: @exercise.errors, status: :unprocessable_entity
    end
  end

  # DELETE /exercises/1
  def destroy
    @exercise.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_exercise
    @exercise = current_user.exercises.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def exercise_params
    params.require(:exercise).permit(:name, :reps, :sets, :weight, :date, :user_id)
  end
end
