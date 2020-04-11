feature 'View bookmark list' do
  scenario 'visiting the index page' do
    visit ('/')
    expect(page).to have_content 'Bookmark Manager'
  end

  scenario 'requesting to see the list of bookmars' do
    visit ('/bookmarks')
    expect(page).to have_content 'These are your bookmarks :)'
  end
end