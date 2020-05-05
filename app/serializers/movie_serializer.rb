class MovieSerializer < ActiveModel::Serializer
  attributes :id, :title

  has_many :movie_person
  # has_many :people
end
