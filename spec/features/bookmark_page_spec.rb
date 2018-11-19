feature 'visit main page' do
  scenario 'respond to hello wolrd' do
    visit('/bookmarks')
    expect(page).to have_content 'www.bbc.co.uk/news'
    expect(page).to have_content 'www.facebook.com'
  end
end
