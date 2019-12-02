class ExerciseSerializer < ActiveModel::Serializer
  attributes :id, :name, :reps, :sets, :weight, :date
end
