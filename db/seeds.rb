require 'faker'

10.times do
  Restaurant.create!(
    name: Faker::Space.nebula,
    city: Faker::Address.city
  )
end
