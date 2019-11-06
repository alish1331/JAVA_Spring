<h1>Getting Familiar with Routing</h1>
For this assignment, you are going to practice routes in Spring Boot. The goal is to master writing method level @RequestMapping annotations and @RequestMapping class level annotation

<h2>Objectives:</h2>
<p>Practice creating a Spring Boot application.</p>
<p>Practice @RestController annotation</p>
<p>Master @RequestMapping.</p>

<h2>Tasks:</h2>
<p>Create a controller named 'CodingController'. For the first 3 routes, use the @RequestMapping annotation.</p>
<p>Have an http GET request to 'http://localhost:8080/coding' display a text that says 'Hello Coding Dojo!'.</p>
<p>Have an http GET request to 'http://localhost:8080/coding/python' display a text that says 'Python/Django was awesome!'.</p>
<p>Have an http GET request to 'http://localhost:8080/coding/java' display a text that says 'Java/Spring is better!'.</p>
<p>Create another controller named 'DojoController'. For the routes below, use the @PathVariable annotation.</p>
<p>Have an http GET request to 'http://localhost:8080/dojo' display a text that says 'The dojo is awesome!'.</p>
<p>Have an http GET request to 'http://localhost:8080/burbank-dojo/' display a text that says 'Burbank Dojo is located in Southern California'.</p>
<p>Have an http GET request to 'http://localhost:8080/san-jose/' display a text that says 'SJ dojo is the headquarters'.</p>