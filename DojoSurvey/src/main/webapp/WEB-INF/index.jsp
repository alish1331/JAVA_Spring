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
    <div class="container" style="margin-top:30px">
             <div class="row">
                 <div class="col-sm-5 main">
		        <form action="/result" method="POST">
			        <div class="form-group padding">
                        <label for="name">Your Name:</label>
                        <input type="text" class="form-control" placeholder="Name here" name="name">
                   	</div>
                   	
                   	<div class="form-group">
                        <label for="location">Dojo Location:  <select name="location"></label>
	                        <option value="San Jose">San Jose</option>
				            <option value="Berkley">Berkley</option>
				            <option value="Austin">Austin</option>
				            <option value="Washington">Washington</option>
			            </select>
                   	</div>
                   	
                   	<div class="form-group">
                        <label for="language">Favorite Language:  <select name="language"></label>
	                        <option value="Python">Python</option>
				            <option value="Java">Java</option>
				            <option value="C#">C#</option>
				            <option value="Ruby">Ruby</option>
				        </select>
                   	</div>
                   	
                   	<div class="form-group">
                        <label for="comment">Comment (optional)</label>
                   	</div>
                   	<div class="form-group"> 
	                        <textarea name="comment" rows="5" cols="40" placeholder="We appreciate your comments"></textarea>
                   	</div> 
		        	<button class="btn btn-primary" type="submit">Button</button>
		        </form>
		    </div>
		 </div>
      </div>
</body>
</html>