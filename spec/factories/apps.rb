# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :app do
    sequence(:name, 1) {|n| "Pizza Party #{n}" }
    description "MyText"
    email "MyString"
    business_model "MyString"
  end
end
