<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>수강신청 과목 저장</title>
</head>
<body>
	<%	
		String sessionID = (String) session.getAttribute("sessionID");
		String title = "";
		
		if(sessionID == null) {
			response.sendRedirect("login.jsp");
		} else {
			String[] subject = request.getParameterValues("subject");
			
			for (int i=0;i<subject.length;i++) {
				title = subject[i];
				session.setAttribute(title, subject[i]);
				out.println(session.getAttribute(title));
			}
		}
	%>
	
	<a href="list.jsp">리스트로 가기</a>
</body>
</html>