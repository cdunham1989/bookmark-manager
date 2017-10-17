feature 'visiting frequently used websites' do
  scenario 'viewing a list of links on the homepage' do
    Link.create(url: 'http://www.bookmark-manager.com', title: 'Bookmark Manager')
    visit '/links'
    expect(page.status_code).to eq 200

    within'ul#links' do
      expect(page).to have_content 'Bookmark Manager'
    end
  end
end
