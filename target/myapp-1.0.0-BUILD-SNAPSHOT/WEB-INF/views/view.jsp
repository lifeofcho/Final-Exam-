<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">

   <script>
      function delete_ok(id){
         var a = confirm("강의평을 정말로 삭제하겠습니까?");
         if(a) location.href='../deleteok/' + id;
      }
   </script>
<title>강의평 - 리스트 보기</title>
</head>
<body>
<div class="container" style='margin-top:50px;min-height:600px'>
   <h1>강의평</h1>
         <c:set var="u" value ="${command}" />
         <table id="view" class="w3-table-all w3-hoverable">
            <tr>
               <td id="title">강의 이름:</td>
               <td>${u.title}</td>
            </tr>
            <tr>
               <td id="title">과목 코드:</td>
               <td>${u.code}</td>
            </tr>
            <tr>
               <td id="title">학부:</td>
               <td>${u.category}</td>
            </tr>
            <tr>
               <td id="title">교수님 성함:</td>
               <td>${u.name}</td>
            </tr>
            <tr>
               <td id="title">강의 점수:</td>
               <td>${u.score}</td>   
            </tr>
            <tr>
               <td id="title">강의평:</td>
               <td>${u.content}</td>
            </tr>
         </table>
         <a class="w3-bar-item w3-button w3-black" href="../list">뒤로 가기</a>
   </div>
</body>
</html>