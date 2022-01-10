<% String name = (String)session.getAttribute("user"); %>

<h1>WELCOME <%=name %></h1>

<% 
	pageContext.setAttribute("name", name, PageContext.SESSION_SCOPE);
%>

<a href="next.jsp">Next Page</a>