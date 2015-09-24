FactoryGirl.define do
  factory :user, class: User do
    sequence(:email) { |n| "user#{n}@example.com"}
    password "password"
    first_name "first name"
    last_name "last name"
    turn_ons ['good']
    turn_offs ['bad']
    university "MyString"
    dept "MyString"
    matches [1,2,3]
    about_me "MyText"
  end

end
