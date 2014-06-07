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

  scenario 'User can edit and update countries' do
    visit '/'
    click_on 'Add country'
    fill_in 'Country name', with: 'Mexico'
    fill_in 'Language spoken', with: 'Spanish'
    click_on 'Create country'
    expect(page).to have_content 'Mexico'
    expect(page).to have_content 'Spanish'
    click_on 'Mexico'
    expect(page).to have_content 'Mexico'
    expect(page).to have_content 'Spanish'
    click_on 'Edit country'
    fill_in 'Country name', with: 'Brazil'
    fill_in 'Language spoken', with: 'Portuguese'
    click_on 'Update country'
    expect(page).to have_content 'Brazil'
    expect(page).to have_content 'Portuguese'
    expect(page).to have_no_content 'Mexico'
    expect(page).to have_no_content 'Spanish'
  end

  scenario 'User can delete countries' do
    visit '/'
    click_on 'Add country'
    fill_in 'Country name', with: 'Mexico'
    fill_in 'Language spoken', with: 'Spanish'
    click_on 'Create country'
    expect(page).to have_content 'Mexico'
    expect(page).to have_content 'Spanish'
    click_on 'Mexico'
    expect(page).to have_content 'Mexico'
    expect(page).to have_content 'Spanish'
    click_on 'Delete country'
    expect(page).to have_no_content 'Mexico'
    expect(page).to have_no_content 'Spanish'

  end
end