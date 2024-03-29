<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>    
<!DOCTYPE html>
<html>
<head>
     <meta charset="UTF-8">
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <title>Ideas</title>
    <link href="${pageContext.request.contextPath}/resources/style.css" rel="stylesheet">
	<style>
	    .errors{
		    color: red;
		    font-size: 16px;
			}
    </style>
</head>
<body>
	<div class="container col-sm-8" style="margin-top:30px">
	<button class="btn btn-block"><a href="/ideas">Go Back</a></button>
	<h1>Create a New Idea</h1>
    	<p class="errors"><form:errors path="idea.*"/></p>
    	<form:form method="POST" action="/ideas/new" modelAttribute="idea">
        <p>
            <form:label path="ideaName">Content: </form:label>
            <form:input type="text" path="ideaName" placeholder = "An idea"/>
        </p>
         <button type="submit" class="btn btn-primary" value="Update">Create</button>
    </form:form>
    </div>
</body>
</html>