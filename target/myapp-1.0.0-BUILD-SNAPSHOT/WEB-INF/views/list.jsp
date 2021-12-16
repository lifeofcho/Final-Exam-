 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import= "com.mycom.myapp.board.BoardDAO,com.mycom.myapp.board.BoardVO,java.util.*"%>
<%@ taglib uri= "http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>게시판</title>
<style>
#list {
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
}
#list td, #list th {
  border: 1px solid #ddd;
  padding: 8px;
  text-align:center;
}
#list tr:nth-child(even){background-color: #f2f2f2;}
#list tr:hover {background-color: #ddd;}
#list th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: center;
  background-color: black;
  color: white;
}


</style>
<script>
   function delete_ok(id)
   {
      var a = confirm("정말로 삭제하겠습니까?");
      if(a) location.href='deleteok/' + id;
   }
</script>
</head>
<body>
<h1>강의평 게시판</h1>

<table id="list" width="90%">
<tr>
   <th>순번</th>
   <th>강의 이름 </th>
   <th>교수님 성함</th>
   <th>강의평 등록일</th>
   <th>강의평 보기</th>
   <th>강의평 수정</th>
   <th>강의평 삭제</th>
</tr>
<c:forEach items="${list}" var="u">
   <tr>
      <td>${u.seq}</td>
      <td>${u.title}</td>
      <td>${u.name}</td>
      <td>${u.regdate}</td>
      <td><a class="btn btn-sm btn-primary" href="view/${u.seq}">보기</a></td>
      <td><a href="editform/${u.seq}">수정</a></td>
      <td><a href="javascript:delete_ok('${u.seq}')">삭제</a></td>
   </tr>
</c:forEach>
</table>
<br/><a href="add">강의평 쓰기</a>
</body>
<footer style='background-color:#ddd;margin-top:10px;padding:10px;text-align:center'>
   <p>강의평 게시판</p>
    <p>조하성 / 최정겸</p>
</footer> 
</html>