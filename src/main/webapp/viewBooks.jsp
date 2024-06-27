<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
	<head>
	    <meta charset="UTF-8">
	    <title>View Books</title>
	    <link rel="icon" href="library_favicon.ico" type="image/x-icon">
	    <style>
	        body 
	        {
	            font-family: Arial, sans-serif;
	            background-color: #f7f7f7;
	            margin: 0;
	            padding: 0;
	            display: flex;
	            justify-content: center;
	            align-items: center;
	            min-height: 100vh;
	        }
	
	        .container 
	        {
	            width: 90%;
	            max-width: 1200px;
	            background-color: #fff;
	            padding: 20px;
	            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
	            border-radius: 8px;
	            text-align: left;
	            overflow-x: auto;
	        }
	
	        h2 
	        {
	            color: #333;
	            margin-bottom: 20px;
	        }
	
	        table 
	        {
	            width: 100%;
	            border-collapse: collapse;
	            margin-bottom: 20px;
	            table-layout: fixed;
	        }
	
	        table, th, td 
	        {
	            border: 1px solid #ddd;
	        }
	
	        th, td 
	        {
	            padding: 12px;
	            text-align: centre;
	        }
	
	        th 
	        {
	            background-color: #f2f2f2;
	        }
	        
	        th.id-col, td.id-col 
	        {
            	width: 5%;
        	}
	
	        tr:nth-child (even) 
	        {
	            background-color: #f9f9f9;
	        }
	
	        tr:hover 
	        {
	            background-color: #f1f1f1;
	        }
	
	        button
	        {
	            display: inline-block;
	            padding: 10px 20px;
	            text-decoration: none;
	            background-color: #4CAF50;
	            color: white;
	            border-radius: 5px;
	            margin-top: 10px;
	        }
	
	        button:hover 
	        {
	            background-color: #45a049;
	        }
	        
	        .btn-td
	        {
	        	display:flex;
	        	
	        	gap:20px;
	        }
	        .edit-btn
	        {
		        padding: 4px 16px;
			    border-radius: 8px;
			    background-color: #0086b3;
			    color: #fff;
			    font-weight: 700;
			    border: none;
			    width: 80px;
			    border:1px solid #0086b3;
			    transition: all 0.3s;
			    cursor: pointer;
  			}
  			
  			.edit-btn:hover
  			{
	  			background-color: #fff;
	  			color:#000;
	  			border:1px solid #0086b3;
  			}
  			
  			.delete-btn
  			{
  				padding: 4px 16px;
			    border-radius: 8px;
			    background-color: #b32d00;
			    color: #fff;
			    font-weight: 700;
			    border: none;
			    width: 80px;
			    border:1px solid $b32800;
			    transition: all 0.3s;
			    cursor: pointer;
  			}
  			
  			.delete-btn:hover
  			{
  				background-color: #fff;
  				color: #000;
  				border: 1px solid #b32d00;
  			}
  			
  			.add-btn
  			{
  				padding: 10px 20px;
	            background-color: #4CAF50;
	            color: white;
	            border: none;
	            border-radius: 5px;
	            cursor: pointer;
	            font-size: 16px;
	            text-decoration: none;
	            font-weight:700;
  			}
  			
  			.add-btn:hover
  			{
  				background-color:#3e8e41;
  			}
	    </style>
	</head>
	
	<body>
	    <div class="container">
	        <h2>Book List</h2>
	        <table>
	            <tr>
	                <th class="id-col">ID</th>
	                <th>Book Name</th>
	                <th>Author Name</th>
	                <th>Borrowed By</th>
	                <th>Updates</th>
	            </tr>
	            <c:forEach var="book" items="${books}">
	                <tr>
	                    <td class="id-col"><c:out value="${book.id}" /></td>
	                    <td><c:out value="${book.book}" /></td>
	                    <td><c:out value="${book.author}" /></td>
	                    <td><c:out value="${book.borrower}" /></td>
	                    <td class= "btn-td">
	                    	<form id="editForm" action="editBook" method="get">
							    <input type="hidden" name="id" value="${book.id}">
							    <input type="submit" value="Edit" class="edit-btn">
							</form>
							<form id="deleteForm" action="deleteBook" method="post">
							    <input type="hidden" name="id" value="${book.id}">
							    <input type="submit" value="Delete" class="delete-btn">
							</form>
	                    </td>
	                </tr>
	            </c:forEach>
	        </table>
	        <a class="button add-btn" href="inputPage.jsp">Add a New Book</a>
	    </div>
	</body>
</html>
