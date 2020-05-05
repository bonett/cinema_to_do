class PersonSerializer < ActiveModel::Serializer
  attributes :id, :name, :last_name, :created_at
end
