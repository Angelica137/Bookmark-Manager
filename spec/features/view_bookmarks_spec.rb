feature 'View bookmark list' do
  scenario 'visiting the index page' do
    visit ('/')
    expect(page).to have_content 'Bookmark manager'
  end

  scenario 'requesting to see the list of bookmars' do
    visit ('/bookmarks')
    expect(page).to have_content 'These are your bookmarks :)'

    expect(page).to have_content 'http://www.makersacademy.com'
    expect(page).to have_content 'http://www.destroyallsoftware.com'
    expect(page).to have_content 'http://www.google.com'
  end
end