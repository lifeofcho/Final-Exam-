<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
	<script>
		function delete_ok(id){
			var a = confirm("강의평을 정말로 삭제하겠습니까?");
			if(a) location.href='../deleteok/' + id;
		}
	</script>
</head>
<body>
<div class="container" style='margin-top:50px;min-height:600px'>
	<img src="../../img/logo.png" alt="logo" id="logo">
	<h1>개별 관리</h1>
	<div id="status"> 
		<a class="btn btn-sm btn-success" id="logout" href="../../login/logout">로그아웃</a>
	</div>
	
	<div class="table-responsive-sm">
			<c:set var="u" value ="${command}" />
			<table id="view" class="table table-hover">
				<tr>
					<td id="title">강의평:</td>
					<td>${u.title}</td>A
				</tr>
				<tr>
					<td id="title">교수님 성함:</td>
					<td>${u.nickname}</td>
				</tr>
				<tr>
					<td id="title">강의평 등록일:</td>
					<td>${u.nickname}</td>
				</tr>
			</table>
			<a class="btn btn-sm btn-primary" href="../list">강의평 보기</a>
			<a class="btn btn-sm btn-success" href="../editform/${u.seq}">강의평 수정</a>
			<a class="btn btn-sm btn-danger" href="javascript:delete_ok('${u.seq}')">강의평 삭제</a>
	</div>
</div>
</body>
</html>