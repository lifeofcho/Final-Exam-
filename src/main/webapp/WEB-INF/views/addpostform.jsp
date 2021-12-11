<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상담게시판 - 상담신청</title>
</head>
<body>

<h1>새 강의평 쓰기</h1>
<form action= "addok" method="post">
<table id = "edit">
<tr><td>강의 이름:</td><td><input type="text" name="title"/></td></tr>
<tr><td>학부:</td><td><input type="text" name="category"/></td></tr>
<tr><td>교수님 성함:</td><td><input type="text" name="name"/></td></tr>
<tr><td>강의점수:</td><td><input type="number" id="quantity" name="score" min="1" max="5"></td></tr>
<tr><td>강의평:</td><td><textarea cols="50" rows="5" name="content"></textarea></td></tr>
<tr><td><a href="list">목록보기</a></td><td align="right"><input type="submit" value="등록하기"/></td></tr>
</table>
</form>

</body>
</html>