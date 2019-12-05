FactoryBot.define do
  factory :member do
    first_name { "Alpha" }
    last_name { "Omega" }
    phone { "01234566789" }
    email { "member@email.com" }
    exemption { 1 }
  end
end
