class Movie < ApplicationRecord
    validates :title, presence: true

    has_many :movie_person
    has_many :people, through: :movie_person
end
