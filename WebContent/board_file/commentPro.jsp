<%@page import="board.file.FileCommentBean"%>
<%@page import="board.file.FileCommentDAO"%>
<%@page import="java.sql.Timestamp"%>
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
int board = Integer.parseInt(request.getParameter("num"));
String id = (String)session.getAttribute("id");
String content = request.getParameter("content");
Timestamp date = new Timestamp(System.currentTimeMillis());

FileCommentDAO cdao = new FileCommentDAO();
FileCommentBean cb = new FileCommentBean();


int num = cdao.getCommentNum()+1;

cb.setNum(num);	
cb.setId(id);
cb.setContent(content);
cb.setDate(date);
cb.setBoard(board);

cdao.insertComment(cb);




%>
</body>
</html>