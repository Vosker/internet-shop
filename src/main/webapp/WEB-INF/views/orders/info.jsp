<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Order</title>
</head>
<body>
<h1>Order ${order.id}</h1>
<table border="1">
    <tr>
        <th>№</th>
        <th>Name</th>
        <th>Price</th>
    </tr>
    <c:set var="index" value="0" />
    <c:forEach var="product" items="${order.products}">
        <tr>
            <td>
                <c:out value="${index = index + 1}"/>
            </td>
            <td>
                <c:out value="${product.name}"/>
            </td>
            <td>
                <c:out value="${product.price}"/>
            </td>
        </tr>
    </c:forEach>
</table>
<br/>
<a href="${pageContext.request.contextPath}/">To the main page</a>
<br/>
</body>
</html>
