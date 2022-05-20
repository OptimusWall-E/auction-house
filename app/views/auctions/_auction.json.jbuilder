json.extract! auction, :id, :ends_at, :name, :created_at, :updated_at
json.url auction_url(auction, format: :json)
