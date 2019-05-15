class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :activities
end
