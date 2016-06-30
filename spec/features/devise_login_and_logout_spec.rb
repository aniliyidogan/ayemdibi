require 'rails_helper'

feature "Devise with" do

  scenario "success sign_up" do

    visit "/users/sign_up"

      expect(page).to have_css("h2", text: "Sign up")

      fill_in "Email", with: "deneme@deneme.com"
      fill_in "Password", with: "password"
      fill_in "Password confirmation", with: "password"

      click_button "Submit"

      expect(current_path).to eq("/")
      expect(page).to have_css("h3", text: "Welcome, Hi!")
  end

  scenario "fail sign_up" do
    visit "/users/sign_up"
    expect(page).to have_css("h2", text: "Sign up")

    fill_in "Email", with: "denemedeneme.com"
    fill_in "Password", with: "pasword"
    fill_in "Password confirmation", with: "pasword"

    click_button "Submit"

    expect(current_path).not_to eq("/")
  end
end
