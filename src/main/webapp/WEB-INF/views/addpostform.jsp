<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<meta charset="UTF-8">
<title>강의평 - 추가</title>
</head>
<body>
   <div class="w3-container">
      <h1>새 강의평 쓰기</h1>
   </div>

   <form action="addok" method="post">


      <input class="w3-input" type="text" name="title" placeholder="강의 이름" /><br>
      <input class="w3-input" type="text" name="code" placeholder="과목 코드" /><br>
      <input class="w3-input" type="text" name="category" placeholder="학부" /><br>
      <input class="w3-input" type="text" name="name" placeholder="교수님 성함" /><br>
      <input class="w3-input" type="number" id="quantity" name="score" min="1" max="5" placeholder="강의 점수(1~5)"><br>
      <textarea cols="50" rows="5" name="content" placeholder="강의평"></textarea><br><br>
      <a class="w3-bar-item w3-button w3-black" href="list">목록보기</a> 
      <input type="submit" value="등록하기" />

   </form>


</body>
</html>