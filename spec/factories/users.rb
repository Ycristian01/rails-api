FactoryBot.define do
  factory :user do
    sequence(:login) { |n| "cdyepes #{n}" }
    name { "Cristian Yepes" }
    url { "http://localhost:3000/" }
    avatar_url { "http://localhost:3000/avatar" }
    provider { "github" }
  end
end
