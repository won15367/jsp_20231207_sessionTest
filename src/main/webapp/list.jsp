<%@ page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>수강신청 목록</title>
</head>
<body>
	수강신청 목록<br>
	<%
		String sid = (String) session.getAttribute("sessionID");
		
		if (sid !=null) {
			out.println(sid+"님 로그인 중");
		} else {
			response.sendRedirect("login.jsp");
		}
	%>
	
	<%
		Enumeration enu =  session.getAttributeNames();
		
		String name;
		
		while(enu.hasMoreElements()) {
			name = enu.nextElement().toString();
			if (!name.equals("sessionID")) {
				out.println(name + "<br>");
			}			
		}
	%>
	<br>
	<a href="logout.jsp">로그아웃</a>
</body>
</html>