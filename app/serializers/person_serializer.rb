class PersonSerializer < ActiveModel::Serializer
  attributes :id, :identification, :name, :lastname, :nickname, :created_at
end
