<!DOCTYPE html>

<html>
	<head>
	    <meta charset="UTF-8">
	    <title>Book Management Application</title>
	    <link rel="icon" href="./library_favicon.ico">
	    <style>
	        body 
	        {
	            display: flex;
	            justify-content: center;
	            align-items: center;
	            height: 100vh;
	            margin: 0;
	            font-family: Arial, sans-serif;
	            background-color: #f7f7f7;
	        }
	
	        .container 
	        {
	            width: 50%;
	            padding: 20px;
	            border: 1px solid #ccc;
	            border-radius: 10px;
	            background-color: #fff;
	            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
	            text-align: center;
	        }
	
	        h1 
	        {
	            margin-bottom: 20px;
	            color: #333;
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
	            display: flex;
	            justify-content: center;
	            align-items: center;
	            gap: 20px;
	            margin-top: 20px;
	        }
	
	        .submit-btn, .view-btn
	        {
	            padding: 10px 20px;
	            background-color: #4CAF50;
	            color: white;
	            border: none;
	            border-radius: 5px;
	            cursor: pointer;
	            font-size: 16px;
	            font-weight:700;
	            width:150px;
	        }
	
	        .submit-btn:hover, .view-btn:hover 
	        {
	            background-color:#3e8e41;
	        }
	
	        .actions form 
	        {
	            display: inline-block;
	            margin: 0;
	        }
	    </style>
	</head>

	<body>
	    <div class="container">
	        <h1>Book Management Application</h1>
	        <form action="booksDAO" method="post">
	            <div class="form-group">
	                <label for="bookName">Book Name:</label>
	                <input type="text" id="bookName" name="bookName" required>
	            </div>
	            <div class="form-group">
	                <label for="authorName">Author Name:</label>
	                <input type="text" id="authorName" name="authorName" required>
	            </div>
	            <div class="form-group">
	                <label for="borrower">Borrowed By:</label>
	                <input type="text" id="borrower" name="borrower">
	            </div>
	            <div class="actions">
	                <input type="submit" value="Submit" class="submit-btn">
	            </div>
	        </form>
	        <form action="booksDTO" method="get">
	            <div class="actions">
	                <input type="submit" value="View Books" class="view-btn">
	            </div>
	        </form>
	    </div>
	</body>
</html>
