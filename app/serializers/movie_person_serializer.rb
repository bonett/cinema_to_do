class MoviePersonSerializer < ActiveModel::Serializer
  attributes :id, :role, :person

  belongs_to :person
  belongs_to :movie
end
