# bookmark_manager

## user stories:

```
As a user
so I don't forget my favourite websites
I want to see a list of my bookmarks

As a time-pressed user
So that I can save a website
I would like to add the site's address and title to bookmark manager

```
image of domain model: https://github.com/makersacademy/course/blob/master/bookmark_manager/images/bookmark_manager_1.png

### To set up the database
 Connect to `psql` and create the `bookmark_manager` database:
 ```
CREATE DATABASE bookmark_manager;
```
 To set up the appropriate tables, connect to the database in `psql` and run the SQL scripts in the `db/migrations` folder in the given order.

### To set up the test database
Connect to `psql` and create the `bookmark_manager_test` database:
```
CREATE DATABASE bookmark_manager_test;
```
To set up the appropriate tables, connect to the database in `psql` and run the SQL scripts in the `db/migrations` folder in the given order.
