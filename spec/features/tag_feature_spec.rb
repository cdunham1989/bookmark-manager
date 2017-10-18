feature 'tag adding' do
  scenario 'allows us to add a tag to a link' do
    visit '/links/new'
    fill_in :title, with: 'Link Title'
    fill_in :url, with: 'www.url.com'
    fill_in :tag, with: 'new tag'

    click_button 'Add Bookmark'
    link = Link.first
    expect(link.tags.map(&:name)).to include('new tag')
  end
end
