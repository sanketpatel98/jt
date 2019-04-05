<%@ page import="java.sql.*" language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
		String s1 = request.getParameter("id");
		String s2 = request.getParameter("uname");
		String s3 = request.getParameter("lname");
	
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/stud","root","root");
		Statement st = con.createStatement();
		
		int a = st.executeUpdate("insert into dfaq (id,uname,lname) values("+s1+",'"+s2+"','"+s3+"')");
		response.sendRedirect("first.jsp");
	%>
	
</body>
</html>