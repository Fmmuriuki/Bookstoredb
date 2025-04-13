# Bookstoredb

# Achievers BookstoreDB 

This is our Bookstoredb we created our database using MySQL.  
Atached tables

## What’s on our Bookstoredb

- Tables for books, authors, languages, publishers, and orders
- our user roles with different access levels
- we have created a few sample queries to test the database

## Main Tables

- book  
- author  
- book_author  
- customer  
- cust_order  
- order_line  
- address  
- country  
- shipping_method  
- order_status  

## Users we Created for bookstoredb

- `felixadmin` – full access to everything  
- `karimi` – can view, add and update infomations but cant delete anything added by admin.  
- `kip` – can only view books since he is a customer

## How to use 

1. Open MySQL in VS Code or any editor.
2. Run the `answer.mysql` file to create all tables and users.
3. Use the SELECT queries to see our tables.

## Queries for our Bookstoredb

```sql
SELECT * FROM book;
SELECT * FROM author;
SELECT * FROM shipping_method;

    

,
