feature 'Create new bookmark' do
  scenario 'the user can sibmit a new bookmark via a form' do
    visit ('/bookmarks/new')
    fill_in('url', with: 'http://testbookmark.com')
    click_button('Submit')

    expect(page).to have_content 'http://testbookmark.com'
  end
end