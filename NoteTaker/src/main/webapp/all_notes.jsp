
<%@page import="java.util.List"%>
<%@page import="org.hibernate.Query"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@page import="com.entities.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>All notes: Note Taker</title>
<%@include file="all_js_css.jsp"%>
</head>
<body>

	<div class="container-fluid p-0">
		<%@include file="navbar.jsp"%>
	</div>
	<div class="container">

		<br>

		<%
		    Session s = FactoryProvider.getFactory().openSession();
            Query q = s.createQuery("from Note");
        	List<Note> list = q.list();
        	if(!list.isEmpty()){
        %>
		<h2 class="container text-center">All Notes</h2>

		<div class="row">

			<div class="col-12">

				<%
				for (Note note : list) {
				%>

				<div class="card mt-3" >
					<img class="card-img-top m-4 mx-auto" style="max-width:100px;" src="img/notepad.png" alt="Card image cap">
					<div class="card-body px-5">
						<h5 class="card-title"><%= note.getTitle() %></h5>
						<p class="card-text">
						<%= note.getContent() %>
						</p>
						<p ><b class="text-primary"><%= note.getAddedDate()  %></b></p>
						<div class="container text-center mt-2">
						<a href="edit.jsp?note_id=<%= note.getId() %>" class="btn btn-success" >Update</a>
						<a href="DeleteServlet?note_id=<%= note.getId() %>" class="btn btn-danger">Delete</a>
						</div>
					</div>
				</div>


				<%
					}

				s.close();
				%>

			</div>

		</div>
		<% }
		    else{   %>
		        <br><br><br><br>
		        <h2 class=" container text-center">No Saved Notes Found !</h1>  <br>
		        <div class="container text-center">
                	<a href="add_notes.jsp" class="btn btn-primary text-center"">Add Note</a>
                </div>
		    <%    } %>

	</div>
</body>
</html>