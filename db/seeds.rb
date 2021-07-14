User.create!(email: 'admin@example.com', password: 'adminer', password_confirmation: 'adminer')
30.times do
    Course.create!([{ 
        title: Faker::Educator.course_name,
        description: Faker::Lorem.paragraph(sentence_count: 3),
        user_id: User.first.id,
        short_description: Faker::Lorem.paragraph(sentence_count: 1),
        language: Faker::ProgrammingLanguage.name,
        level: 'Beginner',
        price: Faker::Number.between(from: 1000, to: 2000)
}])
end
