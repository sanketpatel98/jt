<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
		String s1 = (String)session.getAttribute("a1");
		out.println("session value is = "+s1);
		session.removeAttribute("a1");
		String s2 = (String)session.getAttribute("a1");
		out.println("session value is = "+s2);
	%>
</body>
</html>
