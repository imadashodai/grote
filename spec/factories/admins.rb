FactoryBot.define do
  factory :admin, class: Admin do
    name 'test_admin'
    password 'test'
    password_confirmation 'test'
  end
end
