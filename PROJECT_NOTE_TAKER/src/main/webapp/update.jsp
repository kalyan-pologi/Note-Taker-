<%@page import="com.entities.Note"%>
<%@page import="org.hibernate.Session"%>
<%@page import="com.helper.FactoryProvider"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>update</title>
<%@include file="all_js_css.jsp"%>
</head>
<body>
	<div class="container-fluid p-0 m-0">
		<%@include file="navbar.jsp"%>
		<h1>This is edit page</h1>
		<%
			int noteId = Integer.parseInt(request.getParameter("note_id").trim());
			Session s = FactoryProvider.getFactory().openSession();
			Note note = (Note) s.get(Note.class, noteId);

			/* response.sendRedirect("read_all_notes.jsp"); */
		%>
		<form action="UpdateServlet" method="post">
         <input value="<%= note.getId() %>" name="noteId" type="hidden"/>
			<div class="form-group">
				<label for="title" class="form-label">Note Title</label> <input
					required name="title" type="text" class="form-control" id="title"
					aria-describedby="emailHelp" placeholder="Enter your title here" 
					value="<%= note.getTitle()%>" />
			</div>

			<div class="form-group">
				<label for="content" class="form-label">Note Content</label>
				<textarea required name="content" id="content" class="form-control"
					placeholder="Enter your content here" style="height: 300px;">
					<%= note.getContent()%></textarea>
			</div>

			<div class="container text-center">
				<button type="submit" class="btn btn-success">Save</button>
			</div>

		</form>
	</div>
</body>
</html>