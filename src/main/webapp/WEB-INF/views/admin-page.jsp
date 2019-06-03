<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <link href="https://stackpath.bootstrapcdn.com/bootswatch/4.3.1/sketchy/bootstrap.min.css" rel="stylesheet" integrity="sha384-N8DsABZCqc1XWbg/bAlIDk7AS/yNzT5fcKzg/TwfmTuUqZhGquVmpb5VvfmLcMzp" crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="/style.css">

<title>administration</title>
</head>
<body>
<!--    <form action="/admin">
   <input type= "submit" value="">
   </form> -->

	<div class="container">

   <h3>List of products</h3> 
   <table class = "table" border="1">
   <thead>
   
   
       <tr>
         <td>ID</td>
        <td>Name</td>
        <td>Description</td>
        <td>Quantity</td>
        <td>Price</td>
        <td>Edit</td>
        <td>Delete</td>
 

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
		<td><a href="update-form?id=${i.id }">Update</a></td>
        <td><a href="delete?id=${i.id }"onclick="return confirm('Do you really want to delete this?');">Delete</a></td>
        

   </tr>
   </c:forEach>
   </tbody>
   </table>
   </div>
   
   <h3>To add an Item click <a href="add">here</a></h3>
  
  <!--  <script>
   
   </script> -->
</body>
</html>