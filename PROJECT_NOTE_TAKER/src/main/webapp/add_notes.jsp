<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Notes</title>
<%@include file="all_js_css.jsp"%>
</head>
<body>
	<div class="container-fluid p-0 m-0">
		<%@include file="navbar.jsp"%>
		<br>
		<h1>Please fill your note details</h1>

		<!-- this is add form -->
		<form action="SaveNoteServlet" method="post">
		
			<div class="form-group">
				<label for="title" class="form-label">Note Title</label>
				 <input required
				  name="title"
				  type="text" 
				  class="form-control"
				  id="title" 
				  aria-describedby="emailHelp"
				  placeholder="Enter your title here"/>
			</div>
			
			<div class="form-group">
				<label for="content" class="form-label">Note Content</label>
				<textarea required
				name="content"
				id="content"
				class="form-control"
				placeholder="Enter your content here"
				style="height:300px;"
				 ></textarea>
			</div>
			
			<div class="container text-center">
			<button type="submit" class="btn btn-primary">Add</button>
			</div>
			
		</form>
	</div>


</body>
</html>