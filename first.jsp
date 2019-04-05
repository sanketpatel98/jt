<%@  page import="java.sql.*" language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	begin
	<%
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/stud","root","root");
		Statement st = con.createStatement();
		
		//int a = st.executeUpdate("insert into dfaq (id,uname,lname) values(8,'lol','dfaq')");
		ResultSet rs = st.executeQuery("select * from dfaq");
		%>
		<table border=1>
		<% 		while(rs.next())
		{
			//System.out.println("id:"+rs.getInt(1)+" uname:"+rs.getString(2)+"lname:"+rs.getString(3));
			%> <tr> 
			<td><%=rs.getInt(1)%></td>
			<td><%=rs.getString(2)%></td>
			<td><%=rs.getString(3)%></td> </tr><% 
		}
	%>
	</table>
	<button><a href="one.jsp" style="text-decoration: none">insert data</a></button>
</body>
</html>