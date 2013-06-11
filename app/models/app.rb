class App < ActiveRecord::Base
  attr_accessible :business_model, :description, :email, :name

  validates_presence_of :business_model
  validates_presence_of :name
  validates_presence_of :description
  validates_presence_of :email
end
