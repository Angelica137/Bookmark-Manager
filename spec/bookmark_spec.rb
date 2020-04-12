require 'bookmark'

describe Bookmark do
  describe '.all' do
    it 'returns all bookmarks' do
      bookmarks = Bookmarks.all

      expect(page).to have_content 'http://www.makersacademy.com'
      expect(page).to have_content 'http://www.destroyallsoftware.com'
      expect(page).to have_content 'http://www.google.com'
    end
  end
end