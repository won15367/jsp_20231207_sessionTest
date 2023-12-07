<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 확인</title>
</head>
<body>
 	<%
 		request.setCharacterEncoding("utf-8");
 	
 		String mid = request.getParameter("mid");
 		String mpw = request.getParameter("mpw");
 		
 		if (mid.equals("tiger") & mpw.equals("12345")) {
 			session.setAttribute("sessionID", mid);
 			out.print("로그인 성공");
	%>
		<h2> <%= mid %> 님 로그인 성공하셨습니다.<br></h2>
		<a href="sugang.jsp">수강신청 바로가기</a>
 	<%
 		} else {
 			response.sendRedirect("login.jsp"); // 강제로 이동시킨다.
 		}
 		
 	%>
</body>
</html>