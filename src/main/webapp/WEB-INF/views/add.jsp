<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Adding an item</title>
 <link href="https://stackpath.bootstrapcdn.com/bootswatch/4.3.1/sketchy/bootstrap.min.css" rel="stylesheet" integrity="sha384-N8DsABZCqc1XWbg/bAlIDk7AS/yNzT5fcKzg/TwfmTuUqZhGquVmpb5VvfmLcMzp" crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="/style.css">

</head>
<body>

<h1>Add an Item</h1>

            <form action="add-item">
                Name:<input type="text" name="name"> 
				Description:<input type="text" name="description">
				Quantity: <input type="number" name="quantity">
				Price: <input type="text" name="price">
				<input type="submit" value="Add">
            </form>


</body>
</html>