package com.book.management;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/editBook")
public class editBook extends HttpServlet 
{
	private static final long serialVersionUID = 1L;

	private static final String JDBC_URL = "jdbc:mysql://localhost:3306/bookManagement";
	private static final String JDBC_USER = "root";
	private static final String JDBC_PASSWORD = "kishore";
	   
	private static final String DISPLAY_BOOKS_SQL = "SELECT * FROM bookList WHERE id = ?;";
	  
	List<Book> books = new ArrayList<>();
	String bookIDString = null;
	int bookID;
	    	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{	   		    	
		bookIDString = request.getParameter("id");
    	//System.out.println(bookIDString);
    	bookID = Integer.parseInt(bookIDString);
    	
		try
	    {
	        Class.forName("com.mysql.cj.jdbc.Driver");
	        Connection connection = DriverManager.getConnection(JDBC_URL, JDBC_USER, JDBC_PASSWORD);
	           
	        PreparedStatement preparedStatement = connection.prepareStatement(DISPLAY_BOOKS_SQL);
	        preparedStatement.setInt(1, bookID);
	            
	        ResultSet resultSet = preparedStatement.executeQuery();
	            
	        books.clear();
	        while (resultSet.next()) 
	        {
	            int id = resultSet.getInt("id");
	            String book = resultSet.getString("book");
	            String author = resultSet.getString("author");
	            String borrower = resultSet.getString("borrower");
	            //Book books = new Book (id, book, author, borrower);
	    	  	//request.setAttribute("books", books);
	            books.add(new Book(id, book, author, borrower));
	            //System.out.println(id);
	            //System.out.println(book);
	            //System.out.println(author);
	            //System.out.println(borrower);
	        }
	    }
	    	
	 	catch (SQLException | ClassNotFoundException e) 
	    {
	        e.printStackTrace();
	    }
	    	
	  	request.setAttribute("books", books);
	    request.getRequestDispatcher("viewEditBook.jsp").forward(request, response);
	}
}
