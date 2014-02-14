require 'spec_helper'

feature 'Creates new paste' do
  scenario 'with valid content' do
    visit new_paste_path
    fill_in 'Content', with: 'Test'
    click_button 'Paste it!'

    expect(page).to have_content('Your paste has been added')
  end

  scenario 'with blank content' do
    visit new_paste_path
    fill_in 'Content', with: ' '
    click_button 'Paste it!'

    expect(page).to have_content('There was an error submitting your form')
  end
end
