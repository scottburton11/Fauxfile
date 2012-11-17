Fabricator :post do
  title { Faker::Lorem.sentence }
  body  { Faker::Lorem.paragraphs(1..6).join("\n\n") }
  author
end