require 'capybara/rspec'
require 'rspec/core'
require_relative '../app'

Capybara.app = App

feature "User can create a task" do
  scenario "User can visit homepage and see Welcome" do
    visit '/'

    expect(page).to have_content "Welcome"
  end
end