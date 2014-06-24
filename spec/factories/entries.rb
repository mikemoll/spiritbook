# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :entry do
    title "MyText"
    entry "MyText"
    user nil
  end
end
