require 'spec_helper'

feature 'Manage Countries' do
  scenario 'User can create and view list of countries' do
    visit '/'
    expect(page).to have_content 'Welcome'
    click_on 'Add country'
    fill_in 'Country name', with: 'Mexico'
    fill_in 'Language spoken', with: 'Spanish'
    click_on 'Create country'
    expect(page).to have_content 'Mexico'
    expect(page).to have_content 'Spanish'
  end
end