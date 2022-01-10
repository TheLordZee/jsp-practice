<html>  
<body>
	<h1>Redirecting</h1>  
<%   
	String name=request.getParameter("uname");    
	session.setAttribute("user",name);  
	response.sendRedirect("welcome.jsp");   
%>  
</body>  
</html>