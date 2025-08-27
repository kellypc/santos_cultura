FactoryBot.define do
  factory :event do
    title { Faker::Book.title }
    description { Faker::Lorem.paragraph }
    location { [ "Teatro Municipal", "Sesc Santos", "Praia do Gonzaga" ].sample }
    start_date { Faker::Time.forward(days: 5, period: :evening) }
    end_date { start_date + 2.hours }
    source { "fake_source" }
    url { "https://example.com/evento" }
  end
end
