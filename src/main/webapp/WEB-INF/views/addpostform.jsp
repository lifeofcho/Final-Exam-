<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상담게시판 - 상담신청</title>
</head>
<body>

<h1>새 글쓰기</h1>
<form action= "addok" method="post">
<table id = "edit">
<tr><td>제목:</td><td><input type="text" name="title"/></td></tr>
<tr><td>카테고리:</td><td><input type="text" name="category"/></td></tr>
<tr><td>이름:</td><td><input type="text" name="name"/></td></tr>
<tr><td>닉네임:</td><td><input type="text" name="nickname"/></td></tr>
<tr><td>비밀번호:</td><td><input type="text" name="password"/></td></tr>
<tr><td>내용:</td><td><textarea cols="50" rows="5" name="content"></textarea></td></tr>
<tr><td><a href="list">목록보기</a></td><td align="right"><input type="submit" value="등록하기"/></td></tr>
</table>
</form>

</body>
</html>