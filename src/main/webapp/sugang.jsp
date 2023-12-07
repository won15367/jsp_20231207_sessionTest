<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>수강신청</title>
</head>
<body>
	<%
		String sessionID = (String) session.getAttribute("sessionID");
		
		if(sessionID == null) {
			response.sendRedirect("login.jsp");
		} else {
			String sid = (String) session.getAttribute("sessionID");
			out.print(sid+"님이 수강신청 하실 수 있는 과목");
		}
	%>
	
	<h2>수강신청 하기</h2>
	<form action="add.jsp">
		<input type="checkbox" name="subject" value="국어"> 국어 <br><br>
		<input type="checkbox" name="subject" value="영어"> 영어 <br><br>
		<input type="checkbox" name="subject" value="수학"> 수학 <br><br>
		<input type="checkbox" name="subject" value="미술"> 미술 <br><br>
		<input type="checkbox" name="subject" value="과학"> 과학 <br><br>
		<input type="submit" value="수강신청">	
	</form>
	
</body>
</html>