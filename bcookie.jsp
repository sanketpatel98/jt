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
		Cookie c = null;
		Cookie[] cs = null;
		
		Cookie ck = new Cookie("a1","");
		ck.setMaxAge(0);
		response.addCookie(ck);
		
		cs = request.getCookies();
		
		if( cs != null ) {
            out.println("<h2> Found Cookies Name and Value</h2>");
            
            for (int i = 0; i < cs.length; i++) {
               c = cs[i];
               out.print("Name : " + c.getName( ) + ",  ");
               out.print("Value: " + c.getValue( )+" <br/>");
            }
         } else {
            out.println("<h2>No cookies founds</h2>");
         }
	%>
</body>
</html>