class CreateAuctions < ActiveRecord::Migration[7.0]
  def change
    create_table :auctions do |t|
      t.datetime :ends_at
      t.string :name

      t.timestamps
    end
  end
end
