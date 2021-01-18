class Company < ApplicationRecord
  enum progress: { consideration: 0, entry: 1, primary_interview: 2, second_interview: 3, final_interview: 4, unofficial_offer: 5, prayer: 6 }
  belongs_to :user
end
