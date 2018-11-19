feature '/bookmarks' do
  scenario 'responds with bookmarks' do
    visit('/bookmarks')
    expect(page).to have_content 'www.bbc.co.uk/news'
    expect(page).to have_content 'www.wikipedia.org'
  end
end
