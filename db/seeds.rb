# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

p1 = Post.create!(title: "Blog Post", name: "Seb Faull", body: "lorem ipsum agfgdfgsdfg adfgadfg ght h yutryrtyr rtytryertergfregetgdfgdfhgty")
p2 = Post.create!(title: "Title1", name: "Paras", body: "lorem ipsum agfgdfgsdfg adfgadfg ght h yutryrtyr rtytryertergfregetgdfgdfhgty")
p3 = Post.create!(title: "reggae", name: "Pri", body: "lorem ipsum agfgdfgsdfg adfgadfg ght h yutryrtyr rtytryertergfregetgdfgdfhgty")
p4 = Post.create!(title: "rock", name: "Brian", body: "lorem ipsum agfgdfgsdfg adfgadfg ght h yutryrtyr rtytryertergfregetgdfgdfhgty")
p5 = Post.create!(title: "pop", name: "Sophie", body: "lorem ipsum agfgdfgsdfg adfgadfg ght h yutryrtyr rtytryertergfregetgdfgdfhgty")
p6 = Post.create!(title: "grime", name: "Lucy", body: "lorem ipsum agfgdfgsdfg adfgadfg ght h yutryrtyr rtytryertergfregetgdfgdfhgty")




Comment.create!(comment: "This is a comment", post_id: p1.id)
Comment.create!(comment: "This is another comment", post_id: p1.id)
Comment.create!(comment: "This is another comment!", post_id: p2.id)
Comment.create!(comment: "This is another comment!!!!", post_id: p5.id)
Comment.create!(comment: "This is another comment!!!!!!!!", post_id: p5.id)
Comment.create!(comment: "This is another comment!!!!!!!!!!!!!!!!!", post_id: p6.id)
Comment.create!(comment: "This is another comment!!!!!!!!!!!!!!!!!!!!!!!", post_id: p6.id)



