<HTML>
<head>
<%@ include file="../header.jsp" %>
<title>Blogs</title>
</head>



<body>
<p>Hello <%= session.getAttribute("fullname") == null ? "Guest" : session.getAttribute("fullname") %> </p>

<%

if (session.getAttribute("fullname") != null) {
%>


<form method="post" action="add_blog.jsp">
	<input type="submit" value="Add New Blog"/>
</form>
<form method="post" action="myblogs.jsp">
	<input type="submit" value="My Blogs"/>
</form>


<%
}

//Show list of blogs to read

%>



</body>




</HTML>