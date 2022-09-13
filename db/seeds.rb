puts "🌱 Seeding spices..."

# Seed your database here
note1 = Post.create(name:"Todays Agenda\n\n- Walk Dog\n- Feed fish\n- Play basketball\n- Eat a salad")

note2 = Post.create(name:"Bob from bar down the \n\n- Take out trash\n- Eat food")

note3 = Post.create(name:"Wash car")

puts "✅ Done seeding!"
# class CreateUsers < ActiveRecord::Migration[6.1]
#     def change
#       create_table :notes do |t|
#         t.string :body
#         timestamps
#       end
#     end
#   end
