<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
	<meta charset="UTF-8">
	<title>Dojo Survey Index</title>
	<link rel="stylesheet" href="css/style.css">
</head>

<body>
    <div>
        <div class="container">
            <div class=wrapper>
                <div class="row">
                    <div class="col-sm-5 main">
                        <h3>Submitted Info</h3>
                        <br>
                        <table class="table table-hover">
                            <tbody>
                                <tr>
                                    <div>
                                        <td><b>Name:</b>
                                            <c:out value="${name}" />
                                        </td>
                                    </div>
                                </tr>
                                <tr>
                                    <div>
                                        <td><b>Dojo Location:</b>
                                            <c:out value="${location}" />
                                        </td>
                                    </div>
                                </tr>
                                <tr>
                                    <div>
                                        <td><b>Favorite Language:</b>
                                            <c:out value="${language}" />
                                        </td>
                                    </div>
                                </tr>
                                <tr>
                                    <div>
                                        <td><b>Comment:</b>
                                            <c:out value="${comment}" />
                                        </td>
                                    </div>
                                </tr>
                            </tbody>
                        </table>
                        <a class="btn btn-primary button-margin" href="/">Go Back</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>