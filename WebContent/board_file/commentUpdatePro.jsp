<%@page import="board.file.FileCommentDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
<%
request.setCharacterEncoding("utf-8");

String content = (String)request.getParameter("content");

int num = Integer.parseInt(request.getParameter("num"));


FileCommentDAO cdao = new FileCommentDAO();

cdao.updateComment(content, num);

%>

</body>
</html>