<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://stackpath.bootstrapcdn.com/bootswatch/4.3.1/sketchy/bootstrap.min.css"
 rel="stylesheet"
  integrity="sha384-N8DsABZCqc1XWbg/bAlIDk7AS/yNzT5fcKzg/TwfmTuUqZhGquVmpb5VvfmLcMzp" 
  crossorigin="anonymous">
<title>Registration page</title>
</head>
<body>

<h1>Please fill the form to register!</h1>
	
	<form action ="/form-info" method = "POST">
   First Name: <input type="text" name="first" required><br>
   Last Name: <input type="text" name="last" required><br>
   Email: <input type="email" name="email" required><br>
   Phone number: <input type="tel" name="phone"pattern="[0-9]{3}-[0-9]{3}-[0-9]{4}"
       required><span class="note">Format: 123-456-7890</span><br>
   Password: <input type="password" name="passwrd" minlength="8" required>
   <span class="note">Password (8 characters minimum):</span><br>
    
   <input type= "submit" value="Register">
   
   </form>
   
</body>
</html>