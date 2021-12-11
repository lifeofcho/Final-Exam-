<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@page import="com.mycom.myapp.board.BoardDAO,com.mycom.myapp.board.BoardVO"%>
 <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Form</title>
</head>
<body>
<h1>수정하기</h1>
<form action="../editok" method="post">
<input type="hidden" name="seq" value="${u.seq}"/>
<table id = "edit">
<tr><td>강의 이름:</td><td><input type="text" name="title" value="${u.title}"/></td></tr>
<tr><td>학부:</td><td><input type="text" name="writer" value="${u.category}"/></td></tr>
<tr><td>교수님 성함:</td><td><input type="text" name="writer" value="${u.name}"/></td></tr>
<tr><td>강의 점수:</td><td><input type="number" id="quantity" name="score" min="1" max="5" value="${u.score}"/></td></tr>
<tr><td>교수님 성함:</td><td><input type="text" name="code" value="${u.code}"/></td></tr>
<tr><td>내용:</td><td><textarea cols="50" rows="5" name="content">${u.content}</textarea></td></tr>
	<tr><td colspan="2"><input type="submit" value="수정하기"/>
<input type="button" value="취소하기" onclick="history.back()"/></td></tr>
</table>
</form>

</body>
</html>