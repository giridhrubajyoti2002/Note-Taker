<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">


<title>Note Taker : Home page</title>
<%@include file="all_js_css.jsp"%>


</head>
<body>

	<div class="container-fluid p-0">
		<%@include file="navbar.jsp"%>
	</div>
	<div class="container">

		<br><br><br><br>
        <div class="container text-center mt-2">
            <h2 style='text-align:center;'>Note is added successfully.</h2><br>
			<a href="add_notes.jsp" class="btn btn-outline-primary"><b>Add New Note<b></a>
			<a href="all_notes.jsp" class="btn btn-outline-primary"><b>View Saved Notes</b></a>
		</div>

	</div>

</body>
</html>