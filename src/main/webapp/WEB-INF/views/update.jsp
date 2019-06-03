<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update info</title>
</head>
<body>

<form action="update-item">
	ID: ${id} <input type="hidden" name="id" value="${id}">
	Name: <input type="text" name="name">
	Description:<input type="text" name="description">
	Quantity: <input type="number" name="quantity">
	Price: <input type="number" name="price">
	<input type="submit" value="Update">
	</form>


</body>
</html>