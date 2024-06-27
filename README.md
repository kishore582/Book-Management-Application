*Book Management Application Documentation*

Overview:
The Book Management System is a Java-based web application designed to manage a library of books. It provides functionalities to add, edit, delete, and view books. The application uses Java Servlet technology and JSP for handling user requests and responses.

Project Structure:
The project is organized into the following directories:
- src/main/java/com/book/management/: Contains the Java source files
- src/main/webapp/: Contains the web resources such as JSP files and other static resources
- target/: Contains the compiled classes and build artifacts
- .settings/: Contains configuration files for the IDE
- build/: Contains additional build outputs

Java Classes and Methods:

1. Book.java
- Represent the Book Entity
- Contains the attributes - Bookname, Author Name and Borrower details

2. booksDAO.java
- It does the CREATE function
- It get's the input from users in the inputPage.jsp
- Once the entry is submitted, the data are updated in the database
- It then leads to the outputPage.jsp that shows the success message

3. bookDTO.java
- It does the READ function
- All the entries made to database are access here
- They are collected and stores in a list called "Books"
- This books initiate the class Book.java
- Each row is shared to the viewbook.jsp where they are displayed in a table

4. deleteBook.java
- It does the DELETE function
- From the viewBooks.jsp page, ID of the entry is forwarded here
- The respective ID is picked and removed from database
- Then, the deleteSavedPage.jsp is displayed, which is a success message page

5. editBook.java
- To edit the book details, the form should be pre-filled
- To enable it, the ID is forwarded and the respective book details again stored as a list, initiated with Book.java
- This list is taken to pre-fill the form in viewEditBook.jsp

6. saveEditBook.java
- It does the UPDATE function
- Once the corrected details are obtained, using the ID number, they are re-instated into database
- Once saved, editSavedPage.jsp is displayed

JSP Pages

1. inputPage.jsp
- Shows the required fields to enter data
- When submit button is clicked, it initiates booksDAO.java logic
- And the browser leads to outputPage.jsp

2. outputPage.jsp
- Shows a success message indicating the book details are added
- This shows 2 options: Add Book and View Books
- Add Book agains take to the inputPage.jsp, while View Books initate booksDAO.java
- The browser navigates to viewBooks.jsp

3. viewBooks.jsp
- Shows all the books present in the database
- Against each row, there is an edit and delete button
- Edit Button takes to the editBook.java and then to viewEditBook.jsp, with Book ID parameter being passed
- Delete Button takes to the deleteBook.java and then to deleteSavedPage.jsp which is a success message page
- Additionally, Add Book is also present here which navigates to inputPage.jsp

4. viewEditBook.jsp
- This contains pre-filled ink of book details against the Book ID passed from viewBooks.jsp
- When submit is clicked, it navigates to the editSavedPage.jsp which displays a success message

5. editSavedPage.jsp
- This is a success page, which is displayed to show a book has been successfully updated with it's details.

6. deleteSavedPage.jsp
- This is a success page, which is displayed to show a book has been successfully removed

Structure of Database:
Create a database titled "bookManagement", with the table name as "bookList";
The table "bookList" must contains following coloumns:
1. id: An integer that uniquely identifies each record. It is not null and auto-increments with each new record.
2. book: A string (VARCHAR) that stores the title of the book. It is not null.
3. author: A string (VARCHAR) that stores the author of the book. It is not null.
4. borrower: A string (VARCHAR) that stores the name of the borrower. It can be null.

Usages of Book Management Application:
1. Adding a Book
- Access the inputPage.jsp through the web browser.
- Fill in the book details and submit the form to add a new book.

2. Viewing Books
- Access the viewBooks.jsp to see a list of all books in the library.

3. Editing a Book
- Click on the edit link next to a book in viewBooks.jsp to edit the book details.
- Submit the form in viewEditBook.jsp to save the changes.

4. Deleting a Book
- Click on the delete link next to a book in viewBooks.jsp to delete the book.

Conclusion
This documentation provides an overview of the Book Management System, detailing its structure, components, and usage. The system facilitates the management of a book library with functionalities to add, edit, delete, and view books through a web interface.
