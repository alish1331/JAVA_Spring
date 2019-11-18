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
    <title>Registration Page</title>
    <link href="${pageContext.request.contextPath}/resources/style.css" rel="stylesheet">
    <style>
	    .errors{
	            color: red;
	            font-size: 16px;
	        }
    </style>

</head>

<body>
    <h2 class="title">Register!</h2>

<div class="col-md-4 col-md-offset-4" id="login">
    <section id="inner-wrapper" class="login">
        <article>
            <p>
                <form:errors path="user.*" />
            </p>
            <form:form method="post" action="/registration" modelAttribute="user">
                <div class="form-group">
                    <!-- <div class="input-group">
											<span class="input-group-addon"><i class="fa fa-user"> </i></span>
											<input type="text" class="form-control" placeholder="Name">
										</div> -->
                </div>
                <div class="form-group">
                    <div class="input-group">
                        <span class="input-group-addon"><i class="fa fa-envelope"> </i></span>
                        <%-- <form:label path="email">Email:</form:label> --%>
                        <form:input type="email" path="email" class="form-control" placeholder="Email Address" />
                        <!-- <input type="email" class="form-control" placeholder="Email Address"> -->
                    </div>
                </div>
                <div class="form-group">
                    <div class="input-group">
                        <span class="input-group-addon"><i class="fa fa-key"> </i></span>
                        <%-- <form:label path="password">Password:</form:label> --%>
                        <form:password path="password" class="form-control" placeholder="Password" />
                        <!-- <input type="password" class="form-control" placeholder="Password"> -->
                    </div>
                </div>
                <div class="form-group">
                    <div class="input-group">
                        <span class="input-group-addon"><i class="fa fa-key"> </i></span>
                        <%-- <form:label path="passwordConfirmation">Password Confirmation:</form:label> --%>
                        <form:password path="passwordConfirmation" class="form-control"
                            placeholder="Confirm Password" />
                        <!-- <input type="password" class="form-control" placeholder="Confirm Password"> -->
                    </div>
                </div>
                <button type="submit" class="btn btn-success btn-block">Register</button>
                </form:form>
        </article>
    </section>
</div>

</body>

</html>