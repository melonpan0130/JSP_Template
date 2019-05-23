<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 글쓰기 - 입력화면</title>
</head>
<body>
<h2>글쓰기</h2>
<form action="boardProc1.jsp" method="post">
name : <input type="text" name="name"><br>
title : <input type="text" name="title"><br>
<textarea rows="10" cols="40" name="content"></textarea> <br>
<input type="submit" value="save">
</form>
</body>
</html>