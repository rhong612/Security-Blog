<HTML>
<head>
<%@ include file="../header.jsp" %>
<title>Add Blog</title>
</head>



<body>
<%
if (session.getAttribute("username") == null) {
	response.sendRedirect("../index.jsp");
}
%>


<div class="container">
  <h2>Blog Title:</h2>
  <h5>Max 32 characters</h5>
  <form method="post" action="actions/add_blog_action.jsp">
    <div class="form-group">
      <input type="hidden" name="token" value=<%= session.getAttribute("token") %>>
      <textarea class="form-control" name="title" rows="1" id="comment" required></textarea>
      <br>
      <label for="comment">Blog Body:</label>
      <textarea class="form-control" name="body" rows="20" id="comment" required></textarea>
      <br>
      <input type="Submit"/>
    </div>
  </form>
</div>

</body>




<%@ include file="../footer.jsp" %>
</HTML>