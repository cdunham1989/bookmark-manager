feature 'tag adding' do
  scenario 'allows us to add a tag to a link' do
    visit '/links/new'
    fill_in :title, with: 'Link Title'
    fill_in :url, with: 'www.url.com'
    fill_in :tag, with: 'tag'

    click_button 'Add Bookmark'
    link = Link.first
    expect(link.tags.map(&:name)).to include('tag')
  end

  scenario 'I can add multiple tags to a new link' do
    visit '/links/new'
    fill_in :title, with: 'Link Title'
    fill_in :url, with: 'www.url.com'
    fill_in :tag, with: 'tag1 tag2'

    click_button 'Add Bookmark'
    link=Link.first
    expect(link.tags.map(&:name)).to include('tag1', 'tag2')
  end
end
