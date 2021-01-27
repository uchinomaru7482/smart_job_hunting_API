class Company < ApplicationRecord
  enum progress: { 応募検討: 0, エントリー: 1, 一次面接: 2, 二次面接: 3, 最終面接: 4, 内定: 5, お祈り: 6 }
  belongs_to :user

  validates :user_id, presence: true
  validates :name, presence: true
end
