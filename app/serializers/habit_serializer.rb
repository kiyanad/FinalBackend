class HabitSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_many :user_habits
  has_many :users, through: :user_habits
  has_many :user_instances, through: :user_habits


end
