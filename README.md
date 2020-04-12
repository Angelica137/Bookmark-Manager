### A simple bookmar manager

# User story 1.

As a user, when I want to re visit a page I have previously bookmarked

I want see a list of pages I have bookmarked

So that I can see the address of the page I am looking for

# Acceptance critera

It is done when the user visits their saved bookmarks list

# Set up the development bookmarks database

1. Connect to psql.
2. Create the database using the psql command `CREATE DATABASE bookmark_manager;`.
3. Connect to the database using the psql command `\c bookmark_manager;`.
Run the query we have saved in the file `01_create_bookmarks_table.sql`.


# Set up the test bookmarks database
1. Connect to psql.
2. Create the database using the psql command `CREATE DATABASE bookmark_manager_test;`.
3. Run the query we have saved in the file `01_create_bookmarks_table.sql`.


# User story 2

As a user who hs found a valuble page
I want to be able to save it
so that I can access it whenever I need it