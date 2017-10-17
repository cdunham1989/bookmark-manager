feature 'submit a new link' do
  scenario 'use a form to submit a new link' do
    visit '/links/new'
    fill_in :url, with: 'www.google.com'
    fill_in :title, with: 'Google'
    click_button ('Add Bookmark')
    expect(current_path).to eq '/links'
    within 'ul#links' do
      expect(page).to have_content ('Google')
    end
  end
end
