require 'pg'

feature 'Viewing bookmarks' do
  scenario 'A user can see bookmarks' do
    connection = PG.connect(dbname: 'bookmark_manager_test')

    Bookmark.create(url:'http://www.makersacademy.com', title: 'makers academy')
    Bookmark.create(url:'http://www.destroyallsoftware.com', title: 'destroy software')
    Bookmark.create(url:'http://www.google.com', title: 'google')
    visit('/bookmarks')
    expect(page).to have_content "makers academy"
    expect(page).to have_content "destroy software"
    expect(page).to have_content "google"
  end
end
