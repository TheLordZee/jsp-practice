<%@ page import="com.hcl.java.Functions" %>
<!DOCTYPE html>
<html>
	<head>
		<title>Hello JSP</title>
	</head>
	
	<% int num = 13; %>
	
	<%!
		int square(int n){
			return n * n;
		}
	%>
	
	<body>
		
		<jsp:include page="jsps/header.jsp"></jsp:include>
		
		<p>The variable num has been set to <b><%= num %></b></p>
		<ul>
			<%
				for(int i = 0; i <= 10; i++){
					out.print("<li>"+ i +"</li>");
				}
			%>
		</ul>
		
		<h2>Function Call: <%= square(num) %></h2>
		<p><%= Functions.firstChar("Steve") %></p>
		
		<h2>Requests:</h2>
		<ul>
			<li>
				<b>Request user agent:</b>
				<%=request.getHeader("User-Agent") %>
			</li>
			<li>
				<b>Request Locale:</b>
				<%=request.getLocale() %>
			</li>
		</ul>
	</body>
</html>