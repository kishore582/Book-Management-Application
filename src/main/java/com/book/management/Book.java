package com.book.management;

public class Book 
{
    private int id;
    private String book;
    private String author;
    private String borrower;

    public Book(int id, String book, String author, String borrower) 
    {
        this.id = id;
        this.book = book;
        this.author = author;
        this.borrower = borrower;
    }

    public int getId() 
    {
        return id;
    }

    public String getBook() 
    {
        return book;
    }

    public String getAuthor() 
    {
        return author;
    }
    
    public String getborrower()
    {
    	return borrower;
    }

    public void setId(int id) 
    {
        this.id = id;
    }

    public void setBook(String book) 
    {
        this.book = book;
    }

    public void setAuthor(String author) 
    {
        this.author = author;
    }

    public void setborrower(String borrower) 
    {
        this.borrower = borrower;
    }
}
