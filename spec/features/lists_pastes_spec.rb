require 'spec_helper'

feature 'Lists pastes' do
  let(:paste) { FactoryGirl.create(:paste) }
  before do
    visit new_paste_path
    fill_in 'Content', with: paste.content
    click_button 'Paste it!'
    visit pastes_path
  end
  subject { page }

  scenario 'shows paste on index' do
    should have_content(paste.created_at)
  end
end
