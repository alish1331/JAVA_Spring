<h1>Assignment: Great Ideas</h1>
Create a platform where you can create, read, update and destroy ideas.

<h2>Tasks:</h2>
⬩ Login and Registration with Spring Security or BCrypt.
⬩ Display all the ideas with their content and creator
⬩ Able to create a new idea
⬩ Able to display the content of a specific idea
⬩ Able to show the edit page of a specific idea
⬩ Able to update a specific idea
⬩ Able to delete a specific idea
⬩ Routing
⬩ Follow the ReSTful convention.
⬩ Validations
⬩ Add the correct validations for registration and login.
⬩ Add the correct validations for the idea on create and update.

<h2>Extra tasks:</h2>
⬩ Deployed on Amazon EC2
<h3>At least 2 of the following features:</h3>
⬩Get the count of likes for each idea. Also, toggle the action column between “Like” and “Unlike”. Once a user clicks “like”, the count of likes on that idea should go up and “like” becomes “unlike”. Once a user clicks “unlike”, the count of likes on that idea should go down and “unlike” becomes “like”.
⬩Create two anchor tags to sort the ideas according to the like count. One should sort the ideas from highest # of likes to lowest # of likes (descending). The other should sort the ideas from lowest # of likes to the highest # of likes (ascending).
⬩Display the names of the users that have liked a particular idea.
⬩Only the creator of a specific idea has access to the edit page and update action. If any other user attempts to access this page by typing the URL directly (i.e. “/ideas/2/edit”), redirect them to the “/ideas” route. Also, only the creator of a specific idea can delete it.
