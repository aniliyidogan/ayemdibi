require 'rails_helper'

feature "Welcome Page" do

  scenario 'visit' do
    visit '/'
    expect(page).to have_title "Ayemdibi"
  end

end
