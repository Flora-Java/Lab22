<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Lab 24 hibernate</title>

 <link href="https://stackpath.bootstrapcdn.com/bootswatch/4.3.1/sketchy/bootstrap.min.css" rel="stylesheet" integrity="sha384-N8DsABZCqc1XWbg/bAlIDk7AS/yNzT5fcKzg/TwfmTuUqZhGquVmpb5VvfmLcMzp" crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="/style.css">
<title>Cafe Maria</title>

</head>
<body>
  <h5>If you are the administrator click <a href="/admin">here</a></h5>
	<h2>Welcome to Cafe Maria!</h2>
	<h3>Register <a href="firstone">here</a></h3>
	<h1>~~~~~~~~~~~~</h1><br>
	
	   <h3> List of our Products</h3>

   <table class = "table" border="1">
   <thead>
       <tr>
         <td>ID</td>
        <td>Name</td>
        <td>Description</td>
        <td>Quantity</td>
        <td>Price</td>
        

       </tr>
   </thead>
   <tbody>
	<c:forEach items="${listOfItems}" var="i">
   <tr>
       <td>${i.id }</td>
       
        <td>${i.name }</td>
        <td>${i.description }</td>
        <td>${i.quantity }</td>
        <td>${i.price }</td>
        

   </tr>
   </c:forEach>
   </tbody>
   </table>
	
</body>
</html>