require 'rails_helper'

RSpec.feature 'Navbar', type: :feature do
  scenario 'User sees the navbar on the home page' do
    visit root_path
    expect(page).to have_css('nav.navbar')
  end
end
