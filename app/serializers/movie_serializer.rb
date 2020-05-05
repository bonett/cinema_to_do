class MovieSerializer < ActiveModel::Serializer
  attributes :id, :title, :year, :synopsis

  has_many :movie_person
  # has_many :people
end
