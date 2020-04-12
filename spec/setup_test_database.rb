require 'pg'

def setup_test_database
  p 'Settingup test database...'
  connection = PG.connect(dbname: 'bookmark_manager_test')
  p 'Clear the bookmarks table...'
  connection.exec('TRUNCATE bookmarks;')
end