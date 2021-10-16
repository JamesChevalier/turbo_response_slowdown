# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

1_500.times do
  post = Post.create(title: SecureRandom.hex(20))
  now = Time.now
  comments_to_create = rand(1..100).times.map {
    { body: SecureRandom.hex(20), post_id: post.id, created_at: now, updated_at: now }
  }

  Comment.insert_all(comments_to_create)
end
