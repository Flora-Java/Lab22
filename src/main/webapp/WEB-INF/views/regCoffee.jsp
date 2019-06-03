<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://stackpath.bootstrapcdn.com/bootswatch/4.3.1/sketchy/bootstrap.min.css" rel="stylesheet" integrity="sha384-N8DsABZCqc1XWbg/bAlIDk7AS/yNzT5fcKzg/TwfmTuUqZhGquVmpb5VvfmLcMzp" crossorigin="anonymous">
<title>Registration page</title>
<link rel="stylesheet" type="text/css" href="style.css">

</head>
<body>

<h1>Please fill the form to register!</h1>
	
	<form action ="/form-info" method = "POST">
   
   <input type="text" name="firstname" placeholder="First Name" required><br>
   
   <input type="text" name="lastname" placeholder="Last Name" required><br>
   
  <input type="email" name="email" placeholder="Email" required><br>
   
   <input type="tel" name="phone"placeholder="Phone number" pattern="[0-9]{3}-[0-9]{3}-[0-9]{4}"
    required><span class="note">Format: 123-456-7890</span></p>
   <input type="password" name="password" minlength="8" required>
   <span class="note">Password (8 characters minimum):</span><br>
    
   <input type= "submit" value="Register">
   
   </form>
   
</body>
</html>