<%@page import="java.io.File"%>
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
	String dirPath = application.getRealPath("/WEB-INF/movie");

	File dir = new File(dirPath);
	String fileNames[] = dir.list(); // movie안의 파일, 폴더이름들을 String 배열로 반환
%>

<h4>영화목록</h4>
<ul>
<%
	for(String filename: fileNames){ %>
		<li><a href="movieReader.jsp?FILE=<%=filename%>"><%= filename %></a></li>
<%	}
%>
</ul>
</body>
</html>