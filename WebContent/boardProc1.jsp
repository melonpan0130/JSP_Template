<%@page import="java.io.PrintWriter"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("utf-8");
	String name = request.getParameter("name");
	String title = request.getParameter("title");
	String content = request.getParameter("content");
	
	Date date = new Date();
	long time = date.getTime();
	String filename = time + ".txt";

	PrintWriter writer = null;
	String result = "";
	
	try {
		String filePath = application.getRealPath("/WEB-INF/bbs/" + filename);
		writer = new PrintWriter(filePath);
		writer.println("title : "+title+"<br>");
		writer.println("author : "+name+"<br>");
		writer.println(content);
		writer.flush();
		result = "ok";
		
		// out.println("saved.");
		
	} catch(Exception e) {
		e.printStackTrace();
		result = "fail";
	} finally {
		writer.close();
		response.sendRedirect("boardResult.jsp?result="+result);
	}
%>
</body>
</html>