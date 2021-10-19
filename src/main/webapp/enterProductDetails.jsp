<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Enter Product Details</title>
</head>
<body>
	<h3>Enter Product Details</h3>
	<form action="add" method="post">
		Product Name: <input type="textbox" name="productName" required/> <br /> <br />
		Quantity : <input type="text" name="quantity" required /> <br /> <br />
		Unit Price : <input type="text" name="unitPrice" required /> <br />
		<br /> <input type="submit" value="Add" />
	</form>
</body>
</html>