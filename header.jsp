

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<!--Navigation Bar-->
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="/index.jsp">CS 166 Security Blog</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li><a href="/index.jsp">Home</a></li>
        <li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" href="#">Blog List<span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="#">Page 1</a></li>
          </ul>
        </li>
        <li><a href="#">Link here</a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
          <%
          if (session.getAttribute("username") != null) {
            out.print("<li id='logoutButton'><a href='/account/actions/logout_action.jsp'><span class='glyphicon glyphicon-log-out'></span> Logout</a></li>");
          }
          else {
            out.print("<li><a href='/account/registration.jsp''><span class='glyphicon glyphicon-user'></span> Sign Up</a></li>");
            out.print("<li><a href='/account/login.jsp''><span class='glyphicon glyphicon-log-in'></span> Login</a></li>");
          }
          %>
      </ul>
    </div>
  </div>
</nav>