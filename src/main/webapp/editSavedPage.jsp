<!DOCTYPE html>
<html lang="en">
	<head>
	    <meta charset="UTF-8">
	    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	    <title>Success</title>
	    <link rel="icon" href="library_favicon.ico" type="image/x-icon">
	    <style>
	        body 
	        {
	            display: flex;
	            justify-content: center;
	            align-items: center;
	            height: 100vh;
	            margin: 0;
	            background-color: #f5f5f5;
	        }
	        
	        .container 
	        {
	            background-color: #ffffff;
	            padding: 20px;
	            border: 1px solid #cccccc;
	            border-radius: 10px;
	            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
	            text-align: center;
	        }
	        
	        h1 
	        {
	            color: #4CAF50;
	        }
	        
	     
	       	.view-btn, .add-btn
	       {
	            margin-top: 20px;
	            padding: 10px 20px;
	            background-color: #4CAF50;
	            color: white;
	            text-decoration: none;
	            border-radius: 5px;
	            cursor: pointer;
	            border-radius: 8x;
	            border:none;
	            font-family: "Times New Roman";
	            font-size:16px;
	       	}
	       	
	        .add-btn:hover,.view-btn:hover 
	        {
	            background-color: #3e8e41;
	        }
	    </style>
	</head>
	
	<body>
	    <div class="container">
	        <h1>Success!</h1>
	        <p>The information has been updated!</p>
	        <a href="inputPage.jsp" class="add-btn">Add Another Book</a>
			<button type="button" onclick="location.href='booksDTO'" class="view-btn">View All Books</button>	    
		</div>
	</body>
</html>
