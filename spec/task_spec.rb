require 'capybara/rspec'
require 'rspec/core'
require_relative '../app'

Capybara.app = App

feature "User can create a task" do
  scenario "User can visit homepage and see Welcome" do
    visit '/'

    expect(page).to have_content "Welcome"

    click_on "Add a Task"
    fill_in "new_task", with: "laundry"
    click_on "Create Task"

    expect(page).to have_content "laundry"
  end
end