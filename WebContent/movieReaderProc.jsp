<%@page import="java.io.FileReader"%>
<%@page import="java.io.BufferedReader"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<% 
	request.setCharacterEncoding("UTF-8");
	String filename = request.getParameter("FILE");
%>
<body>
<h4>file name : <%= filename %></h4>
<%
	BufferedReader reader = null;
	try {
		String filePath = application.getRealPath("/WEB-INF/movie/"+filename);
		reader = new BufferedReader(new FileReader(filePath));
		
		while(true) {
			String str = reader.readLine();
			if(str==null)break;
			out.println(str + "</br>");
		}
	}catch(Exception e) {
		e.printStackTrace();
	} finally {
		reader.close();
	}
%>
</body>
</html>