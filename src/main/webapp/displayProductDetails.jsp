<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Display Product Details</title>
</head>
<body>
<h3>Product Details</h3>
<br/>
	Product Name:
	<c:out value="${sessionScope.productDetails.productName}" />
	<br /> <br /> Quantity:
	<c:out value="${sessionScope.productDetails.quantity}" />
	<br /> <br /> Unit Price:
	<c:out value="${sessionScope.productDetails.unitPrice}" />
	<br />

</body>
</html>
