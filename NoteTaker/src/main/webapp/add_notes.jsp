<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Notes</title>
<%@include file="all_js_css.jsp"%>
</head>
<body>

	<div class="container-fluid p-0">
		<%@include file="navbar.jsp"%>
	</div>
	<div class="container">
		<br>

		<h1>Please Fill Your Note Details</h1>
		<br>

		<!-- this is add form  -->

		<form action="SaveNoteServlet" method="post">

			<div class="form-group">
				<label for="title">Note Title</label>
				<input name="title" required type="text" class="form-control" id="title" placeholder="Enter Title" />
			</div>

			<div class="form-group">
				<label for="content">Note Content</label>
				<textarea name="content" required id="content" placeholder="Type your content here" class="form-control"
				    style="height: 200px;">
				</textarea>
			</div>

			<div class="container text-center">
				<button type="submit" class="btn btn-success">Save</button>
			</div>

		</form>

	</div>


</body>
</html>