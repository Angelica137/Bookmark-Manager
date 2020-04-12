feature 'View bookmark list' do
  scenario 'visiting the index page' do
    visit ('/') 
    expect(page).to have_content 'Bookmark manager'
  end

  scenario 'requesting to see the list of bookmars' do

    connection = PG.connect(dbname: 'bookmark_manager_test')

    # Add the test data
    connection.exec("INSERT INTO bookmarks VALUES(1, 'http://www.makersacademy.com');")
    connection.exec("INSERT INTO bookmarks VALUES(2, 'http://www.destroyallsoftware.com');")
    connection.exec("INSERT INTO bookmarks VALUES(3, 'http://www.google.com');")

    visit ('/bookmarks')
    expect(page).to have_content 'These are your bookmarks :)'

    expect(page).to have_content 'http://www.makersacademy.com'
    expect(page).to have_content 'http://www.destroyallsoftware.com'
    expect(page).to have_content 'http://www.google.com'
  end
end