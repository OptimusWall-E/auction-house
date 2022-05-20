class Auction < ApplicationRecord
  validates :ends_at, :name, presence: true
end
