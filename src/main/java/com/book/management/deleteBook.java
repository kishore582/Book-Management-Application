package com.book.management;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

//import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class deleteBook
 */
@WebServlet("/deleteBook")
public class deleteBook extends HttpServlet 
{
	private static final long serialVersionUID = 1L;
	
	private static final String JDBC_URL = "jdbc:mysql://localhost:3306/bookManagement";
	private static final String JDBC_USER = "root";
	private static final String JDBC_PASSWORD = "kishore";

	private static final String DELETE_BOOKS_SQL = "DELETE FROM bookList WHERE id = ?";
	
	Connection connection = null;
    PreparedStatement preparedStatement = null;
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
    	String id = request.getParameter("id");
    	
    	try 
        {
            // Load the MySQL JDBC driver
            Class.forName("com.mysql.cj.jdbc.Driver");
            // Establish a connection to the database
            connection = DriverManager.getConnection(JDBC_URL, JDBC_USER, JDBC_PASSWORD);
            
            preparedStatement = connection.prepareStatement(DELETE_BOOKS_SQL);
            preparedStatement.setString(1, id);
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
    	
    	//RequestDispatcher rd = request.getRequestDispatcher("/booksDTO");
        //rd.forward(request, response);
    	request.getRequestDispatcher("deleteSavedPage.jsp").forward(request, response);
	}
}
