class AppSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :email, :business_model
end
