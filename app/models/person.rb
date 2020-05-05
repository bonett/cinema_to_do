class Person < ApplicationRecord
    validates :name, presence: true

    has_many :movie_person
    has_many :movie, through: :movie_person
end
