require 'bookmark'

describe Bookmark do
  describe '#self.all' do
    it 'returns a list of bookmarks' do
      bookmark = Bookmark.all
      expect(bookmark).to be_a(Array)
    end
  end
end
