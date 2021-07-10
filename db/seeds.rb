User.create!(email: 'admin@example.com', password: 'adminer', password_confirmation: 'adminer')
30.times do
    Course.create!([{ 
        title: Faker::Educator.course_name,
        description: Faker::TvShows::GameOfThrones.quote,
        user_id: User.first.id
}])
end
