require 'spec_helper'

feature 'Creates new paste' do
  let(:paste) { FactoryGirl.create(:paste) }
  let(:blank_content) { " " }
  before { visit new_paste_path }
  subject { page }

  scenario 'with valid content' do
    fill_in 'Content', with: paste.content
    click_button 'Paste it!'

    should have_content('Your paste has been added')
  end

  scenario 'with blank content' do
    fill_in 'Content', with: blank_content
    click_button 'Paste it!'

    should have_content('There was an error submitting your form')
  end
end
