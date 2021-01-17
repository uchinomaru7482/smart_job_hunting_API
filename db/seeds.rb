User.create!(name: "kazuto", email: "kazuto@example.com", password: "aaaaaaaa", password_confirmation: "aaaaaaaa")
User.create!(name: "yumi", email: "yumi@example.com", password: "aaaaaaaa", password_confirmation: "aaaaaaaa")

Company.create!(user_id: 1, name: "HOGE株式会社", progress: 0, motivation: "給料が良いからです")
Company.create!(user_id: 1, name: "HUGA株式会社", progress: 0, motivation: "残業が無いからです")
Company.create!(user_id: 2, name: "PIYO株式会社", progress: 0, motivation: "風通しが良いからです")
