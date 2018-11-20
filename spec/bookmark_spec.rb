require 'bookmark'

describe Bookmark do
  describe '.all' do
    it 'returns a list of bookmarks' do
      connection = PG.connect(dbname: 'bookmark_manager_test')

      connection.exec("INSERT INTO bookmarks (url, title) VALUES ('http://www.makersacademy.com', 'makers academy');")
      connection.exec("INSERT INTO bookmarks (url, title) VALUES('http://www.destroyallsoftware.com', 'destroy software');")
      connection.exec("INSERT INTO bookmarks (url, title) VALUES('http://www.google.com', 'google');")

      bookmarks = Bookmark.all

      expect(bookmarks).to include('makers academy')
      expect(bookmarks).to include('destroy software')
      expect(bookmarks).to include('google')
    end
  end
  describe '.create' do
    it 'creates a new bookmark' do
      Bookmark.create(url: 'http://www.testbookmark.com', title: 'test')

      expect(Bookmark.all).to include 'test'

    end
  end
end
