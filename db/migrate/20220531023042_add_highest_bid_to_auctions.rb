class AddHighestBidToAuctions < ActiveRecord::Migration[7.0]
  def change
    add_column :auctions, :highest_bid, :integer
  end
end
