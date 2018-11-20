feature "Adding a new bookmark" do
  scenario "A user can add a new bookmark to the Bookmark Manager" do
    visit ('/bookmarks/new')
    fill_in('url', with: 'www.bbc.co.uk/news')
    fill_in('title', with: 'bbc')
    click_button 'Submit'
    expect(page).to have_content('bbc')
  end
end
