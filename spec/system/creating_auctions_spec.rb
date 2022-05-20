require 'rails_helper'

RSpec.describe 'Creating auctions' do
  it 'requires authentication' do
    visit '/auctions/new'
    expect(page).to have_text I18n.t('devise.failure.unauthenticated')
  end

  context 'as an authenticated user' do
    let(:user) { create :user }
    before { sign_in user }

    it 'works' do
      auction_name = FFaker::Product.product
      visit '/auctions/new'
      fill_in 'Name', with: auction_name
      fill_in 'Ends at', with: 1.day.from_now
      click_button 'Create Auction'
      expect(page).to have_text 'Auction was successfully created'
      expect(page).to have_text auction_name
    end
  end

end
