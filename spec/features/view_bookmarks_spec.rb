feature 'View bookmark list' do
  scenario 'a user sees their bookmarks when visiting the bookmark list' do
    visit ('/')
    expect(page).to have_content "Bookmark Manager"
  end
end