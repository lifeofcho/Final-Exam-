<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@page
   import="com.mycom.myapp.board.BoardDAO,com.mycom.myapp.board.BoardVO"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<meta charset="UTF-8">
<title>강의평 - 변경</title>
</head>
<body>
   <div class="w3-container">
      <h1>수정하기</h1>
   </div>
   <form action="../editok" method="post">
      <input type="hidden" name="seq" value="${u.seq}" />
      <table id="edit">
         <tr>

            <td><input class="w3-input" type="text" name="title" value="${u.title}" placeholder="강의 이름" /></td>
         </tr>
         <tr>

            <td><input class="w3-input" type="text" name="code" value="${u.code}" placeholder="강의 이름" /></td>
         </tr>
         <tr>

            <td><input class="w3-input" type="text" name="category" value="${u.category}"placeholder="학부" /></td>
         </tr>
         <tr>

            <td><input class="w3-input" type="text" name="name" value="${u.name}" placeholder="교수님 성함" /></td>
         </tr>
         <tr>

            <td><input class="w3-input" type="number" id="quantity" name="score" min="1"
               max="5" value="${u.score}" placeholder="강의 점수(1~5)" /></td>
         </tr>
         <tr>

            <td><textarea class="w3-input" cols="50" rows="5" name="content" placeholder="강의평">${u.content}</textarea></td>
         </tr>
         <tr>
            <td colspan="2"><input type="submit" value="수정하기" /> 
            <input
               type="button" value="취소하기" onclick="history.back()" /></td>
         </tr>
      </table>
   </form>

</body>
</html>