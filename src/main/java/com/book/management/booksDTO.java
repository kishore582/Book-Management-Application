package com.book.management;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/booksDTO")
public class booksDTO extends HttpServlet 
{
    private static final long serialVersionUID = 1L;

    private static final String JDBC_URL = "jdbc:mysql://localhost:3306/bookManagement";
    private static final String JDBC_USER = "root";
    private static final String JDBC_PASSWORD = "kishore";
    
    private static final String VIEW_BOOKS_SQL = "SELECT * FROM bookList;";
    
    List<Book> books = new ArrayList<>();

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
    {
        try
        {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection connection = DriverManager.getConnection(JDBC_URL, JDBC_USER, JDBC_PASSWORD);
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(VIEW_BOOKS_SQL);
            
            books.clear();
            while (resultSet.next()) 
            {
                int id = resultSet.getInt("id");
                String book = resultSet.getString("book");
                String author = resultSet.getString("author");
                String borrower = resultSet.getString("borrower");
                books.add(new Book(id, book, author, borrower));
            }
        } 
        
        catch (SQLException | ClassNotFoundException e) 
        {
            e.printStackTrace();
        }

        request.setAttribute("books", books);
        request.getRequestDispatcher("viewBooks.jsp").forward(request, response);
    }
}
