<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<%
%>
<body>
<h2>Writing</h2>
<%
	String str = request.getParameter("result");
	if(str.equals("ok")) {
		out.println("saved.");
	} else {
		out.println("can't saved.");
	}
%>
</body>
</html>

<meta http-equiv="refresh" content="0.1; url=main.jsp">
<!-- 3초 이후에 main -->