<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<% 
    String id = request.getParameter("id");
	//System.out.println(id);
%>

<!DOCTYPE html>
<html>
	<head>
	    <meta charset="UTF-8">
	    <link rel="icon" href="library_favicon.ico" type="image/x-icon">
	    <title>Update Book</title>
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
	            max-width: 600px;
	            background-color: #fff;
	            padding: 20px;
	            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
	            border-radius: 8px;
	            text-align: center;
	        }
	        
	        .form-group 
	        {
	            margin-bottom: 15px;
	            text-align: left;
	        }
	        
	        .form-group label 
	        {
	            display: block;
	            margin-bottom: 5px;
	            font-weight: bold;
	        }
	        
	        .form-group input 
	        {
	            width: calc(100% - 20px);
	            padding: 8px;
	            margin: 0 auto;
	            border: 1px solid #ccc;
	            border-radius: 5px;
	        }
	        
	        .actions 
	        {
	            text-align: center;
	        }
	        
	        .actions input 
	        {
	            padding: 10px 20px;
	            background-color: #4CAF50;
	            color: white;
	            border: none;
	            border-radius: 5px;
	            cursor: pointer;
	        }
	        
	        .actions input:hover 
	        {
	            background-color: #45a049;
	        }
	    </style>
	</head>
	<body>
	    <div class="container">
	        <h2>Update Book</h2>
	        <form action="saveEditBook" method="post">
	            <c:forEach var="book" items="${books}">
	            <input type="hidden" name="id" value="<c:out value='${book.id}'/>">
	            <div class="form-group">
	                <label for="bookName">Book Name:</label>
	                <input type="text" id="bookName" name="bookName" value= "<c:out value='${book.book}'/>" required>
	            </div>
	            <div class="form-group">
	                <label for="authorName">Author Name:</label>
	                <input type="text" id="authorName" name="authorName" value="<c:out value='${book.author}'/>" required>
	            </div>
	            <div class="form-group">
	                <label for="borrower">Borrowed By:</label>
	                <input type="text" id="borrower" name="borrower" value="<c:out value='${book.borrower}'/>">
	            </div>
	            </c:forEach>
	            <div class="actions">
	                <input type="submit" value="Save Changes">
	            </div>
	        </form>
	    </div>
	</body>
</html>
