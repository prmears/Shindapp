<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<html>
<a href="<c:url value="/"/>">Home</a>
<head>
<style>
div.background {
	background:
		url(http://s3.amazonaws.com/spoonuniversi-wpengine/spoonuniversi/wp-content/uploads/sites/184/2016/04/label-reading-food-allergens.jpg)
		repeat;
	border: 2px solid black;
}

div.transbox {
	margin: 30px;
	background-color: #ffffff;
	border: 1px solid black;
	opacity: 0.5;
	filter: alpha(opacity = 60); /* For IE8 and earlier */
}

div.transbox p {
	margin: 5%;
	font-weight: bold;
	color: #000000;
}
body {
  color: Black;
}
table, td, th {
	border: 1px solid #ddd;
	text-align: left;
}

table {
	border-collapse: collapse;
	width: 85%;
}

th, td {
	padding: 15px;
}

</style>
</head>
<body>

	<div class="background">
		<div class="transbox">
			<p>
				<label for='name'>First Name*: </label> <input type="text"
					name="firstName" value="${signup.firstName}" /> <label for='name'>Last
					Name*:</label> <input type="text" name="lastName"
					value="${signup.lastName}" /> <label for='phonenumber'>Phone
					Number*:</label> <input type="text" name="phoneNumber"
					value="${signup.phoneNumber}" /> <label for='dish'>Dish
					name*:</label> <input type="text" name="dishName"
					value="${signup.dishName}" /> <input type='submit' name='Submit'
					value='Submit' />
			</p>
		</div>
	</div>
<form method="post"
		action="<c:url value="/sign-up/${signup.id}/delete"/>">
		<button type="submit">Delete</button>
	</form>

	<table>

		<tr>
			<th>First Name</th>
			<th>Last Name</th>
			<th>Phone Number</th>
			<th>Dish Name</th>

		</tr>

		<c:forEach var="user" items="${list}">

			<tr>
				<td><c:out value="${ user.firstName }" /></td>
				<td><c:out value="${ user.lastName }" /></td>
				<td><c:out value="${ user.phoneNumber }" /></td>
				<td><a href="<c:url value="/item-info?id=${user.id}"/>"><c:out
							value="${ user.dishName }" /></a></td>
			</tr>
			<tr>
		</c:forEach>
		</tr>

	</table>
</body>

</body>
</html>
	

<!--   <table>
<c:forEach var="user" items="${list}" >
		<tr>
			<td><a href="<c:url value="/sign-up/${user.id}"/>"><c:out value="${ user.firstName }"/></a></td>
			<td><c:out value="${ user.lastName }"/> </td>
			<td><c:out value="${ user.phoneNumber }"/> </td>
			<td><c:out value="${ user.dishName }"/> </td>
		</tr>
	</c:forEach>
	</table> 
	<body background="http://vignette2.wikia.nocookie.net/harrypotter/images/c/c6/B1-background.jpg/revision/latest?cb=20111017204834">
	
	background="http://www.blog.drvikram.com/wp-content/uploads/2015/07/natural-remedies-for-allergy.jpg">
	<link href="<c:url value="/resources/sign-up.css"/>" rel="stylesheet"/>
	 -->