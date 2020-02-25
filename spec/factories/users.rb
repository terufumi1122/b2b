FactoryBot.define do
  factory :user do
    # Gimei参考リンク（https://github.com/willnet/gimei）
    gimei = Gimei.name

    # Faker参考リンク（https://github.com/faker-ruby/faker）
    password = Faker::Internet.password(min_length: 8, max_length: 16)

    first_name            { gimei.first.kanji }
    last_name             { gimei.last.kanji }
    email                 { Faker::Internet.email }
    password              { password }
    password_confirmation { password }
  end
end
