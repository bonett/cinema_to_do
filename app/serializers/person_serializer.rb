class PersonSerializer < ActiveModel::Serializer
  attributes :id, :name, :lastname, :created_at
end
