package com.book.management;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

@WebServlet("/booksDAO")
public class booksDAO extends HttpServlet 
{
	private static final long serialVersionUID = 1L;
	
	private static final String JDBC_URL = "jdbc:mysql://localhost:3306/bookManagement";
	private static final String JDBC_USER = "root";
	private static final String JDBC_PASSWORD = "root";

	private static final String INSERT_BOOKS_SQL = "INSERT INTO bookList (book, author, borrower) VALUES (?, ?, ?);";
	
	Connection connection = null;
    PreparedStatement preparedStatement = null;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		String bookName = request.getParameter("bookName");
        String authorName = request.getParameter("authorName");
        String borrower = request.getParameter("borrower");		
        
        try 
        {
            // Load the MySQL JDBC driver
            Class.forName("com.mysql.cj.jdbc.Driver");
            // Establish a connection to the database
            connection = DriverManager.getConnection(JDBC_URL, JDBC_USER, JDBC_PASSWORD);
            
            // Create a PreparedStatement to execute the SQL query
            preparedStatement = connection.prepareStatement(INSERT_BOOKS_SQL);
            preparedStatement.setString(1, bookName);
            preparedStatement.setString(2, authorName);
            preparedStatement.setString(3, borrower);
            preparedStatement.executeUpdate();

        } 
        catch (ClassNotFoundException e) 
        {
            e.printStackTrace();
        } 
        catch (SQLException e) 
        {
            e.printStackTrace();
        } 
        finally 
        {
            // Close the PreparedStatement and Connection to release resources
            if (preparedStatement != null) 
            {
                try 
                {
                    preparedStatement.close();
                }
                catch (SQLException e) 
                {
                    e.printStackTrace();
                }
            }
            if (connection != null) 
            {
                try 
                {
                    connection.close();
                } 
                catch (SQLException e) 
                {
                    e.printStackTrace();
                }
            }
        }
        
        // Redirect to the output page
        response.sendRedirect("outputPage.jsp");
    }
}
