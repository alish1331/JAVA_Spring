<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Books</title>
</head>
<body>   
<h1>All Books</h1>
<table>
    <thead>
        <tr>
        	<th>ID</th>
            <th>Title</th>
            <th>Description</th>
            <th>Language</th>
            <th>Number of Pages</th>
        </tr>
    </thead>
    <tbody>
        <c:forEach items="${books}" var="book">

        <tr>
        	<td><a href="/books/<c:out value="show/${book.id}"/>"><c:out value="${book.id}"/></a>
            <td><c:out value="${book.title}"/></td>
            <td><c:out value="${book.description}"/></td>
            <td><c:out value="${book.language}"/></td>
            <td><c:out value="${book.numberOfPages}"/></td>
        </tr>
        </c:forEach>
    </tbody>
</table>
<br>
<a href="/books/new"><button>Add New Book</button></a>
</body>
</html>