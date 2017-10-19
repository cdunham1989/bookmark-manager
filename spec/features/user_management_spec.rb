require 'web_helper'

feature 'User create account' do
  scenario 'New users can sign up for the site' do
    expect { sign_up }.to change(User, :count).by(1)
    expect(page).to have_content('Welcome, sample@example.com')
    expect(User.first.email).to eq('sample@example.com')
  end
end
