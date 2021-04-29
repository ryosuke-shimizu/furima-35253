FactoryBot.define do
  factory :user do
    nickname              { Faker::Name.initials }
    email                 { Faker::Internet.free_email }
    password              { '1a' + Faker::Internet.password(min_length: 6) }
    password_confirmation { password }
    family_name           { '清水しみずシミズ' }
    first_name            { '良介りょうすけリョウスケ' }
    family_name_kana      { 'シミズ' }
    first_name_kana       { 'リョウスケ' }
    birthday              { Faker::Date.birthday }
  end
end
