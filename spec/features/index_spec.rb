feature 'visit main page' do
  scenario 'respond with text bookmarks' do
    visit('/')
    expect(page).to have_content "bookmarks"
  end
end
